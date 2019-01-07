Dado('escolher um produto na home') do
  @home = Home.new
  @home.load
  @product_name = @home.div_product_name[0].text
  @home.img_product[0].hover
  @home.add_cart.click
  @modal = @home.div_modal
end

Quando('realizar o fluxo de checkout') do
  within(@modal) do
    confirm = @home.h2_sucessful_cart[0]
    expect(confirm.text).to eql 'Product successfully added to your shopping cart'
    @home.button_proceed_checkout.click
  end

  @checkout = Checkout.new
  expect(@checkout.a_product_name[0].text).to eql @product_name
  expect(@checkout.span_available.text).to eql 'In stock'
  price = @checkout.span_product_price.text
  @checkout.button_proceed_checkout.click

  @register = Register.new
  @register.input_email.set "test#{rand(100)}@mailinator.com"
  @register.button_create_account.click

  @form_register = FormRegister.new
  random = rand(0..1)
  @form_register.radio_gender[random].click
  @form_register.input_first_name.set MASSA["first_name_#{random}"][rand(5)]
  @form_register.input_last_name.set MASSA['last_name'][rand(5)]
  @form_register.input_password.set "automate#{rand(5)}"
  @form_register.select_days.click
  @form_register.select_choose_days.click
  @form_register.select_months.click
  @form_register.select_choose_months.click
  @form_register.select_year.click
  @form_register.select_choose_year.click
  @form_register.checkbox_newsletter.click
  @form_register.checkbox_option.click
  road = rand(3)
  address = MASSA['address'][road]
  @form_register.input_address.set address
  @form_register.input_city.set 'Sudbury'
  @form_register.input_choose_state.click
  @form_register.input_zip_code.click
  @form_register.input_zip_code.set MASSA['zip'][road]
  @form_register.input_mobile_phone.set MASSA['phone'][rand(4)]
  @form_register.input_alias_address.set 'home'
  @form_register.button_submit.click

  @confirm_address = ConfirmAddress.new
  expect(@confirm_address.confirm_address[0].text).to eql address
  @confirm_address.button_proceed.click

  @condition_terms = ConditionTerms.new
  @condition_terms.input_condition.click
  @condition_terms.button_proceed.click

  @confirm_price = ConfirmPrice.new
  expect(@confirm_price.confirm_price.text).to eql price
  @confirm_price.p_payment_method.click

  @confirm_order = ConfirmOrder.new
  @confirm_order.confirm_order.click
end

Então('validar compra no final do checkout') do
  @finish_order = FinishOrder.new
  expect(@finish_order.h1_head.text).to eql 'ORDER CONFIRMATION'
  expect(@finish_order.p_order_finished.text).to include 'complete'
end
