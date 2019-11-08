require "json"
require "open-uri"
require "rest-client"
Ingredient.destroy_all

response = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
repos = JSON.parse(response)

repos["drinks"].each_with_index do |i, index|
  puts "Creating ingredient number #{index + 1}"
  Ingredient.create!(
  name: i["strIngredient1"]
  )
end
