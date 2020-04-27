require 'test_helper'

class ReservadehoraControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reservadehora_index_url
    assert_response :success
  end

end
