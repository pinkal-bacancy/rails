class PersonsController < ApplicationController
	#before_action :set_person, only: [:show,:edit,:update,:destroy]
  def index
  	@people=Person.all
  end

  def new
  	@person=Person.new
  end
  def create
  	@person=Person.new(person_params)
  	@person.save
  	redirect_to @person
  end

  def show
  	@person=Person.find(params[:id])
  end
  def destroy
    @person=Person.find(params[:id])
    if  @person.destroy
    	redirect_to persons_path
    else
  	render 'index'
  end
  end

  def edit
  	@person=Person.find(params[:id])
  end
  def update
   @person = Person.find(params[:id])
 
    if @person.update(person_params)
      redirect_to @person
    else
      render 'edit'
    end
  end
  private
  def person_params
    params.require(:person).permit(:name,:dob,:city,:role)    
  end
  def set_person
    @person=Person.find(params[:id])
  end
end
