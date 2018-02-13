require 'test_helper'

# Test para el modelo recipe, normalmente este archivo con rails generate model
class RecipeTest < ActiveSupport::TestCase
  def setup
    # Hay que inicializar el modelo para hacer los tests
    @recipe = Recipe.new(name: "vegetable", description: "great vegetable recipe")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be present" do
    # debe inicializarse el name para poder evaluarlo
    @recipe.name = ""
    assert_not @recipe.valid?
  end

  test "description should be present" do
    # debe inicializarse el description para poder evaluarlo
    @recipe.description = ""
    assert_not @recipe.valid?
  end

  test "description shouldn't be less than 5 characters" do
    @recipe.description = "a" * 3
    assert_not @recipe.valid?
  end

  test "description shouldn't be more than 500 characters" do
    @recipe.description = "a" * 501
    assert_not @recipe.valid?
  end
end