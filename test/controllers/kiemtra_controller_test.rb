require 'test_helper'

class KiemtraControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kiemtra_index_url
    assert_response :success
  end

end
