@memory-test
Feature: Momory test

  Scenario: Filling the memory
    Given I fill a variable with 100000 array items with test "memory test"
    Then give me the memory usage