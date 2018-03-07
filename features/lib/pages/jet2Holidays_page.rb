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

  def click_month_dropdown
    find("#duration-month").click
  end
  #
  # def select_month
  #   status1 = page.find("#duration-month").disabled?
  #   status2 = page.find("#duration-month").visible?
  #   if status1 == false && status2 == true
  #     select('May', :from => "#duration-month")
  #   end
  #
  # end
  def select_month(month)
    dropdown_list = find("#duration-month")
    options = dropdown_list.all("option")
    options.each do |option|
       if option.text == month
         option.click
       end
     end
  end



end
