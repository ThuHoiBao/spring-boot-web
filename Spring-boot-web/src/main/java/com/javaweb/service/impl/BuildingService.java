package com.javaweb.service.impl;

import com.javaweb.converter.BuildingConverter;
import com.javaweb.converter.BuildingSearchBuilderConverter;
import com.javaweb.entity.AssignmentBuildingEntity;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.repository.AssignmentBuildingRepository;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.RentArearepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
@Transactional

public class BuildingService implements com.javaweb.service.BuildingService {
    @Autowired
    BuildingRepository buildingRepository;
    @Autowired
    BuildingConverter buildingConverter;
    @Autowired
    BuildingSearchBuilderConverter builderConverter;
    @PersistenceContext
    private EntityManager entityManager;
    @Autowired
    RentArearepository rentAreaRepository;
    @Autowired
    AssignmentBuildingRepository assignmentBuildingRepository;
    @Autowired
    private IUserService userService;
    @Autowired
    private UserRepository userRepository;

    @Override
    public List<BuildingSearchResponse> findAll(BuildingSearchRequest params) {
        //BuildingSearchBuilder buildingSearchBuilder= builderConverter.toBuildingSearchBuilder(prams);
        List<BuildingEntity> buildings = buildingRepository.findAll(params);
        List<BuildingSearchResponse> buildingDTOs = new ArrayList<BuildingSearchResponse>();
        for (int i = 0; i < buildings.size(); i++) {
            BuildingEntity building = buildings.get(i);
            BuildingSearchResponse responseBuildingDTO;
            responseBuildingDTO=buildingConverter.convertRepositoryBuilding(building);
            ;			buildingDTOs.add(responseBuildingDTO);
        }
        return buildingDTOs;
    }

    @Override
    public void ListBuilding() {

    }

    @Override
    public List<BuildingSearchResponse> ListAll() {
        List<BuildingEntity> buildings = buildingRepository.findAll();
        List<BuildingSearchResponse> buildingDTOs = new ArrayList<BuildingSearchResponse>();
        for (int i = 0; i < buildings.size(); i++) {
            BuildingEntity building = buildings.get(i);
            BuildingSearchResponse responseBuildingDTO;
            responseBuildingDTO=buildingConverter.convertRepositoryBuilding(building);
            ;			buildingDTOs.add(responseBuildingDTO);
        }
        return buildingDTOs;
    }
    @Override
    public void createOrUpdateBuilding(BuildingDTO buildingDTO) {
        BuildingEntity buildingEntity = buildingConverter.convertCreateOrUpdate(buildingDTO);
        BuildingEntity  building =buildingConverter.convertCreateOrUpdate(buildingDTO);
        if (building.getId() != null) {
            building = buildingRepository.getOne(building.getId());
            rentAreaRepository.deleteAllByBuilding(building);
        }
        buildingRepository.save(buildingEntity);
        for (RentAreaEntity rentAreaEntity : buildingEntity.getRentAreaEntities()) {
            rentAreaRepository.save(rentAreaEntity);
        }
    }

    @Override
    public BuildingDTO editBuilding(Long id) {
        BuildingEntity buildingEntity = buildingRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Building not found"));
        BuildingDTO buildingDTO = buildingConverter.convertToUpdate(buildingEntity);
        return buildingDTO;
    }

    @Override
    public void deleteBuilding(List<Long> ids) {
        List<BuildingEntity> buildings = buildingRepository.findAllById(ids);
        if (!buildings.isEmpty()) {
            rentAreaRepository.deleteAllByBuildingIn(buildings);
            assignmentBuildingRepository.deleteAllByBuildingEntityIn(buildings);
        }
        buildingRepository.deleteAllByIdIn(ids);
    }

    @Override
    public void loadStaffs(Long id) {

    }
    public Object updateStaffForBuilding(AssignmentBuildingDTO assignmentBuildingDTO) {
        Long buildingId = assignmentBuildingDTO.getBuildingId();


        BuildingEntity buildingEntity = buildingRepository.findById(buildingId)
                .orElseThrow(() -> new RuntimeException("Building not found"));


        List<AssignmentBuildingEntity> existingAssignments = assignmentBuildingRepository.findByBuildingEntity(buildingEntity);
        if (!existingAssignments.isEmpty()) {
            assignmentBuildingRepository.deleteAll(existingAssignments);
        }


        List<Long> staffIds = assignmentBuildingDTO.getStaffs();
        if (staffIds != null && !staffIds.isEmpty()) {
            List<AssignmentBuildingEntity> newAssignments = new ArrayList<>();

            for (Long staffId : staffIds) {
                AssignmentBuildingEntity assignment = new AssignmentBuildingEntity();
                assignment.setBuildingEntity(buildingEntity);

                // Kiểm tra sự tồn tại của user
                UserEntity userEntity = userRepository.findById(staffId)
                        .orElseThrow(() -> new RuntimeException("User not found with ID: " + staffId));

                assignment.setUserEntity(userEntity);
                newAssignments.add(assignment);
            }

            assignmentBuildingRepository.saveAll(newAssignments);
        }

        return "Updated successfully";
    }



}