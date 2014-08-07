require 'spec_helper'

describe 'Accessing the Project Vote Smart API' do

  it 'should retrieve Barack Obama information' do
    candidate_bio = CandidateBio.new
    response = candidate_bio.getBio '9490'
    response.should_not == nil
    response['bio'].should_not == nil
  end

end