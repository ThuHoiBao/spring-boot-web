package com.javaweb.api.admin;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponse;
import com.javaweb.service.BuildingService;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("api/buildings")
public class BuildingAPI {
    @Autowired
    private BuildingService buildingService;
    @Autowired
    private IUserService userService;

    @PostMapping
    private ResponseEntity<?> createOrUpdateBuilding(@Valid @RequestBody BuildingDTO buildingDTO, BindingResult bindingResult) {
        try {
            if (bindingResult.hasErrors()) {
                List<String> errorMessages = bindingResult.getFieldErrors().stream()
                        .map(fieldError ->fieldError.getDefaultMessage())
                        .collect(Collectors.toList());

                // Tạo đối tượng chứa thông tin lỗi để phản hồi
                ResponseDTO responseDTO = new ResponseDTO();
                responseDTO.setMessage("Failed");
                responseDTO.setDetail(errorMessages);

                // Trả về phản hồi 400 với chi tiết lỗi
                return ResponseEntity.badRequest().body(responseDTO);
            }
            buildingService.createOrUpdateBuilding(buildingDTO);
            return ResponseEntity.ok().body("Building created or updated successfully.");

        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }
    @DeleteMapping("/{ids}")
    private Object deleteBuilding(@PathVariable List<Long> ids) {

        buildingService.deleteBuilding(ids);

        return "success";
    }
    @PutMapping("/staffs")
    private Object updateAssignmentBuilding(@RequestBody AssignmentBuildingDTO assignmentBuildingDTO) {
        Object updateStaffForBuilding=buildingService.updateStaffForBuilding(assignmentBuildingDTO);
        return new String("Okeke");
    }

    @GetMapping("/{id}")
    public Object loadStaffs(@PathVariable Long id) {
        Object staffResponses = userService.loadStaffs(id);
        return staffResponses;
    }
}
