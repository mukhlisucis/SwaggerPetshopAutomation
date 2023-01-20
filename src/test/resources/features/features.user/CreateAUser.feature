Feature: Testing Petstore Swagger API for endpoint Create a User
  @Swagger
  Scenario: Post create user with valid and complete body
    Given Base URL for create a user with valid and complete body
    When Send request post create a user
    Then Should return status code 200
    And Response message body should be the same as "3"
    And Validate json schema place an order

  @Swagger
  Scenario: Post create user without id in body
    Given Base URL for create a user without id in body
    When Send request post create a user
    Then Should return status code 200
    And Response body id should autogenerated id
    And Validate json schema place an order

  @Swagger
  Scenario: Post create user without username in body
    Given Base URL for create a user without username in body
    When Send request post create a user
    Then Should return status code 400
    And Response body message should be "incomplete data"

  @Swagger
  Scenario: Post create user without firstName in body
    Given Base URL for create a user without firstName in body
    When Send request post create a user
    Then Should return status code 400
    And Response body message should be "incomplete data"

  @Swagger
  Scenario: Post create user without lastName in body
    Given Base URL for create a user without lastName in body
    When Send request post create a user
    Then Should return status code 400
    And Response body message should be "incomplete data"

  @Swagger
  Scenario: Post create user without email in body
    Given Base URL for create a user without email in body
    When Send request post create a user
    Then Should return status code 400
    And Response body message should be "incomplete data"

  @Swagger
  Scenario: Post create user without password in body
    Given Base URL for create a user without password in body
    When Send request post create a user
    Then Should return status code 400
    And Response body message should be "incomplete data"

  @Swagger
  Scenario: Post create user without phone in body
    Given Base URL for create a user without phone in body
    When Send request post create a user
    Then Should return status code 400
    And Response body message should be "incomplete data"

  @Swagger
  Scenario: Post create user without userStatus in body
    Given Base URL for create a user without userStatus in body
    When Send request post create a user
    Then Should return status code 400
    And Response body message should be "incomplete data"

  @Swagger
  Scenario: Post create user with invalid data type in body
    Given Base URL for create a user with invalid data type in body
    When Send request post create a user
    Then Should return status code 400

  @Swagger
  Scenario: Post create user without body
    Given Base URL for create a user without body
    When Send request post create a user
    Then Should return status code 400
    And Response body message should be "no data"