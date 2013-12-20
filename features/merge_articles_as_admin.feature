Feature: Merge Articles
  As a blog administrator
  In order to rationalise duplicated content
  I want to be able to merge articles on my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: An admin can merge articles.
    Given I am on the new article page
    When I fill in "article_title" with "Foobar_admin"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum_admin"
    And I press "Publish"
    Then I should be on the admin content page
    And I should see "Foobar_admin"
    When I follow "Foobar_admin"
    Then I should see "Lorem Ipsum_admin"
    And I should see the merge articles feature
