require "test_helper"

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:one)
    user = users(:one)
    sign_in_as(user)
  end

  test "should get index" do
    get ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_url
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference("Ingredient.count") do
      post ingredients_url, params: { ingredient: { description: @ingredient.description, name: 'should_create_ingredient' } }
    end

    assert_redirected_to ingredients_url
  end

  test "should not create ingredient with duplicate name" do
    assert_no_difference("Ingredient.count") do
      post ingredients_url, params: { ingredient: { description: @ingredient.description, name: @ingredient.name } }
    end

    assert_response :unprocessable_entity
  end

  test "should not create ingredient with blank name" do
    assert_no_difference("Ingredient.count") do
      post ingredients_url, params: { ingredient: { description: @ingredient.description, name: '' } }
    end

    assert_response :unprocessable_entity
  end

  test "should show ingredient" do
    get ingredient_url(@ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_url(@ingredient)
    assert_response :success
  end

  test "should update ingredient" do
    patch ingredient_url(@ingredient), params: { ingredient: { description: @ingredient.description, name: @ingredient.name } }
    assert_redirected_to ingredients_url
  end

  test "should destroy ingredient" do
    assert_difference("Ingredient.count", -1) do
      delete ingredient_url(@ingredient)
    end

    assert_redirected_to ingredients_url
  end
end
