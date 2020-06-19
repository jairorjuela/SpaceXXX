class LaunchesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.launch?
      @launch = current_user.launch
    else
      @launch = create_launch(current_user)
    end
  end

  private

  def create_launch(user)
    data = get_data(user)

    launch = Launch.create(data)
  end

  def get_data(user)
    response = HTTParty.get('https://api.spacexdata.com/v4/launches/latest')

    if response.success?
      parse_data = JSON.parse(response.body,:symbolize_names => true)

      data_to_create = {
        article: parse_data[:links][:article],
        video: parse_data[:links][:webcast],
        success: parse_data[:success],
        name: parse_data[:name],
        image: parse_data[:links][:flickr][:original],
        user_id: user.id
      }
    else
      data_to_create = false
    end
  end
end
