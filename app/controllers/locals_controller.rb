class LocalsController < ApplicationController

  def switch
    if params[:lcl] == 'en'
      session[:lcl] = 'en'
    else
      session[:lcl] = 'ar'
    end
    redirect_to :back
  end
end
