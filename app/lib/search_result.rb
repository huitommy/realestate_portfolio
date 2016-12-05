class SearchResult
  attr_reader :address, :zpid, :year_built, :bathroom, :bedroom, :lot_size, :sqft, :house_type, :rent_data, :zestimate

  def initialize(data)
    @address = data["address"]
    @zpid = data["zpid"]
    @year_built = data["yearBuilt"]
    @bathroom = data["bathrooms"]
    @bedroom = data["bedrooms"]
    @lot_size = data["lotSizeSqFt"]
    @sqft = data["finishedSqFt"]
    @house_type = data["useCode"]
    @zestimate = data["zestimate"]
    @rent_data = data["rentzestimate"]
  end

  def formatted_address
    address.except("latitude","longitude").values.join(" ")
  end
end
