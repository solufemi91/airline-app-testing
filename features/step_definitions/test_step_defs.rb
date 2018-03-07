Given("I am on the jet2holidays home page") do
  jet2Holidays_Homepage.visit_home_page
  sleep 1
end

When("I click this") do
  jet2Holidays_Homepage.click_pop_up

  jet2Holidays_Homepage.click_list_departure

  jet2Holidays_Homepage.check_box_departure("East Midlands (EMA)")

  jet2Holidays_Homepage.click_list_arrival

  jet2Holidays_Homepage.check_box_arrival

  jet2Holidays_Homepage.click_list_date

  # jet2Holidays_Homepage.click_month_dropdown
  sleep 1
  jet2Holidays_Homepage.select_month('Mar')
  jet2Holidays_Homepage.select_day('10')
  jet2Holidays_Homepage.select_nights(2)
  jet2Holidays_Homepage.find_holiday

  sleep 3
end

Then("this happens") do
 #  url = URI.parse(current_url)
 # expect(url).to eq URI.parse(sign_in_page.sign_in_page_link)
expect(current_url).to include('https://www.jet2holidays.com/city-breaks')
 sleep 5
end
