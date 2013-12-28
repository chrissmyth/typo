
When /I should see the merge articles feature/ do
 target_selector = "#merge_with"
 assert page.has_selector?(target_selector) , "failed to find css selector with class "+target_selector
end

When /I should not see the merge articles feature/ do
  target_selector = "#merge_with"
  assert !page.has_selector?(target_selector) , "A non-admin user cannot merge articles - improperly found css selector with class "+target_selector+" as a non-admin user"
end

When /^I start editing an article$/ do
  visit '/admin/content/new'
  fill_in("article_title", :with => "Foobar") 
  fill_in("article__body_and_extended_editor", :with => "Lorem Ipsum")
  click_button("Publish")
  current_path = URI.parse(current_url).path
  current_path.should == "/admin/content"
  page.should have_xpath('//*', :text => "Foobar")
  click_link("Foobar")
  page.should have_xpath('//*', :text => "Lorem Ipsum")
end

Given /^there is an article titled "(.*?)" with text of "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When /^I merge the article titled "(.*?)" with the article titled "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then /^the article titled "(.*?)" must still exist$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the article titled "(.*?)" must not exist$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the article titled "(.*?)" must have text of "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

