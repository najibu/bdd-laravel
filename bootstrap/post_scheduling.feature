Feature: Post Scheduling
  In order to build up the schedule (WHY)
  As an adminstrator (WHO)
  I need to schedule posts for future dates (WHAT)

  Scenario: scheduling a post for tomorrow
    Given I have a post "Old Post"
    And I have a scheduled post "Schedule Post"
    When I view all posts
    Then the "Scheduled Post" post should not be in the list


Feature: Collections
  In order to give students a path to work through on one subject  (WHY)
  As an adminstrator (WHO)
  I need to offer collections on the site (WHAT)

  Scenario: Grouping testing-specific lessons 
    Given I have a collection "Testing Collection"
    And I add a lesson "Some Testing Lesson" to the collection
    And I add a lesson "Some Testing Series" to the collection
    When I view the collection
    Then the "Some Testing Lesson" lesson should not be in the list
    Then the "Some Testing Series" lesson should not be in the list