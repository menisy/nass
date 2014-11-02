Refinery::PagesController.class_eval do
  before_filter :fetch_home_photos, only: :home
  before_filter :fetch_news, only: :home

protected
  def fetch_home_photos
    @home_photos = ::Refinery::HomePhotos::HomePhoto.all
  end

  def fetch_news
    @news = ::Refinery::News::Item.all.take 3
  end

end
