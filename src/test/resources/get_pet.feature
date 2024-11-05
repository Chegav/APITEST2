@get_pet
Feature: Consultar la mascota ingresada previamente

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def headers = read('headers.json')
    * configure headers = headers

@get_pet
  Scenario Outline: Consultar mascota por ID
    Given path 'pet', '<id>'
    And header accept = 'application/json'
    And header api_key = '<id>'
    When method GET
    Then status 200
    * print 'Respuesta de la mascota:', response
    * match response.id == <id>
    * match response.name != null
    * match response.status != null

  Examples:
    | id   |
    | 1508 |
   # | 1509 |
    #| 1510 |