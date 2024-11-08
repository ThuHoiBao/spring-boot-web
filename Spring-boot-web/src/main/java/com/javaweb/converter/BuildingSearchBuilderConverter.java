package com.javaweb.converter;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.utils.MapUtils;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
@Component
public class BuildingSearchBuilderConverter {
    public BuildingSearchBuilder toBuildingSearchBuilder(Map<String, Object> params, List<String> code) {
        BuildingSearchBuilder buildingSearchBuilder=new BuildingSearchBuilder.Builder()
                .setName(MapUtils.getObjects(params, "name", String.class))
                .setFloorArea(MapUtils.getObjects(params, "floorArea", Long.class))
                .setDistrict(MapUtils.getObjects(params, "districtId", String.class))
                .setWard(MapUtils.getObjects(params, "ward", String.class))
                .setStreet(MapUtils.getObjects(params, "street", String.class))
                .setDirection(MapUtils.getObjects(params, "direction", String.class))
                .setLevel(MapUtils.getObjects(params, "level", String.class))
                .setNumberOfBasement(MapUtils.getObjects(params, "numberOfBasement", Long.class))
                .setAreaRentStart(MapUtils.getObjects(params, "areaRentStart", Long.class))
                .setAreaRentFinish(MapUtils.getObjects(params, "areaRentFinish", Long.class))
                .setPriceRentStart(MapUtils.getObjects(params, "priceRentStart", Long.class))
                .setPriceRentFinish(MapUtils.getObjects(params, "priceRentFinish", Long.class))
                .setManagerName(MapUtils.getObjects(params, "managerName", String.class))
                .setManagerPhoneNumber(MapUtils.getObjects(params, "managerPhoneNumber", String.class))
                .setStaffId(MapUtils.getObjects(params, "staffId", Long.class))
                .setTypeCode(code)
                .build();
        return buildingSearchBuilder;
    }
}
