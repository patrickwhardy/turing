require 'test_helper'

class Api::V1::ItemsControllerTest < ActionController::TestCase
  test "can visit index" do
    get "index", format: :json
    parsed_json = JSON.parse(response.body)

    assert_response :success

    assert_equal 2, parsed_json.count
    assert parsed_json.first.has_key?("description")

  end

  test "can visit show" do
    item = Item.first
    get "show", id: item.id, format: :json

    parsed_json = JSON.parse(response.body)

    assert_response :success
    assert_equal "Nine inch nail", parsed_json["description"]
    assert_equal "Nail", parsed_json["name"]
  end

  test "can create a new item" do
    item_params = { name: "Screwdriver", description: "for screw driving" }

    assert_difference 'Item.count', 1 do
      post "create", item: item_params, format: :json
    end

    assert_response :success

    new_item = Item.last

    assert_equal item_params[:name], new_item.name
    assert_equal item_params[:description], new_item.description
  end

  test "can update an item" do
    id = Item.first.id
    previous_name = Item.first.name
    item_params = { name: "NEW NAME" }

    patch :update, id: id, item: item_params, format: :json
    item = Item.find_by(id: id)

    assert_response :success
    refute_equal previous_name, item.name
    assert_equal "NEW NAME", item.name
  end

  test "can delete existing item" do
    id = Item.first.id
    assert_difference 'Item.count', -1 do
      delete "destroy", id: id, format: :json
    end

    assert_response :success
    assert_equal "", response.body
    refute Item.find_by(id: id)
  end
end
