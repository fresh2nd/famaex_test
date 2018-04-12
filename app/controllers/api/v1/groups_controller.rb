class Api::V1::GroupsController < Api::V1::ApiController

  def show
    render json: @group
  end

end