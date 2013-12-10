
# See the advice in the following blog posts:
#
# * http://benmabey.com/2008/05/19/imperative-vs-declarative-scenarios-in-user-stories.html
# * http://dannorth.net/2011/01/31/whose-domain-is-it-anyway/
# * http://elabs.se/blog/15-you-re-cuking-it-wrong
#

#Given /^a cucumber that is (\d+) cm long$/ do |arg1|
#  pending # express the regexp above with the code you wish you had
#end
 
Given /^a cucumber that is (\d+) cm long$/ do |length|
  @cucumber = {:color => 'green', :length => length.to_i}
end
 
When /^I (?:cut|chop) (?:it|the cucumber) in (?:halves|half|two)$/ do
  @choppedCucumbers = [
    {:color => @cucumber[:color], :length => @cucumber[:length] / 2},
    {:color => @cucumber[:color], :length => @cucumber[:length] / 2}
  ]
end
 
Then /^I have two cucumbers$/ do
  @choppedCucumbers.length.should == 2
end
 
Then /^both are (\d+) cm long$/ do |length|
  @choppedCucumbers.each do |cuke|
    cuke[:length].should == length.to_i
  end
end
