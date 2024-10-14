package com.javaweb.controller.admin;



import com.javaweb.enums.districtCode;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.service.IUserService;
import com.javaweb.utils.BuildingType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController (value="buildingControllerOfAdmin")
public class BuildingController {
    @Autowired
    private IUserService userService;
    @GetMapping("/admin/building-list")
    private ModelAndView buildingList(@ModelAttribute(name = "modelSearch") BuildingSearchRequest prams){
        ModelAndView modelAndView = new ModelAndView("admin/building/list");
        modelAndView.addObject("district", districtCode.type()); //hien thi len key=quan 1; value =code
        modelAndView.addObject("renttype", BuildingType.type()); //hien thi len key=quan 1; value =code
        modelAndView.addObject("staffs", userService.listStaff());

        //xuong DB lay du lieu
        return modelAndView;
    }
    @GetMapping("/admin/building-edit")
    private ModelAndView buildingEdit(){
        ModelAndView modelAndView = new ModelAndView("admin/building/edit");
        return modelAndView;
    }
}
