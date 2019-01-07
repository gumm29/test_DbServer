# Confirm Address Class
class ConfirmAddress < SitePrism::Page
  elements :confirm_address, '.address_address1.address_address2'
  element  :button_proceed, '.button.btn.btn-default.button-medium'
end
