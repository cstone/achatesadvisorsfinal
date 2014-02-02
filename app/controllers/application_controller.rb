class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_dynamic_content

  def after_sign_in_path_for(admin)
    admin_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end


  def get_dynamic_content
    @contact_us_content = DynamicContent.get_value(:contactus)
    @contact_us_address = DynamicContent.get_value(:contactaddress)
    @contact_us_city_state_zip = DynamicContent.get_value(:contactcitystatezip)
    @contact_us_phone = DynamicContent.get_value(:contactphone)
    @contact_us_email = DynamicContent.get_value(:contactemail)
    @contact_map = DynamicContent.get_value(:contactmap)
    @footer_about = DynamicContent.get_value(:footerabout)
    @site_title = DynamicContent.get_value(:sitetitle)
    @footer_about_title = DynamicContent.get_title(:footerabout)
  end
end
