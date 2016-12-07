module Api
  class PropertiesController < ApplicationController
    def index
      properties = current_user.properties
      render json: properties
    end

    def search
      zwid = Zillow.new
      properties = zwid.find_properties(params[:query])

      render json: properties
    end
  end
end
