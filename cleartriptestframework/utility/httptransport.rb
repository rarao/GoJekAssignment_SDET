require 'net/http'

def httpPostJson(endpoint,requestjson)

	json_headers = {"Content-Type" => "application/json",
                "Accept" => "application/json"}

    uri = URI.parse(endpoint)
	http = Net::HTTP.new(uri.host, uri.port)

	response = http.post(uri.path,requestjson,json_headers)

	return response

end

def httpGet(endpoint)
	uri = URI(endpoint)
	response = Net::HTTP.get_response(uri)

	return response
end
