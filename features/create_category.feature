Feature: Create categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: create a category properly
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "GG"
    And I fill in "category_description" with "desc"
    And I press "Save"
    Then I should see "Foobar"
    Then I should see "Lorem Ipsum"
    Then I should see "GG"
    Then I should see "desc"