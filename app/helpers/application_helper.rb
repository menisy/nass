module ApplicationHelper

  def navigation_menu
    #presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    # presenter.css = "navbar-inner"
    # presenter.menu_tag = :div
    # presenter.selected_css = "active"
    # presenter.first_css = ""
    # presenter.last_css = ""
    # presenter.max_depth = 0 # prevents dropdown menus, which don't render correctly
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self).to_html
    presenter
  end

  def locale_switcher
    unless params[:controller] == 'registrations' && params[:action] == 'create'
      if I18n.locale.to_s == 'en'
        #Globalize.with_locale('ar') { link_to 'عربي', refinery.url_for( locale: 'ar'), class: 'lcl' }
        link_to 'عربي', refinery.url_for(:locale => 'ar'), class: 'lcl'
      else
        #Globalize.with_locale('en') { link_to 'English', refinery.url_for(locale: 'en'), class: 'lcl' }
        link_to 'English'.upcase, refinery.url_for(:locale => 'en'), class: 'lcl'
      end
    else
      if I18n.locale.to_s == 'en'
        link_to 'عربي', 'ar/registration', class: 'lcl'
      else
        link_to 'English', 'registration', class: 'lcl'
      end
    end
  end

  # def locale_switcher
  #     if I18n.locale.to_s == 'en'
  #       link_to 'عربي', refinery.url_for(params.merge(:locale => 'ar')), class: 'lcl'
  #     else
  #       link_to 'English'.upcase, refinery.url_for(params.merge(:locale => 'en')), class: 'lcl'
  #     end
  # end

end
