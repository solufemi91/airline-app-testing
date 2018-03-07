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

  sleep 1
end

Then("this happens") do
  pending # Write code here that turns the phrase above into concrete actions
end
