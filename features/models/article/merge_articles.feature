Feature: Merge Articles
  As a blog administrator
  In order to rationalise duplicated content
  I want to be able to merge articles on my blog
  To give a better customer experience

  Background:
    Given the blog is set up

  Scenario: A non-admin must not see the merge articles feature.
    Given I am logged in as a nonadmin
    When I start editing an article
    Then I should not see the merge articles feature

  Scenario: An admin must see the merge articles feature.
    Given I am logged in as an admin
    When I start editing an article
    Then I should see the merge articles feature
	


