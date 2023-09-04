package com.icia.student.controller;

import com.icia.student.dto.StudentDTO;
import com.icia.student.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.awt.*;
import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    @GetMapping("/save")
    public String save(){
        return "save";
    }

    @PostMapping("/save")
    public String saveStudent(@ModelAttribute StudentDTO studentDTO){
        boolean result = studentService.save(studentDTO);
        if (result) {
            System.out.println("학생등록 성공");
            return "index";
        }else {
            System.out.println("학생등록 실패");
            return "save";

        }
    }

    @GetMapping("/list")
    public String list(Model model){
        List<StudentDTO> studentList = studentService.list();
        model.addAttribute("studentList", studentList);
        return "list";
    }

    @GetMapping("/detail")
    public String detail(@RequestParam("id") Long id, Model model){
        StudentDTO studentDTO = studentService.findById(id);
        model.addAttribute("student",studentDTO);
        return "detail";
    }
}
