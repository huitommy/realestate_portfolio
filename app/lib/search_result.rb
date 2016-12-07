class SearchResult
  attr_reader :address, :state, :city, :zipcode, :zpid, :year_built, :bathroom, :bedroom, :lot_size, :sqft, :house_type, :rent, :zestimate

  def initialize(data)
    @address = data["address"]["street"]
    @state = data["address"]["state"]
    @city = data["address"]["city"]
    @zipcode = data["address"]["zipcode"]
    @zpid = data["zpid"]
    @year_built = data["yearBuilt"]
    @bathroom = data["bathrooms"]
    @bedroom = data["bedrooms"]
    @lot_size = data["lotSizeSqFt"]
    @sqft = data["finishedSqFt"]
    @house_type = data["useCode"]
    @zestimate = data["zestimate"]["amount"].to_s
    @rent = data["rentzestimate"]["amount"].to_s
  end
end
