Feature: Simple API Test

  Scenario: Test A Sample GET API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200

   Scenario: Test a second GET API
   	Given url 'https://reqres.in'
    And path '/users'
    And param page = 2
    When method GET
    Then status 200
    And match $.data[0].email == 'lindsay.ferguson@reqres.in
    And print response'