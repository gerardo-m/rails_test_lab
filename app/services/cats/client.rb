module Cats

  class Client
    include HTTParty

    base_uri 'https://api.thecatapi.com'

    def initialize
    end

    def get_picture_url
      response = self.class.get('/v1/images/search')
      response.parsed_response[0]['url']
    end

  end
end