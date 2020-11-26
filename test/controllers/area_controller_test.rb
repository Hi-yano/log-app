require 'test_helper'

class AreaControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get area_new_url
    assert_response :success
  end

end
