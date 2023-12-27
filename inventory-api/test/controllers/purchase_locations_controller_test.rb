require "test_helper"

class PurchaseLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase_location = purchase_locations(:one)
  end

  test "should get index" do
    get purchase_locations_url, as: :json
    assert_response :success
  end

  test "should create purchase_location" do
    assert_difference('PurchaseLocation.count') do
      post purchase_locations_url, params: { purchase_location: { id: @purchase_location.id, location_name: @purchase_location.location_name } }, as: :json
    end

    assert_response 201
  end

  test "should show purchase_location" do
    get purchase_location_url(@purchase_location), as: :json
    assert_response :success
  end

  test "should update purchase_location" do
    patch purchase_location_url(@purchase_location), params: { purchase_location: { id: @purchase_location.id, location_name: @purchase_location.location_name } }, as: :json
    assert_response 200
  end

  test "should destroy purchase_location" do
    assert_difference('PurchaseLocation.count', -1) do
      delete purchase_location_url(@purchase_location), as: :json
    end

    assert_response 204
  end
end
