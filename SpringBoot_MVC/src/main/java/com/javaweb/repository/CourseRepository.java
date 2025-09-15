package com.javaweb.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.javaweb.model.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {

}