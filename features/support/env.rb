require 'byebug'
require 'faker'
require 'watir'

CONFIG_HOSTS = YAML.load_file('config/hosts.yml')
HOSTS        = CONFIG_HOSTS[ENV['ENV'].downcase]
BROWSER      = ENV['BROWSER']

Before do
  args = %w[--use-fake-device-for-media-stream --use-fake-ui-for-media-stream --start-fullscreen]
  browser = Watir::Browser.new :chrome, args: args
  page = ->(b, klass) { klass.new b }.curry.call(browser)
  @browser = browser
  @page = page
end

After do
  @browser.close
end
