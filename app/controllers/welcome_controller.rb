class WelcomeController < ApplicationController
  def index
    @properties ||= []
  end

  def search
    zwid = Zillow.new
    @properties = zwid.find_properties(params[:query])
    if @properties.empty?
      flash[:alert] = "Sorry, but we couldn't find any properties matching '#{params[:query]}'"
    end
    render :index
  end
end
