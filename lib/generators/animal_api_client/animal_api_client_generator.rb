class AnimalApiClientGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def create_client_file
    template "client.rb", File.join("app/services", file_name, "client.rb")
  end

  def add_routes
    route "post 'animal_pictures/get_#{singular_table_name}'"
  end

  def add_to_controller
    inject_into_class "app/controllers/animal_pictures_controller.rb", AnimalPicturesController, <<~RUBY.indent(2)
        def get_#{singular_table_name}
          client = #{class_name }::Client.new
          redirect_to action: :index, image_url: client.get_picture_url
        end
    RUBY
  end

  def add_to_view
    insert_into_file "app/views/animal_pictures/index.html.erb", after: '<div id="actions">' do <<~ERB.indent(4)

        <%= button_to "#{class_name}", action: :get_#{singular_table_name} %>
      ERB
    end
  end
end
