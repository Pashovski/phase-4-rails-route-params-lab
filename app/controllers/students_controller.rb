class StudentsController < ApplicationController

  def index
    students = Student.all
  byebug
    if params[:name]
     students = students.select {|student| student.first_name == params[:name] || student.last_name == params[:name]}
    end

    render json: students
  end


  def show
    student = Student.find(params[:id])

    render json: student
  end
end
