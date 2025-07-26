require "test_helper"

class CityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get city_index_url
    assert_response :success
  end

  test "should get cities" do
    get city_cities_url
    assert_response :success
  end
end
