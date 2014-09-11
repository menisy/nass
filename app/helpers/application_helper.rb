module ApplicationHelper

  def navigation_menu
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    presenter.css = "navbar-inner"
    presenter.menu_tag = :div
    presenter.selected_css = "active"
    presenter.first_css = ""
    presenter.last_css = ""
    presenter.max_depth = 0 # prevents dropdown menus, which don't render correctly
    presenter
  end

  def locale_switcher
    if I18n.locale.to_s == 'en'
      link_to 'عربي'.upcase, refinery.url_for(params.merge(:locale => 'ar')), class: 'lcl'
    else
      link_to 'English'.upcase, refinery.url_for(params.merge(:locale => 'en')), class: 'lcl'
    end
  end

end
