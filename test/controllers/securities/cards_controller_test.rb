require 'test_helper'

class Securities::CardsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
