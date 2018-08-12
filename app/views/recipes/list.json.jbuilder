json.array!(@recipes) do |recipe|
  json.name recipe.name
  json.how_to_do recipe.how_to_do
  json.duration recipe.format_duration
  json.ingredients do
    recipe.ingredients do |ingredient|
      json.name ingredient.name
      json.measurement ingredient.measurement
    end
  end

end
