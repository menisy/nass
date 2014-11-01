Refinery::PagesController.class_eval do
  before_filter :fetch_home_photos, :only => [:home]

  def fetch_home_photos
    @home_photos = ::Refinery::HomePhotos::HomePhoto.all
  end
  protected :fetch_home_photos
end
