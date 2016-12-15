@timing-test
Feature: Delay test
  This is a simple test to see if delay affects the completion on Calliope

  Scenario Outline: Sleeping outline
    Given I sleep for "<time>" seconds
    Then I should log my total sleeping time
    Scenarios: Values
      | time |
      | 10   |
      | 20   |
      | 15   |
      | 10   |
      | 20   |
      | 15   |
      | 10   |
      | 20   |
      | 15   |
      | 10   |
      | 20   |
      | 15   |
      | 10   |
      | 20   |
      | 15   |
      | 10   |
      | 20   |
      | 15   |

  Scenario: Sleeping many times a little time
    Given I sleep "1000" times for "5" seconds
    Then I should log my total sleeping time

  Scenario: Sleeping few times a lot of time
    Given I sleep "10" times for "50" seconds
    Then I should log my total sleeping time