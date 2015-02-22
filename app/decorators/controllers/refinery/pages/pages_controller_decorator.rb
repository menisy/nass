Refinery::PagesController.class_eval do
  before_filter :fetch_home_photos, only: :home
  before_filter :fetch_news, only: :home
  before_filter :set_new_user, only: :show  


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
    if params[:path] == 'registration'
      @student = Student.new
      @info = @student.build_personal_info
    else
    end
  end

end
