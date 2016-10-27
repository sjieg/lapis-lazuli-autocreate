source 'http://rubygems.org'

# Add following two lines to your ~/.gemrc or /etc/gemrc:
# install: --no-rdoc --no-ri
# update:  --no-rdoc --no-ri

# Debuggers
platforms :ruby_18, :ruby_19 do
  gem 'debugger'
end
platforms :ruby_20, :ruby_21 do
  gem 'byebug'
  gem 'rb-readline'
end

# Windows specific
platforms :mswin, :mingw do
  gem 'win32console'
  gem 'term-ansicolor'
end

# Install all the webdriver gems and cucumber
gem 'selenium-webdriver', '2.53.4'
gem 'watir-webdriver'
gem 'watir-webdriver-performance'
gem 'watir-scroll'
gem 'cucumber'

# LapisLazul itself
gem 'lapis_lazuli', "0.8.7"
