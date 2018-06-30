class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def activate_student
    set_student
    @student.active ? @student.update(active: false) : @student.update(active: true)
    redirect_to student_path(@student)
  end

  def index
    @students = Student.all
  end

  def show
    set_student
    @student.active ? @status = "active" : @status = "inactive"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
