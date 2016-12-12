Feature: Represent a Feature file
    As a user
    I want to be able the load a feature file and represent its sections
    in a ruby-object
    So that I can parse it in order to inject data

  @represent @sc01 @tobeautomated
  Scenario: Load a Feature File
    Given I have created an object called "feature_obj" to represent the Feature file
    And I have set the feature root folder to "feature/test_features"
    Then I can load the "represent_sc01.feature" file into "feature_obj"

  @represent @sc02 @tobeautomated
  Scenario: Validate a Feature File
    Given I have created an object called "feature_obj" to represent the Feature file
    And I have set the feature root folder to "feature/test_features"
    When I load the "represent_sc02.feature" file into "feature_obj"
    Then I can validate "feature_obj" holds a valid Feature file

  @represent @sc03 @tobeautomated
  Scenario: Parse a Feature File
    Given I have created an object called "feature_obj" to represent the Feature file
    And I have set the feature root folder to "feature/test_features"
    And I have loaded the "represent_sc03.feature" file into "feature_obj"
    And I have validated "feature_obj" holds a valid Feature file
    When I parse the "feature_obj"
    Then I have one Feature Object and an array of scenarios
