################################################################################
# Copyright 2016 spriteCloud B.V. All rights reserved.
# Generated by LapisLazuli, version 0.8.7
# Author: "spriteCloud B.V." <info@spritecloud.com>

# interactions_steps.rb is used to interact with elements on the page.

Given(/^the user navigates to (.*?) in (.*?)$/) do |site, language|
  # Combine the configuration depth with dots
  config_name = "#{site.downcase}.#{language.downcase}"
  # Get the value of the configuration (see /config/config.yml)
  url = env(config_name)
  # Go to the URL
  browser.goto url
end

Given(/^the user searches for "(.*?)"$/) do |query|
  # Get the input element
  searchbox = browser.find(:text_field => {:name => "q"})
  # Make sure the input field is empty
  searchbox.clear rescue log.debug "Could not clear searchbox"
  # Fill in the query
  searchbox.send_keys(query)
  # Press enter to submit the search
  searchbox.send_keys(:enter)
end

When(/^the user clicks on link "(.*?)"$/) do |url|
  # Search for the element that includes the expected text
  browser.wait(
    :like => {
      :element => :a,
      :attribute => :href,
      :include => url
    }
  ).click
end

$TIME_SLEPT = 0
Given(/^I sleep for "([^"]*)" seconds$/) do |arg1|
  log.debug "Going to sleep for #{arg1} seconds"
  sleep arg1.to_i
  $TIME_SLEPT += arg1.to_i
end

Then(/^I should log my total sleeping time$/) do
  log.debug "Slept a total time of #{$TIME_SLEPT} seconds"
end

Given(/^I sleep "([^"]*)" times for "([^"]*)" seconds$/) do |arg1, arg2|
  loops = arg1.to_i
  log.debug "Going to sleep #{arg2} seconds for #{arg1} times"
  i = 1
  while i < loops
    sleep arg2.to_i
    $TIME_SLEPT += arg2.to_i
    log.debug "Slept #{i} out of #{arg1} times (Total: #{$TIME_SLEPT} seconds"
    i += 1
  end
end
# 710
$MEM_CONSUMER = []
Given(/^I fill a variable with (\d+) array items with test "([^"]*)"$/) do |amount, text|
  i = 1
  mem = GetProcessMem.new
  amount.to_i.times do
    p "#{i}: #{mem.kb}kb\n"
    arr = [text,text,text,text,text,text,text,text,text,text,text,text]
    $MEM_CONSUMER << arr
    i += 1
  end
end

Then(/^give me the memory usage$/) do
  mem = GetProcessMem.new
  error "#{mem.kb}kb of memory is used"
end