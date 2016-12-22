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

    def create
      @property = Property.new(property_params)
      @property.user = current_user
      if @property.save
        render json: @property
      else
        render json: @property.errors, status: :unprocessable_entity
      end
    end

    def property_params
      params.require(:property).permit(
        :user_id,
        :address,
        :city,
        :state,
        :zipcode,
        :year_built,
        :bathroom,
        :bedroom,
        :lot_size,
        :sqft,
        :house_type,
        :zpid,
        :zestimate,
        :rent,
        :portfolio
      )
    end
  end
end
