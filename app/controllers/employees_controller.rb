class EmployeesController < ApplicationController

	#link system

  def dashboard
  end


  def list
  	@employees = Employee.all
  	
  end

  #crud

  def new
  	@employees = Employee.new
  end

  def show
  	@employees = Employee.find(params[:id])
  end

  def edit
  	@employees = Employee.find(params[:id])
  end

  def create

  	@employees = Employee.new(get_params)

  	if @employees.save

  		redirect_to employees_dashboard_path
  	else
  		render 'new'
  	end

  	
  end

  def update
  		@employees = Employee.find(params[:id])

  		if @employees.update(get_params)

  			render 'show'

  		else

  			render 'edit'
  		end
  	
  end

  def destroy
  		@employees = Employee.find(params[:id])

  		@employees.destroy

  		redirect_to employees_dashboard_path
  	
  end

  






  private

  def get_params

  	params.require(:employee).permit(:first,:last,:middle,:birth,:city,:state,:street,:email,:phone,:employeeid,:hire)
  	
  end
end
