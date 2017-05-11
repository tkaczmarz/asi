require 'test_helper'

class UsersControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get company_data" do
    get users_controller_company_data_url
    assert_response :success
  end

end
