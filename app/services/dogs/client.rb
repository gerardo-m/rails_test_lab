module Dogs

  class Client
    include HTTParty

    base_uri ''

    def initialize
    end

    def get_picture_url
      response = self.class.get('')
      # return the url
    end

  end
end