@update_pet
Feature: Update a pet's information in the store

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def headers = { accept: 'application/json', authorization: 'Bearer 3755915b-fe65-4f93-bfe1-aec14ebf00ed', 'Content-Type': 'application/x-www-form-urlencoded' }
    * configure headers = headers

  Scenario Outline: Update pet information for a given pet ID
    Given path 'pet', <petId>
    And request 'name=<name>&status=<status>'
    When method POST
    Then status 200
    
    * def expectedResponse = { code: 200, type: 'unknown', message: '<petId>' }
    * match response == expectedResponse

    Given path 'pet', <petId>
    When method GET
    Then status 200

    * def actualPet = response
    * match actualPet.name == '<name>'
    * match actualPet.status == '<status>'

  Examples:
    | petId | name          | status     |
   # | 1508  | perroprueba  | sold       |
    | 1508  | gatoejemplo   | compradaTest  |
   # | 1510  | perrito       | pending    |
