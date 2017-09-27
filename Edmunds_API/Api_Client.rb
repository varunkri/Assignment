require 'faraday'
require 'json'

class ApiClient
	def fetch_details
		Faraday::Connection
		conn = Faraday.new
  			response = conn.get 'https://api.edmunds.com/api/vehicle/v2&fmt=json&api_key='
  			conn.params  = {':makeNiceName' => 'Mitsubishi'}
  			conn.params = {':modelNiceName' => 'Outlander' }
  			conn.params = {'year' => '2016'}
  			puts response.status
  			response.body
  			##data = JSON.parse response.body #as I dont have a valid APIkey I used a simple json object example

  			data = { :make => "Mitsubishi" ,:model => "Outlander" , :year => "2016"} 
  			return JSON.parse (data.to_json)


end
end