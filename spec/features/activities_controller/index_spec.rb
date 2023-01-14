require 'rails_helper'

RSpec.describe 'activies index page' do 

  it 'takes the paticipant number and searches for activies with it' do 
    visit root_path 

    fill_in :num_participants, with: '5'
    click_on 'Find Activities'

    expect(current_path).to eq('/search')

    expect(page).to have_content('Description')
    expect(page).to have_content('Participants')
    expect(page).to have_content('Price Scale')
  end

  it 'will redirect if the number of participants gives an error' do 
    visit root_path 

    fill_in :num_participants, with: '1000'
    click_on 'Find Activities'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Sorry that many people is just no fun')
  end

end