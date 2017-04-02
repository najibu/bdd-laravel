# BDD and Conversations

## Users stories with Behat Samples

Feature: Post Scheduling<br /> 
  In order to build up the schedule (WHY)
  As an adminstrator (WHO)<br />
  I need to schedule posts for future dates (WHAT)<br />

  Scenario: scheduling a post for tomorrow<br />
    Given I have a post "Old Post"<br />
    And I have a scheduled post "Schedule Post"<br />
    When I view all posts<br />
    Then the "Scheduled Post" post should not be in the list<br />


Feature: Collections<br />
  In order to give students a path to work through on one subject  (WHY)<br />
  As an adminstrator (WHO)<br />
  I need to offer collections on the site (WHAT)<br />

  Scenario: Grouping testing-specific lessons<br /> 
    Given I have a collection "Testing Collection"<br />
    And I add a lesson "Some Testing Lesson" to the collection<br />
    And I add a lesson "Some Testing Series" to the collection<br />
    When I view the collection<br />
    Then the "Some Testing Lesson" lesson should not be in the list<br />
    Then the "Some Testing Series" lesson should not be in the list<br />