class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_contact

  private
  def load_contact
    @contact = ::Refinery::PagePart.find_by_title "contact"
  end
end
