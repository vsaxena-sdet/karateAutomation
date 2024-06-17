Feature: To create data using post call

  Background: Create and init base url
    Given url 'http://localhost:9897'

    Scenario: To create data in json format
      Given path 'normal/webapi/add'
      And request {"experience":["5"],"jobDescription":"SDET","jobId":0,"jobTitle":"Automation developer","project":[{"projectName":"Personal","technology":["Java"]}]}
      And headers {Accept:'application/json', Content-type:'application/json'}
      When method post
      And status 201
      And match response.jobTitle == 'Automation developer'