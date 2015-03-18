require 'yummly'

Yummly.configure do |config|
  config.app_id = "4e9f2aa0"
  config.app_key = "e54e9cfa05d58b64bab7da2301f05c0b"
  config.use_ssl = true # Default is false
end

results = Yummly.search('chocolate chip cookies') # this returns an array of recipe results

first_recipe_name = results.first.name
first_recipe_ingredients = results.first.ingredients # this returns an array of recipe ingredients
first_recipe_id = results.first.id

puts "Recipe name: #{first_recipe_name}"
puts "Recipe ingredients: #{first_recipe_ingredients}"
puts "Here is a link to the recipe: http://www.yummly.com/recipe/#{first_recipe_id}"

