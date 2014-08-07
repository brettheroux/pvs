require 'rails_helper'
require 'spec_helper'

describe 'Accessing the Project Vote Smart API' do

  it 'should retrieve Barack Obama information' do
    candidate_bio = CandidateBio.new
    response = candidate_bio.getBio '9490'
    expect(response).not_to eq(nil)
    expect(response['bio']).not_to eq(nil)
  end

end