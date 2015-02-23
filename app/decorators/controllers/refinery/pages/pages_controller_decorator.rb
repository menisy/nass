Refinery::PagesController.class_eval do
  before_filter :fetch_home_photos
  before_filter :fetch_news
  before_filter :set_new_user

  def reg_student

  end

protected
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
      @employer = Employer.new
      @company = @employer.build_company
      2.times {@company.contact_people.build}
    end
  end

end
