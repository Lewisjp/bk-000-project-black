require 'test_helper'

class GeolocationsControllerTest < ActionController::TestCase
  setup do
    @geolocation = geolocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:geolocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create geolocation" do
    assert_difference('Geolocation.count') do
      post :create, geolocation: { address: @geolocation.address, borough: @geolocation.borough, latitude: @geolocation.latitude, longitude: @geolocation.longitude, neighborhood: @geolocation.neighborhood }
    end

    assert_redirected_to geolocation_path(assigns(:geolocation))
  end

  test "should show geolocation" do
    get :show, id: @geolocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @geolocation
    assert_response :success
  end

  test "should update geolocation" do
    put :update, id: @geolocation, geolocation: { address: @geolocation.address, borough: @geolocation.borough, latitude: @geolocation.latitude, longitude: @geolocation.longitude, neighborhood: @geolocation.neighborhood }
    assert_redirected_to geolocation_path(assigns(:geolocation))
  end

  test "should destroy geolocation" do
    assert_difference('Geolocation.count', -1) do
      delete :destroy, id: @geolocation
    end

    assert_redirected_to geolocations_path
  end
end
