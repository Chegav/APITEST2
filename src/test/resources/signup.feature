Feature: User Signup

  Background:
    * url 'https://api.demoblaze.com/signup'

  Scenario: Singnup with new user
    Given url 'https://api.demoblaze.com/signup'
    And request { username: 'cheto2889', password: 'Q0hFVE8yODg5' }
    When method post
    Then status 200

  Scenario: Signup with an existing user
    Given url 'https://api.demoblaze.com/signup'
    And request { username: 'chetos2', password: 'Y2hldG9zMTIz' }
    When method post
    Then status 200
    And match response.errorMessage == 'This user already exist.'



