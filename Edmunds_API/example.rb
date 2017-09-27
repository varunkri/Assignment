require 'faraday'
Faraday::Connection
conn = Faraday.new
  response = conn.get 'http://example.com'
  response.status
  response.body
conn.post 'http://example.com', :some_param => 'Some Value'
conn.put  'http://example.com', :other_param => 'Other Value'

puts response.status
puts response.body