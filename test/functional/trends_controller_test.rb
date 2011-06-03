require 'test_helper'

class TrendsControllerTest < ActionController::TestCase
	test "visiting index" do
		get :index
		assert_response 200
	end
end
