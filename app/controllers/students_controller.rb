class StudentsController < ApplicationController
  def index
    @students=Student.all
  end
  
  def create
  	@student=Student.new(student_params)
  	@student.save
  	redirect_to students_path
  end
  def new
  	@student=Student.new
  end

  def show
  	@student=Student.find(params[:id])
  end

  def edit
  end
  private
  def student_params
    params.require(:students).permit(:name,:dob,:phone,:gender,:password,:password_confirmation,:email,:department_id)    
  end
end


