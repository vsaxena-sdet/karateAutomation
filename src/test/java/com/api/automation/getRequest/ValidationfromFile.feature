Feature: To test the get end point of api from file

  Background: Setup base path
    Given url 'http://localhost:9897'
    And print '============base path============'

  Scenario: To get all the data from the api in JSON format and validate from file
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    # Create a variable to store the data from ext. file
    * def actual_response = read("response.json")
    And match response == actual_response