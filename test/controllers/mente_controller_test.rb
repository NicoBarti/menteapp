require 'test_helper'

class MenteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mente_index_url
    assert_response :success
  end

end
