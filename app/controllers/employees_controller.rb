class EmployeesController < ApplicationController

  def create
    @company = Company.find(params[:company_id])
    @company.employees.build(employee_params)
    @company.save
       redirect_to company_path (@company)

    end

    def destroy
    @employee = Company.find(params[:id])
    @employee.destroy 
    redirect_to companies_path

    end
    
    private
    def employee_params
      params.require(:employee).permit(:last_name, :firts_name, :email, :area_id)
    end   
end
