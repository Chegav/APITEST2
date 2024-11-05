@find_pet_by_status
Feature: Find pets by their status in the store

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def headers = { accept: 'application/json' }
    * configure headers = headers

  Scenario Outline: Find pets by status
    Given path 'pet/findByStatus'
    And param status = '<status>'
    When method GET
    Then status 200

    * def actualPets = response
    * print 'Pets found with status:', '<status>'
    * print actualPets

  Examples:
    | status       |
    | available  |
    | sold    |
    | pending   |
    | compradaTest |
