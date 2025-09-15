package com.javaweb.service;

import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.javaweb.model.Course;

@Service
public interface CourseService {
    List<Course> getAllCourses();
    void saveCourse(Course course);
    Course getCourseById(long id);
    void deleteCourseById(long id);
    Page<Course> findPaginated(int pageNum, int pageSize,
                               String sortField,
                               String sortDirection);
}
