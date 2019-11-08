Feature: Create categories
  As a blog administrator
  I want to be able to create and edit categories
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "movies"
    And I fill in "category_keywords" with "comedy"
    And I fill in "category_permalink" with "yes"
    And I fill in "category_description" with "funny movies"
    And I press "Save"
    Then I should see "movies"
    Then I should see "comedy"
    Then I should see "yes"
    Then I should see "funny movies"