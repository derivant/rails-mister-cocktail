
require "json"
require "open-uri"
require "rest-client"

response = RestClient.get "https://api.github.com/users/lewagon/repos"
repos = JSON.parse(response)

