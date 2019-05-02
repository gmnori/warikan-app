require 'test_helper'

class WarikanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get warikan_index_url
    assert_response :success
  end

end
