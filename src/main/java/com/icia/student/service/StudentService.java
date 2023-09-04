package com.icia.student.service;

import com.icia.student.dto.StudentDTO;
import com.icia.student.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    private StudentRepository studentRepository;

    public boolean save(StudentDTO studentDTO) {
        int result = studentRepository.save(studentDTO);
        if (result > 0) {
            return true;
        }else {
            return false;
        }
    }

    public List<StudentDTO> list() {
        return studentRepository.findAll();
    }

    public StudentDTO findById(Long id) {
        return studentRepository.findById(id);
    }
}
