require 'test_helper'

class AcrcadeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get acrcade_index_url
    assert_response :success
  end

end
