require "test_helper"
require "net/http"
class TwitterTest < ActiveSupport::TestCase
	context "get a trend response" do
		setup do
			@response = Twitter.trends
		end
		
		should "have content" do
			assert !@response.empty?
		end
		
		should "be json-parsable" do
			assert_nothing_raised do
				JSON.parse(@response)
			end
		end
	end
	
	context "parsed json response" do
		setup do
			@json = JSON.parse Twitter.trends
		end
		
		["as_of", "trends"].each do |parameter|
			should "have parameter #{parameter}" do
				assert_not_nil @json[parameter]
			end
		end
		
		should "have as_of not in the future" do
			assert Time.parse(@json["as_of"]) < Time.now
		end
		
	
	end
end
