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
            return "redirect:/list";
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

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id){
        boolean result = studentService.delete(id);
        if (result){
            System.out.println("삭제에 성공했습니다.");
        }else {
            System.out.println("삭제에 실패했습니다.");
        }
        return "redirect:/list";
    }

    @GetMapping("/update")
    public String update(@RequestParam("id") Long id, Model model){
        StudentDTO studentDTO = studentService.findById(id);
        model.addAttribute("student", studentDTO);
        return "update";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute StudentDTO studentDTO){
        boolean result = studentService.update(studentDTO);
        if (result) {
            System.out.println("업데이트 성공");
        }else {
            System.out.println("업데이트 실패");
        }
        return "redirect:/list";
    }
}
