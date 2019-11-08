require 'json'
require 'open-uri'

Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
repos = JSON.parse(open(url).read)

repos["drinks"].each_with_index do |i, index|
  puts "Creating ingredient number #{index + 1}"
  Ingredient.create!(
  name: i["strIngredient1"]
  )
end

require "open-uri"

