Feature: Users API Test

Scenario: Validate sample API response

Given url 'https://jsonplaceholder.typicode.com/users'
When method GET
Then status 200
And match response[0].id == 1
And match response[0].name == 'Leanne Graham'