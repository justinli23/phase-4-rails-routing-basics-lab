class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_oldest_grades = Student.all.order("grade DESC")
        render json: students_oldest_grades
    end

    def highest_grade
        students_oldest_grades = Student.all.order("grade DESC")
        render json: students_oldest_grades.first
    end
end
