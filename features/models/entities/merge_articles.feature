Feature: Merge Articles
  As a blog administrator
  In order to rationalise duplicated content
  I want to be able to merge articles on my blog
  To give a better customer experience

  Background:
    Given the blog is set up

  Scenario: A non-admin cannot see the merge articles feature (verbose).
    Given I am logged in as a nonadmin
    	And I am on the new article page
    When I fill in "article_title" with "Foobarna"
    	And I fill in "article__body_and_extended_editor" with "Lorem Ipsum na"
    	And I press "Publish"
    Then I should be on the admin content page
    	And I should see "Foobarna"
    When I follow "Foobarna"
    	Then I should see "Lorem Ipsum na"
    	And I should not see the merge articles feature

  Scenario: A non-admin must not see the merge articles feature.
    Given I am logged in as a nonadmin
    When I start editing an article
    Then I should not see the merge articles feature

  Scenario: An admin must see the merge articles feature.
    Given I am logged in as an admin
    When I start editing an article
    Then I should not see the merge articles feature
	


