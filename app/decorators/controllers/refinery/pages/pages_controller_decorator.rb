Refinery::PagesController.class_eval do
  before_filter :fetch_home_photos
  before_filter :fetch_news
  before_filter :set_new_user
  before_filter :set_jobs, only: [:show]
  before_filter :load_cities_and_areas
  before_filter :load_industries

  def reg_student

  end

protected

  def load_cities_and_areas
    @cities = ::Refinery::Companies::City.all
    @areas = ::Refinery::Companies::Area.all
  end

  def load_industries
    @industries = ::Refinery::Companies::Industry.all
  end

  def set_jobs
    if params[:path] && params[:path].index('job')
      if employer_signed_in?
        @jobs = current_employer.company.jobs.filter(filter)
        @job = current_employer.company.jobs.build
      else
        @jobs = ::Refinery::Companies::Job.filter(filter)
      end
    end
  end

  def fetch_home_photos
    @home_photos = ::Refinery::HomePhotos::HomePhoto.all
  end

  def fetch_news
    @news = ::Refinery::News::Item.all.take 3
  end

  def set_new_user
    if params[:path] && params[:path].index('registration')
      @student = Student.new
      @info = @student.build_personal_info
      @info.build_address
      @employer = Employer.new
      @company = @employer.build_company
      @company.build_address
      2.times {@company.contact_people.build}
    end
  end

private

  def filter
    params[:filter] ? params[:filter] : {}
  end

end
