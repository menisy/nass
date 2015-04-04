class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_contact
  before_filter :load_cities_and_areas
  before_filter :load_industries
  before_filter :load_events
  before_filter :load_education_levels
  before_filter :load_schools
  before_filter :load_subscriptions
  before_filter :load_candidates


  before_filter :set_local

  # def employer_url c
  #   '/'
  # end

  # def student_url c
  #   root_path
  # end

  # def user_url c
  #   '/refinery'
  # end


  def set_local
    I18n.locale = session[:lcl] || :ar
    Globalize.locale = session[:lcl] || :ar
  end

  def after_sign_in_path_for(resource)
    # check for the class of the object to determine what type it is
    if resource.class == User
      refinery.admin_root_path
    else
      root_path
    end
  end

  def authenticate!
    authenticate_employer! unless (student_signed_in? || employer_signed_in?)
  end

  def load_events
    @events = ::Refinery::Events::Event
  end

  private

  def authenticate_admin
    authenticate_user! && current_user.roles.map(&:title).include?('Superuser') &&
      current_user.roles.map(&:title).include?('Refinery')
  end

  def load_cities_and_areas
    @cities = ::Refinery::Companies::City.all
    @areas = ::Refinery::Companies::Area.all
  end

  def load_education_levels
    @education_levels = ::Refinery::Companies::EducationLevel.all
  end

  def load_schools
    @schools = ::Refinery::Schools::School.visible
    @programs = ::Refinery::Schools::Program.visible
    @courses = ::Refinery::Schools::Course.visible
  end

  def load_industries
    @industries = ::Refinery::Companies::Industry.all
  end

  def load_subscriptions
    @subscriptions = ::Refinery::Companies::Subscription.all
  end

  def load_candidates
    infos = ::Refinery::PersonalInfos::PersonalInfo
    @candidates = infos.nass_graduate + infos.not_nass_graduate
  end

  def load_contact
    @contact = ::Refinery::PagePart.find_by_title "contact"
  end
end
