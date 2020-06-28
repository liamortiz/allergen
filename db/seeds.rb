
# Seed my DB

(rand(15) + 5).times do
  new_user = User.create!(:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name)
  # Create recipes
  (rand(8) + 3).times do
    new_recipe = Recipe.create!(:name => Faker::Food.dish, :user_id => new_user.id)
    # Create ingredients for it
    (rand(7) + 3).times do
      new_recipe.ingredients << Ingredient.new(:name => Faker::Food.ingredient)
    end
  end
end
