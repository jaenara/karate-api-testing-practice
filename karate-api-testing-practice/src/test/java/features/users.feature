Feature: Users API Test

Scenario: Get users list

Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200
And match response.page == 2