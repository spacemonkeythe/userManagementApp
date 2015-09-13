Feature: User can see home, help, About Us and Contact page
  As a site user I can visit home, help, About Us and Contact page

  Background:
    Given I am on the application's home page

  Scenario: User can view home page
    Then I can see home page content

  Scenario: User can view help page
    When I visit application's help page
    Then I can see help page content

  Scenario: User can view About Us page
    When I visit application's About page
    Then I can see About page content

  Scenario: User can view Contacat page
    When I visit application's contact page
    Then I can see contact page content