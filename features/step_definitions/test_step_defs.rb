Given("I am on the jet2holidays home page") do
  jet2Holidays_Homepage.visit_home_page

  jet2Holidays_Homepage.click_list_departure

  jet2Holidays_Homepage.check_box_departure("East Midlands (EMA)")

  jet2Holidays_Homepage.click_list_arrival

  jet2Holidays_Homepage.check_box_arrival

  jet2Holidays_Homepage.click_list_date

  jet2Holidays_Homepage.click_month
  sleep 5
end

When("I click this") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("this happens") do
  pending # Write code here that turns the phrase above into concrete actions
end
