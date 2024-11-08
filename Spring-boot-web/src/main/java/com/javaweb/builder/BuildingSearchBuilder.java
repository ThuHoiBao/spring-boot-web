package com.javaweb.builder;

import java.util.List;

public class BuildingSearchBuilder {
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

    private BuildingSearchBuilder(Builder builder) {
        this.name= builder.name;
        this.floorArea=builder.floorArea;
        this.district=builder.district;
        this.ward=builder.ward;
        this.street=builder.street;
        this.direction=builder.direction;
        this.level=builder.level;
        this.numberOfBasement=builder.numberOfBasement;
        this.areaRentStart=builder.areaRentStart;
        this.areaRentFinish=builder.areaRentFinish;
        this.priceRentStart=builder.priceRentStart;
        this.priceRentFinish=builder.priceRentFinish;
        this.managerName=builder.managerName;
        this.managerPhoneNumber=builder.managerPhoneNumber;
        this.staffId=builder.staffId;
        this.typeCode=builder.typeCode;
    }

    public String getName() {
        return name;
    }

    public Long getFloorArea() {
        return floorArea;
    }

    public String getDistrict() {
        return district;
    }

    public String getWard() {
        return ward;
    }

    public String getStreet() {
        return street;
    }
    public String getDirection() {
        return direction;
    }

    public Long getNumberOfBasement() {
        return numberOfBasement;
    }

    public Long getAreaRentStart() {
        return areaRentStart;
    }

    public Long getAreaRentFinish() {
        return areaRentFinish;
    }

    public Long getPriceRentStart() {
        return priceRentStart;
    }

    public Long getPriceRentFinish() {
        return priceRentFinish;
    }

    public String getManagerName() {
        return managerName;
    }
    public String getLevel() {
        return level;
    }
    public String getManagerPhoneNumber() {
        return managerPhoneNumber;
    }

    public Long getStaffId() {
        return staffId;
    }

    public List<String> getTypeCode() {
        return typeCode;
    }

    public static class Builder {
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
        public Builder setName(String name) {
            this.name = name;
            return this;
        }
        public Builder setFloorArea(Long floorArea) {
            this.floorArea = floorArea;
            return this;
        }
        public Builder  setDistrict(String district) {
            this.district = district;
            return this;
        }
        public Builder setWard(String ward) {
            this.ward = ward;
            return this;
        }
        public Builder setStreet(String street) {
            this.street = street;
            return this;
        }
        public Builder setDirection(String direction) {
            this.direction = direction;
            return this;
        }
        public Builder setLevel(String level) {
            this.level = level;
            return this;
        }
        public Builder setNumberOfBasement(Long numberOfBasement) {
            this.numberOfBasement = numberOfBasement;
            return this;
        }
        public Builder setAreaRentStart(Long areaRentStart) {
            this.areaRentStart = areaRentStart;
            return this;
        }
        public Builder setAreaRentFinish(Long areaRentFinish) {
            this.areaRentFinish = areaRentFinish;
            return this;
        }
        public Builder setPriceRentStart(Long priceRentStart) {
            this.priceRentStart = priceRentStart;
            return this;
        }
        public Builder setPriceRentFinish(Long priceRentFinish) {
            this.priceRentFinish = priceRentFinish;
            return this;
        }
        public Builder setManagerName(String managerName) {
            this.managerName = managerName;
            return this;
        }
        public Builder setManagerPhoneNumber(String managerPhoneNumber) {
            this.managerPhoneNumber = managerPhoneNumber;
            return this;
        }
        public Builder setStaffId(Long staffId) {
            this.staffId = staffId;
            return this;
        }
        public Builder setTypeCode(List<String> typeCode) {
            this.typeCode = typeCode;
            return this;
        }
        public BuildingSearchBuilder build() {
            return new BuildingSearchBuilder(this);
        }

    }
}

