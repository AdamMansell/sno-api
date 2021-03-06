require 'test_helper'

class ResortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resort = resorts(:one)
  end

  test "should get index" do
    get resorts_url
    assert_response :success
  end

  test "should get new" do
    get new_resort_url
    assert_response :success
  end

  test "should create resort" do
    assert_difference('Resort.count') do
      post resorts_url, params: { resort: { herm_parking: @resort.herm_parking, lift_1: @resort.lift_1, lift_2: @resort.lift_2, lift_3: @resort.lift_3, main_parking: @resort.main_parking, name: @resort.name, snow_fall: @resort.snow_fall } }
    end

    assert_redirected_to resort_url(Resort.last)
  end

  test "should show resort" do
    get resort_url(@resort)
    assert_response :success
  end

  test "should get edit" do
    get edit_resort_url(@resort)
    assert_response :success
  end

  test "should update resort" do
    patch resort_url(@resort), params: { resort: { herm_parking: @resort.herm_parking, lift_1: @resort.lift_1, lift_2: @resort.lift_2, lift_3: @resort.lift_3, main_parking: @resort.main_parking, name: @resort.name, snow_fall: @resort.snow_fall } }
    assert_redirected_to resort_url(@resort)
  end

  test "should destroy resort" do
    assert_difference('Resort.count', -1) do
      delete resort_url(@resort)
    end

    assert_redirected_to resorts_url
  end
end
