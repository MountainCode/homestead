Given(/^.*? visits "(.+)"$/) do |location|
  visit location
end

Given(/^.*? fills in the min list price field with "(\d+)"$/) do |min_list_price|
  fill_in 'q[list_price_gteq]', with: min_list_price
end

Given(/^.*? fills in the max list price field with "(\d+)"$/) do |max_list_price|
  fill_in 'q[list_price_lteq]', with: max_list_price
end

Given(/.*? selects "(.*?)" from the property box$/) do |property_type|
  select property_type, from: 'q[property_type_id_eq]'
end

When(/^.*? clicks the "(.*)" button$/) do |button_text|
  click_button button_text
end

Then(/^.*? should be shown a property with the address, "(.+)"$/) do |address|
  expect(page).to have_content address
end

Then(/^.*? should not be shown a property with the address, "(.+)"$/) do |address|
  expect(page).not_to have_content address
end
