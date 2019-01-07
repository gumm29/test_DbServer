# Checkout Class
class Checkout < SitePrism::Page
  element  :span_available, '.label.label-success'
  elements :a_product_name, '.product-name a'
  element  :span_product_price, '#total_price'
  element  :button_proceed_checkout, '.button.btn.btn-default.standard-checkout.button-medium'
end
