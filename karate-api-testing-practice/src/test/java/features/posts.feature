Feature: Posts API Test

Scenario: Validate posts endpoint

Given url 'https://jsonplaceholder.typicode.com/posts'
When method GET
Then status 200
And match response[0].id == 1
And match response[0].userId == 1