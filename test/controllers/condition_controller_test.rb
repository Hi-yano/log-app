require 'test_helper'

class ConditionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get condition_new_url
    assert_response :success
  end

end
