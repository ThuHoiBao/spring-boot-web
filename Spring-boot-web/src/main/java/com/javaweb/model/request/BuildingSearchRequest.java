package com.javaweb.model.request;

import com.javaweb.model.dto.AbstractDTO;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
@Getter
@Setter
public class BuildingSearchRequest extends AbstractDTO {
    private String name ;
    private Long floorArea;
    private String district;
    private String ward;
    private String street;
    private String direction;
    private String level;
    private Long numberOfBasement;
    private Long areaRentStart;
    private Long areaRentFinish;
    private Long priceRentStart;
    private Long priceRentFinish;
    private String managerName;
    private String managerPhoneNumber;
    private Long staffId;
    private List<String> typeCode;
}
