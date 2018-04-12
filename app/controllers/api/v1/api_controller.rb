class Api::V1::ApiController < ApplicationController

  before_action :get_user
  attr_reader :current_user

  def get_user
    @current_user = User.find request.headers['Authorization']
  end

end