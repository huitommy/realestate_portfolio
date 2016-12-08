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
      @property = Property.new(
        user_id: current_user.id,
        address: property_params["address"],
        city: property_params["city"],
        state: property_params["state"],
        zipcode: property_params["zipcode"],
        year_built: property_params["year_built"],
        bathroom: property_params["bathroom"],
        bedroom: property_params["bedroom"],
        lot_size: property_params["lot_size"],
        sqft: property_params["sqft"],
        house_type: property_params["house_type"],
        zpid: property_params["zpid"],
        zestimate: property_params["zestimate"],
        rent: property_params["rent"],
        portfolio: to_boolean(property_params["portfolio"])
      )
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
