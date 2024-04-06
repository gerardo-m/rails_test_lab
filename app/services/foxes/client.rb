module Foxes

  class Client
    include HTTParty

    base_uri 'https://randomfox.ca'

    def initialize
    end

    def get_picture_url
      response = self.class.get('/floof')
      # return the url
      response.parsed_response["image"]
    end

  end
end