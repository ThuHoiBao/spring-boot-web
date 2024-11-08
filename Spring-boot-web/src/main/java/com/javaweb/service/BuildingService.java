package com.javaweb.service;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;

import java.util.List;
import java.util.Map;

public interface BuildingService {
    List<BuildingSearchResponse> findAll(BuildingSearchRequest prams);
  //  void creatBuilding(BuildingDTO building);
    void ListBuilding();
    List<BuildingSearchResponse> ListAll();
    public void createOrUpdateBuilding(BuildingDTO buildingDTO);
    public BuildingDTO editBuilding(Long id);
    public void deleteBuilding(List<Long> ids);
    public void loadStaffs(Long id);
    public Object updateStaffForBuilding(AssignmentBuildingDTO assignmentBuildingDTO);
}
