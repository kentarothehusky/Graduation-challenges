require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get crate" do
    get favorites_crate_url
    assert_response :success
  end

end
