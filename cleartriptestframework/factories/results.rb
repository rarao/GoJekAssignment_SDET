require 'faker'
FactoryGirl.define do
	factory :results, class: OpenStruct do
		trip_type "RoundTrip"
		origin "New Delhi, IN - Indira Gandhi Airport (DEL)"
		from "DEL"
		destination "Mumbai, IN - Chatrapati Shivaji Airport (BOM)"
		to "BOM"
		depart_date {Faker::Date.future(10)}
		return_date {Faker::Date.future(20)}
		adults 1
		childs 0
		Infants 0
		class "Economy"
		airline ""
		carrier ""
		ver "V2"
		type "json"
		intl "n"
		sd "1482353987624"
		page ""
		search_ver "V2"
		cc 1
		rhc 1
	end
end