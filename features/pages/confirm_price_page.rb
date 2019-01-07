# Confirm Price class
class ConfirmPrice < SitePrism::Page
  element :confirm_price, '#total_price'
  element :p_payment_method, '.bankwire'
end
