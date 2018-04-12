class Api::V1::CompanyAggrupationsController < Api::V1::ApiController

  def show
    render json: @company_aggrupation
  end

end