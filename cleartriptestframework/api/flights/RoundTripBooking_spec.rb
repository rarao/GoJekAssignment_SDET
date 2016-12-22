require_relative "../../spec_helper"
require_relative "../../payloads/geflightinfo_payload"
require_relative "../../utility/httptransport"
require_relative "../../validations/getflightinfo_validator"
require_relative "../../factories/resultsfactory"
require 'json'

describe "RoundTripTestSuite", :type => :api do

	before(:all) do

		# This should be picked from configuration file 
		@host = "https://cleartrip.com"

	end

	it "validates a simple round trip booking with a single traveler for DEL - BOM" do

		resultsfactory = FactoryGirl.create(:results)	
		#In the next line of code, few parameters are being passed in addition to the factory because factories would only have those attributes which would be common to every testcase.
		#The other testcase would be another 'it' block, where we could vary the request parameters. 
		#We could actually take whole of this code out in method and re-use it for every 'it'block(testcase)
		results_endpoint = @host + "/flights/results?" + CreateResultsRequestURL(resultsfactory,"RoundTrip","New Delhi, IN - Indira Gandhi Airport DEL","DEL","Mumbai, IN - Chatrapati Shivaji Airport BOM","BOM")
		resultsResponse = httpGet(results_endpoint)
		expect(resultsResponse.status).to eq 200
		resultsResponseHash = JSON.parse resultsResponse.body
		ValidateResultsResponse(resultsResponseHash)

		itinerary_id = resultsResponseHash["sid"]

		getflightinfo_endpoint = @host + "/book/getflightinfo?" + itinerary_id + "&request_type=mr,bi"
		getflightinfoResponse = httpGet(getflightinfo_endpoint)
		expect(getflightinfoResponse.status).to eq 200
		getflightinfoResponseHash = JSON.parse getflightinfoResponse.body
		ValidateGetFlightInfoResponse(getflightinfoResponseHash)

		end

	end
	
end