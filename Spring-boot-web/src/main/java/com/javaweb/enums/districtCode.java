package com.javaweb.enums;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public enum districtCode {
    QUAN_1("Quận 1"),
    QUAN_2("Quận 2"),
    QUAN_3("Quận 3"),
    QUAN_4("Quận 4"),
    QUAN_5("Quận 5"),
    QUAN_6("Quận 6"),
    QUAN_7("Quận 7"),
    QUAN_BINH_THANH("Quận Bình Thạnh"),
    QUAN_THU_DUC("Quận Thủ Đức");

    private final String districtName;
    districtCode(String districtName) {
        this.districtName = districtName;
    }

    public String getDistrictName() {
        return districtName;
    }

    public static Map<String,String> type(){
        Map<String,String> listType = new LinkedHashMap<>();
        for(districtCode item : districtCode.values()){
            listType.put(item.toString(),item.getDistrictName());

        }
        return listType;

    }
}
