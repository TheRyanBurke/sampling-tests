require "test_helper"

class TrendTest < ActiveSupport::TestCase
	test "getting ten trends" do
		assert_equal 10, Trend.get_trends.length
	end
	
	

end
