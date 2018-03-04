Given("I am on the jet2holidays home page") do
  jet2Holidays_Homepage.visit_home_page
  sleep 5
  jet2Holidays_Homepage.click_list_departure
  sleep 5
  jet2Holidays_Homepage.check_box_departure("East Midlands (EMA)")
  sleep 5
  jet2Holidays_Homepage.click_list_arrival
  sleep 5
  jet2Holidays_Homepage.check_box_arrival
  sleep 5
end

When("I click this") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("this happens") do
  pending # Write code here that turns the phrase above into concrete actions
end
