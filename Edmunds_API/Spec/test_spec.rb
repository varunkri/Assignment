require './Api_Client'
require 'spec_helper'
require 'json'

describe 'API request' do
  it 'returns a list of cars' do
    client = ApiClient.new
    make = 'Mitsubishi'
    model = 'Outlander'
    year = '2016'
    #puts client.fetch_details

    details = client.fetch_details

##Assuming Make, model and year are returned in the JSON object
##
    expect(details['make']).to eq(make)
    expect(details['model']).to eq(model)
    expect(details['year']).to eq(year)
    
  end
end