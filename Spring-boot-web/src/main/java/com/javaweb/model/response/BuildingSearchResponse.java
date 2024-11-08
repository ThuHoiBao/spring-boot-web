package com.javaweb.model.response;

import com.javaweb.model.dto.AbstractDTO;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BuildingSearchResponse extends AbstractDTO {
    private String name;
    private String address;
    private Long numberOfBasement;
    private String managerName;
    private String managerPhoneNumber;
    private Long floorArea;
    private Long emptyArea;
    private String rentAreaValue;
    private Long rentPrice;
    private String serviceFee;
    private Double brokerageFee;
}
