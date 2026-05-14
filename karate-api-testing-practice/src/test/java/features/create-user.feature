Feature: Create User API Test

Scenario: Create new user

Given url 'https://jsonplaceholder.typicode.com/users'
And request
"""
{
  "name": "Romina",
  "username": "rominaqa",
  "email": "romina@test.com"
}
"""
When method POST
Then status 201
And match response.name == 'Romina'
And match response.username == 'rominaqa'