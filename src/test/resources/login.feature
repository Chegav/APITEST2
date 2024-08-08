Feature: User Login

Feature: User Login

  Scenario: Login with valid credentials
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'chetos123', password: 'Y2hldG9zMTIz' }
    When method post
    Then status 200
    And print response
    And print response.token
    And match response.token == null



  Scenario: Login with invalid credentials
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'invalidUser', password: 'wrongPassword' }
    When method post
    Then status 200
    And match response.errorMessage == 'Wrong password.'
    And print 'Error Message:', response.errorMessage
    And print response
