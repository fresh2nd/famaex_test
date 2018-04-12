class Api::V1::CompaniesController < Api::V1::ApiController

  def show
    byebug
    @company = Company.find params[:id]
    render json: @company
  end

end