require 'capybara'

class Jet2HolidaysHomePage
  include Capybara::DSL

  def visit_home_page
    visit('/')
  end

  def click_list_departure
    all(".search-box-group__link")[0].click
  end

  def check_box_departure(location)
    all(".checkbox-button-group__item").each do |element|
      if element.text == location
        element.click
      end
    end
  end

  def click_list_arrival
    all(".search-box-group__link")[1].click
  end

  def check_box_arrival
    all(".checkbox-button-group__item--indent")[0].click
  end

  def click_list_date
    all(".search-box-group__link")[2].click
  end

  def click_month
    find("#duration-month").click
    select('May', :from => "#duration-month")
  end


end
