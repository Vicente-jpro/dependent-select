require "test_helper"

class CountryControllerTest < ActionDispatch::IntegrationTest
  test "should get provinces" do
    get country_provinces_url
    assert_response :success
  end
end
