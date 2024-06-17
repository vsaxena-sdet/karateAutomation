Feature:To validate the GET endpoint

  Background: Setup base path
    Given url 'http://localhost:9897'
    And print '============base path============'

  Scenario: To get all the data from the api in Xml format using accept header and validate
    Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    And print response
    And match response ==
    """
    <List>
    <item>
    <jobId>1</jobId>
    <jobTitle>Software Engg</jobTitle>
    <jobDescription>To develop andriod application</jobDescription>
    <experience>
    <experience>Google</experience>
    <experience>Apple</experience>
    <experience>Mobile Iron</experience>
    </experience>
    <project>
    <project>
    <projectName>Movie App</projectName>
    <technology>
    <technology>Kotlin</technology>
    <technology>SQL Lite</technology>
    <technology>Gradle</technology>
    </technology>
    </project>
    </project>
    </item>
    </List>
      """

  Scenario: To get all the data from the api in JSON format using accept header and validate
    Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response ==
    """
    [
      {
        "jobId": 1,
        "jobTitle": "Software Engg",
        "jobDescription": "To develop andriod application",
        "experience": [
          "Google",
          "Apple",
          "Mobile Iron"
        ],
        "project": [
          {
            "projectName": "Movie App",
            "technology": [
              "Kotlin",
              "SQL Lite",
              "Gradle"
            ]
          }
        ]
      }
    ]
    """

  Scenario: To get all the data from the api in JSON format using accept header and validate
    Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response !=
      """
      [
        {
          "jobId": 1,
          "jobTitle": "Software Engg",
          "jobDescription": "To develop andriod application",
          "experience": [
            "Google",
            "Apple",
            "Mobile Iron"
          ],
          "project": [
            {
              "projectName": "Movie App",
              "technology": [
                "Kotlin",
                "SQL Lite",
                "Gradle"
              ]
            }
          ]
        }
      ]
      """

  Scenario: To get all the data from the api in JSON format using accept header
    Given url 'http://localhost:9897'
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response contains deep {"jobDescription": "To develop andriod application"}
