class VVTestePesquisa
  def initialize(browser)
    @browser = browser
    @form = @browser.div(class: 'nf-form-layout')
    @name_field = @browser.input(id: 'nf-field-5')
    @surname_field = @browser.input(id: 'nf-field-6')
    @email_field = @browser.input(id: 'nf-field-7')
    @confirm_email_field = @browser.input(id: 'nf-field-8')
    @age_select_radio = @browser.label(id: 'nf-label-class-field-10-0')
    @qa_time_list = @browser.select_list(id: 'nf-field-11')
    @area_attraction_list = @browser.select_list(id: 'nf-field-12')
    @comm_improvement_radio = @browser.label(id: 'nf-label-class-field-13-2')
    @language_interest_field = @browser.input(id: 'nf-field-14')
    @send_button = @browser.input(id: 'nf-field-16')
    @sent_form_response = @browser.div(class: 'nf-response-msg')
  end

  def verify_page_load
    @form.wait_until(&:present?)
  end

  def fill_personal_informations
    @name_field.send_keys(Faker::Name.first_name)
    @surname_field.send_keys(Faker::Name.last_name)
    name = @name_field.value
    @email_field.send_keys(Faker::Internet.free_email(name: name))
    email = @email_field.value
    @confirm_email_field.send_keys(email)
    @age_select_radio.click
  end

  def fill_qa_informations
    @qa_time_list.select "mais de 5 anos"
    @area_attraction_list.select "Desafio"
    @comm_improvement_radio.click
    @language_interest_field.send_keys(Faker::ProgrammingLanguage.name)
  end

  def click_send_button
    @send_button.click
  end
  
  def verify_response_msg
    @sent_form_response.wait_until(&:present?)
    @sent_form_response.text
  end
end