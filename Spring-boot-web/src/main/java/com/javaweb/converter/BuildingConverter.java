package com.javaweb.converter;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.BuildingSearchResponse;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class BuildingConverter {
    @Autowired
    ModelMapper modelMapper;

    public BuildingSearchResponse convertRepositoryBuilding(BuildingEntity building) {
        BuildingSearchResponse buildingDTO = new BuildingSearchResponse();
        buildingDTO = modelMapper.map(building, BuildingSearchResponse.class);
        String buildingDistrict = building.getDistrict();

        // Kiểm tra và duyệt qua các giá trị của enum
        String districtName = "Unknown District"; // Giá trị mặc định nếu không tìm thấy
        for (districtCode districtEnum : districtCode.values()) {
            if (districtEnum.name().equalsIgnoreCase(buildingDistrict)) {
                districtName = districtEnum.getDistrictName();
                break;
            }
        }
        buildingDTO.setAddress(building.getStreet() + "," + building.getWard() + "," + districtName);

        // Xử lý các trường khác
        buildingDTO.setRentAreaValue(building.getRentAreaEntities().stream()
                .map(i -> i.getValue().toString())
                .collect(Collectors.joining(",")));

        return buildingDTO;
    }
    public BuildingEntity convertCreateOrUpdate(BuildingDTO buildingDTO) {
        // Chuyển đổi các trường cơ bản từ BuildingDTO sang BuildingEntity
        BuildingEntity buildingEntity = modelMapper.map(buildingDTO, BuildingEntity.class);

        // Xử lý trường `type` từ List<String> thành chuỗi ngăn cách bởi dấu phẩy
        if (buildingDTO.getType() != null) {
            String typeString = String.join(",", buildingDTO.getType());
            buildingEntity.setType(typeString);
        }
        if (!StringUtils.isEmpty(buildingDTO.getRentArea())) {
            List<RentAreaEntity> rentAreaEntities = Arrays.stream(buildingDTO.getRentArea().split(","))
                    .map(String::trim)
                    .map(Long::valueOf)
                    .map(value -> {
                        RentAreaEntity rentAreaEntity = new RentAreaEntity();
                        rentAreaEntity.setValue(value);
                        rentAreaEntity.setBuilding(buildingEntity);
                        return rentAreaEntity;
                    })
                    .collect(Collectors.toList());

            buildingEntity.setRentAreaEntities(rentAreaEntities);
        }
        return buildingEntity;
    }
    public BuildingDTO convertToUpdate(BuildingEntity buildingEntity) {
        // Sử dụng ModelMapper để chuyển đổi các trường từ BuildingEntity sang BuildingDTO
        BuildingDTO buildingDTO = modelMapper.map(buildingEntity, BuildingDTO.class);
        String buildingDistrict = buildingEntity.getDistrict();
        String districtName = "Unknown District";
        for (districtCode districtEnum : districtCode.values()) {
            if (districtEnum.name().equalsIgnoreCase(buildingDistrict)) {
                districtName = districtEnum.getDistrictName();
                break;
            }
        }
        if (buildingEntity.getType() != null) {
            List<String> typeCodes = Arrays.asList(buildingEntity.getType().split(","));
            buildingDTO.setType(typeCodes);
        }
        buildingDTO.setRentArea(buildingEntity.getRentAreaEntities().stream()
                .map(i -> i.getValue().toString())
                .collect(Collectors.joining(",")));
        return buildingDTO;
    }
}

