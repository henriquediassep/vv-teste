class VVTesteHome
  def initialize(browser)
    @browser = browser
    @vvteste_menu = @browser.ul(id: 'primary-menu')
    @pesquisa_qa_button = @browser.li(id: 'menu-item-226')
  end

  def url_home_vvteste
    @browser.goto(HOSTS['vvteste_home'])
    @browser.alert.ok if @browser.alert.exists?
    @vvteste_menu.wait_until(&:present?)
  end

  def access_pesquisa_qa
    @pesquisa_qa_button.click
  end
end