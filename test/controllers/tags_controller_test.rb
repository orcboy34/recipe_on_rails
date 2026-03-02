require "test_helper"

class TagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag = tags(:one)
    user = users(:one)
    sign_in_as(user)
  end

  test "should get index" do
    get tags_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_url
    assert_response :success
  end

  test "should create tag" do
    assert_difference("Tag.count") do
      post tags_url, params: { tag: { description: @tag.description, name: "NewTag" } }
    end

    assert_redirected_to tags_url
  end

  test "should not create tag with duplicate name" do
    assert_no_difference("Tag.count") do
      post tags_url, params: { tag: { description: @tag.description, name: @tag.name } }
    end

    assert_response :unprocessable_entity
  end

  test "should not create tag with blank name" do
    assert_no_difference("Tag.count") do
      post tags_url, params: { tag: { description: @tag.description, name: "" } }
    end

    assert_response :unprocessable_entity
  end

  test "should show tag" do
    get tag_url(@tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_url(@tag)
    assert_response :success
  end

  test "should update tag" do
    patch tag_url(@tag), params: { tag: { description: @tag.description, name: @tag.name } }
    assert_redirected_to tags_url
  end

  test "should destroy tag" do
    assert_difference("Tag.count", -1) do
      delete tag_url(@tag)
    end

    assert_redirected_to tags_url
  end
end
