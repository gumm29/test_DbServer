# Home class
class Home < SitePrism::Page
  set_url 'http://www.automationpractice.com'

  elements :img_product, '.product_img_link'
  element  :add_cart, '.button.ajax_add_to_cart_button.btn.btn-default'
  element  :div_modal, '#layer_cart'
  elements :h2_sucessful_cart, 'h2'
  element  :button_proceed_checkout, '.btn.btn-default.button.button-medium'
  elements :div_product_name, '.product-name'
end
