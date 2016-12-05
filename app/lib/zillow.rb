Dotenv.load

class Zillow
  def find_properties(location)
    properties = []
    zwsid = ENV['ZWSID']
    address = StreetAddress::US.parse(location)
    unless address.nil?
      query = "#{address.number}+#{address.prefix}+#{address.street}&citystatezip=#{address.city}+#{address.state}+#{address.postal_code}"
      uri = URI("http://www.zillow.com/webservice/GetDeepSearchResults.htm?zws-id=#{zwsid}&rentzestimate=true&address=#{query}")
      response = Net::HTTP.get_response(uri).body
      data = JSON.parse(Hash.from_xml(response).to_json)["searchresults"]["response"]["results"]["result"]
      if data.is_a? Array
        data.each do |property|
          properties << SearchResult.new(property)
        end
      else
        properties << SearchResult.new(data)
      end
    end
    properties
  end
end
