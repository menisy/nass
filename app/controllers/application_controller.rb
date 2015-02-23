class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_contact

  def employer_url c
    root_path
  end

  def student_url c
    root_path
  end

  def user_url c
    '/refinery'
  end

  def after_sign_in_path_for(resource)
    # check for the class of the object to determine what type it is
    case resource.class
    when User
      users_root_path
    when Student
      students_root_path
    when Employer
      employers_root_path
    end
  end

  private
  def load_contact
    @contact = ::Refinery::PagePart.find_by_title "contact"
  end
end
