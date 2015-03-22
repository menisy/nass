class LocalsController < ApplicationController

  def switch
    path = (URI(request.referrer).path if request.referrer) || '/'
    if params[:lcl] == 'en'
      session[:lcl] = 'en'
      if path.index('/ar')
        path['ar'] = 'en'
      else
        path = '/en' + path
      end
    else
      session[:lcl] = 'ar'
      if path.index('/en')
        path['/en'] = '/ar'
      else
        path = '/ar' + path
      end
    end
    redirect_to path
  end
end
