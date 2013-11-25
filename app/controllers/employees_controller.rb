class EmployeesController < ApplicationController

	#link system

  def dashboard
  end

  #crud

  def new
  end

  def show
  end

  def edit
  end

  def create
  	
  end

  def update
  	
  end

  def destroy
  	
  end

  






  private

  def get_params

  	params.require(:employee).permit()
  	
  end
end
