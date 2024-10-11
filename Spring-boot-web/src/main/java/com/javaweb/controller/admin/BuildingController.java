package com.javaweb.controller.admin;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController (value="buildingControllerOfAdmin")
public class BuildingController {
    @GetMapping("/admin/building-list")
    private ModelAndView buildingList(){
        ModelAndView modelAndView = new ModelAndView("admin/building/list");
        return modelAndView;
    }
}
