Feature:  Variable creation in karate framework

  #<Gherkin Keyword> <def> <variable name> = <value>   -> Syntax1
  # * <def> <var_name> = <value> -> Syntax2

  Background: Create and initialize variables
    * def app_name = "Google"
    * def page_load_timeout = 20

  Scenario: To create a variable
    Given def var_int = 10
    And def var_string = "Karate"
    Then print "String Var ====>",var_string
    And print "Int var ====>", var_int
    And print app_name

  Scenario: To create a variable
    * def var_int = 10
    * def var_string = "Karate"
    * print "String Var ====>",var_string
    * print "Int var ====>", var_int
    * print page_load_timeout
