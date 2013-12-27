
When /I should see the merge articles feature/ do
 
  debugger
  #examine page.body

  target_selector = "#merge_with"

  assert page.has_selector?(target_selector) , "failed to find css selector with class "+target_selector

end


When /I should not see the merge articles feature/ do
  debugger
  #examine page.body

  target_selector = "#merge_with"

  assert !page.has_selector?(target_selector) , "A non-admin user cannot merge articles - improperly found css selector with class "+target_selector+" as a non-admin user"

end
