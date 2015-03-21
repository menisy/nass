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

  def someone_signed_in?
    employer_signed_in? || student_signed_in?
  end

  def current_person
    current_student || current_employer
  end

  def locale_switcher
    if I18n.locale.to_s == 'en'
      link_to 'عربي', main_app.switch_locale_path(lcl: 'ar'), class: 'lcl'
    else
      link_to 'English', main_app.switch_locale_path(lcl: 'en'), class: 'lcl'
    end
  end

  def week_day(day)
    days = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
    (t days[day].downcase.to_sym).titleize
  end

  def month_name(month)
    months = %w(January February March April May June July August September October November December)
    (t months[month].downcase.to_sym).titleize
  end

ARABIC_NUMBERS = %w(٠ ١ ٢ ٣ ٤ ٥ ٦ ٧ ٨ ٩)
def ta numbers
  numbers = numbers.to_s if numbers.is_a? Integer
  results = numbers.chars.map { |char| ARABIC_NUMBERS[char.to_i] }.join
end

def local_number number
  if I18n.locale.to_s == 'en'
    number.to_s
  else
    ta number
  end
end

def lcl
  I18n.locale.to_s
end

  # def locale_switcher
  #     if I18n.locale.to_s == 'en'
  #       link_to 'عربي', refinery.url_for(params.merge(:locale => 'ar')), class: 'lcl'
  #     else
  #       link_to 'English'.upcase, refinery.url_for(params.merge(:locale => 'en')), class: 'lcl'
  #     end
  # end

end
