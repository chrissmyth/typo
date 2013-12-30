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

  Scenario: When articles are merged, the merged article should contain the body of both previous articles. 
    Given I am logged in as an admin
      And there is an article titled "Article 1" with body of "Text 1"
      And there is an article titled "Article 2" with body of "Text 2"
    When I merge the article titled "Article 1" with the article titled "Article 2"
    Then the article titled "Article 1" must still exist
      And the article titled "Article 1" must have body of "Text 1 Text 2"
      And the article titled "Article 2" must not exist
	


