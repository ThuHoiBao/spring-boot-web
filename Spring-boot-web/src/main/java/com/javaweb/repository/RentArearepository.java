package com.javaweb.repository;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RentArearepository extends JpaRepository<RentAreaEntity, Long> {
    void deleteAllByBuilding(BuildingEntity buildingEntity);
    void deleteAllByBuildingIn(List<BuildingEntity> buildings);
}

