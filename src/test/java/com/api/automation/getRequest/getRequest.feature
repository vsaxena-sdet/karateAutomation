Feature: To test the get end point of api
  To test different get end point with different data format supported by api

  Background: Setup base path
    Given url 'http://localhost:9897'
    And print '============base path============'

  Scenario: To get all the data from the api in JSON format
    Given path '/normal/webapi/all'
    When method get
    Then status 200

  Scenario: To get all the data from the api in JSON format using Path variable
    Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    When method get
    Then status 200

  Scenario: To get all the data from the api in JSON format using accept header
    Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200


