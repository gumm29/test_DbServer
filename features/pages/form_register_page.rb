# Form Register
class FormRegister < SitePrism::Page
  elements :radio_gender, '.radio span'
  element  :input_first_name, '#customer_firstname'
  element  :input_last_name, '#customer_lastname'
  element  :input_password, '#passwd'
  element  :select_days, '#uniform-days'
  element  :select_choose_days, "#uniform-days option[value='#{rand(1..31)}'"
  element  :select_months, '#uniform-months'
  element  :select_choose_months, "#uniform-months option[value='#{rand(1..12)}'"
  element  :select_year, '#uniform-years'
  element  :select_choose_year, "#uniform-years option[value='#{rand(1939..2001)}'"

  element  :checkbox_newsletter, '#uniform-newsletter'
  element  :checkbox_option, '#uniform-optin'

  element  :input_address_first_name, '#firstname'
  element  :input_address_last_name, '#lastname'
  element  :input_address, '#address1'
  element  :input_city, '#city'
  element  :input_state, '#uniform-id_state'
  element  :input_choose_state, "#uniform-id_state option[value='21'"
  element  :input_zip_code, '#postcode'
  element  :select_country, '#id_country'
  element  :input_mobile_phone, '#phone_mobile'
  element  :input_alias_address, '#alias'

  element  :button_submit, '#submitAccount'
end
