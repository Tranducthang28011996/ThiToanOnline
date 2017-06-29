require 'test_helper'

class HocmachoiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hocmachoi_index_url
    assert_response :success
  end

end
