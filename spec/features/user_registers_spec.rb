require 'spec_helper'

feature 'user registers', do
  visit index_path
  fill_in "Name", with: "Daddy"
  fill_in "Email", with: "daddy@daddy.com"
  click_button "Register"
  expect(page).to have_text("Thank you for registering")
end
