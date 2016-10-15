require 'net/http'
require 'json'
require 'byebug'

module ApiInterface

  def self.make_get_request(url)
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    JSON.parse(res.body)
  end

end
