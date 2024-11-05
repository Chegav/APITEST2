@add_pet 
Feature: Add pets to store

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def headers = read('headers.json')
    * configure headers = headers

  Scenario Outline: Add a new pet
    Given path 'pet'
    
    * def petRequest = 
    """
    {
      "id": <id>,
      "category": {
        "id": 15,
        "name": "Dogs"
      },
      "name": "<name>",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "<status>"
    }
    """
    * print 'Contenido de la solicitud:', petRequest
    
    And request petRequest 
    When method POST
    
    Then status 200  

    * def expectedResponse = { "id": <id>, "name": "<name>", "status": "<status>" }
    * match response.id == expectedResponse.id
    * match response.name == expectedResponse.name
    * match response.status == expectedResponse.status

    * def actualResponse = response
    * print 'Respuesta actual:', actualResponse  

    * print 'Expected ID:', expectedResponse.id 
    * print 'Expected Name:', expectedResponse.name 
    * print 'Expected Status:', expectedResponse.status  

  Examples:
    | id   | name  | status     |
    | 1508 | Max   | available  |
#    | 1509 | Bella | available  |
 #   | 1510 | Rex   | available  |

