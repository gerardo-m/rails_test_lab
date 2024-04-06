module Ducks

  class Client
    include HTTParty

    base_uri 'https://random-d.uk/api'

    def initialize
    end

    def get_picture_url
      response = self.class.get('/random')
      response.parsed_response['url']
    end

  end
end