package com.javaweb.model.dto;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.*;
import java.util.List;

@Getter
@Setter
public class BuildingDTO extends AbstractDTO {
    @NotBlank(message = "Name building not can blank !!!")
    private String name;

    @Min(value = 0, message = "Floor are must be >= 0")
    private Long floorArea;

    private String district;
    private String ward;
    private String street;

    @Min(value = 0, message = "Number of basement must be >= 0")
    private Long numberOfBasement;

    private String direction;
    private String structure;
    private String level;

    @Min(value = 0, message = "Rent price must be >= 0")
    private Long rentPrice;

    private String rentArea;
    private String rentPriceDescription;
    private String serviceFee;
    private String carFee;
    private String motorbikeFee;
    private String overtimeFee;
    private String electricityFee;
    private String deposit;
    private String payment;
    private String rentTime;
    private String decorationTime;
    private String managerName;

    @Pattern(regexp = "^0\\d{9}$", message = "Phone number must start with 0 and contain exactly 10 digits")
    private String managerPhoneNumber;


    private String brokerageFee;
    private String note;

    @Size(min = 1, message = "Type building is required!!!")
    private List<String> type;
}