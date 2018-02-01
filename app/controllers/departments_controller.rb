class DepartmentsController < ApplicationController
  def new
  	@department=Department.new
  end

  def index
    @departments=Department.all
  end

  def create
  	@department=Department.new(department_params)
  	@department.save
  	redirect_to departments_path
  end 

  def show
    @department=Department.find(params[:id])
  end

  def edit
  end
  private
  def department_params
    params.require(:departments).permit(:department_name, :block)   
  end
end
