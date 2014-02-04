class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_dynamic_content, :get_all_employees

  def after_sign_in_path_for(admin)
    admin_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end


  def get_dynamic_content
    @contact_phone = DynamicContent.get_value(:contact_phone)
    @contact_address = DynamicContent.get_value(:contact_address)
  end

  def get_all_employees
    @all_employees = Employee.all
  end
end
