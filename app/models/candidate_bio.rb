require 'httparty'

class CandidateBio

  def getBio(candidateId)
    url = 'http://api.votesmart.org/CandidateBio.getBio'
    HTTParty.get(url, :query => { 'key' => ENV['VOTE_SMART_API_KEY'], 'candidateId' => candidateId })
  end

end