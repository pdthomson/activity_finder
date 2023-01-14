require 'rails_helper'

RSpec.describe 'Activities service' do 

  it 'returns a json response for a activity based on number of participants' do 
    results = ActivityService.find_activity('5')

    expect(results).to be_a(Hash)
    expect(results.keys).to eq([:activity, :type, :participants, :price, :link, :key, :accessibility])
    expect(results[:activity]).to be_a(String)
    expect(results[:type]).to be_a(String)
    expect(results[:participants]).to be_a(Numeric)
    expect(results[:price]).to be_a(Numeric)
    expect(results[:link]).to be_a(String)
    expect(results[:key]).to be_a(String)
    expect(results[:accessibility]).to be_a(Numeric)
  end

end