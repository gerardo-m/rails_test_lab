class AnimalPicturesController < ApplicationController
  def get_fox
    client = Foxes::Client.new
    redirect_to action: :index, image_url: client.get_picture_url
  end
  def index
    @image_url = params[:image_url]
  end

  def get_cat
    client = Cats::Client.new
    redirect_to action: :index, image_url: client.get_picture_url
  end

  def get_dog
    client = Dogs::Client.new
    redirect_to action: :index, image_url: client.get_picture_url
  end

  def get_duck
    client = Ducks::Client.new
    redirect_to action: :index, image_url: client.get_picture_url
  end
end
