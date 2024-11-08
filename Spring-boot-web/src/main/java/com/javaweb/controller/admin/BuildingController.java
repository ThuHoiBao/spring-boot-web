package com.javaweb.controller.admin;



import com.javaweb.entity.BuildingEntity;
import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.service.BuildingService;
import com.javaweb.service.IUserService;
import com.javaweb.utils.BuildingType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@RestController (value="buildingControllerOfAdmin")
public class BuildingController {
    @Autowired
    private IUserService userService;

    @Autowired
    private BuildingService buildingService;
    @GetMapping("/admin/building-list")
    private ModelAndView buildingList(@ModelAttribute(name = "modelSearch") BuildingSearchRequest params){
        ModelAndView modelAndView = new ModelAndView("admin/building/list");
        modelAndView.addObject("district", districtCode.type()); //hien thi len key=quan 1; value =code
        modelAndView.addObject("renttype", BuildingType.type()); //hien thi len key=quan 1; value =code
        modelAndView.addObject("staffs", userService.listStaff());
        List<BuildingSearchResponse> response=new ArrayList<BuildingSearchResponse>();
      //  modelAndView.addObject("listBuilding",buildingService.ListAll() );
        modelAndView.addObject("listBuilding",buildingService.findAll(params) );
        //xuong DB lay du lieu
        return modelAndView;
    }
    @GetMapping("/admin/building-edit")
    private ModelAndView buildingEdit(@ModelAttribute(name = "buildingEdit")BuildingDTO buildingDTO){
        ModelAndView modelAndView = new ModelAndView("admin/building/edit");
        modelAndView.addObject("district", districtCode.type()); //hien thi len key=quan 1; value =code
        modelAndView.addObject("renttype", BuildingType.type()); //hien thi len key=quan 1; value =code
        return modelAndView;
    }
    @GetMapping("/admin/building-edit-{id}")
    public ModelAndView buildingEdit(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("admin/building/edit");
        modelAndView.addObject("district", districtCode.type()); //hien thi len key=quan 1; value =code
        modelAndView.addObject("renttype", BuildingType.type()); //hien thi len key=quan 1; value =code
        modelAndView.addObject("buildingEdit", buildingService.editBuilding(id));
        return modelAndView;
    }
}
