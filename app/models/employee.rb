class Employee < ActiveRecord::Base
  attr_accessible :details, :employee_image, :name, :resume, :remove_employee_image, :remove_resume
  mount_uploader :employee_image, EmployeeImageUploader
  mount_uploader :resume, ResumeUploader
end
