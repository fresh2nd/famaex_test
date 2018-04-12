class Api::V1::SpacesController < Api::V1::ApiController

  def show
    render json: @space
  end

end