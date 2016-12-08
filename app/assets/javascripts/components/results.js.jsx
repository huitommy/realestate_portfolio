let Result = React.createClass({
  handlePortfolio: function(event){
    event.preventDefault();
    let property = this.props.property;
    let newProperty = this.props.handleNewProperty
    let propertyData = {
      address: property.address,
      city: property.city,
      state: property.state,
      zipcode: property.zipcode,
      zpid: property.zpid,
      house_type: property.house_type,
      year_built: property.year_built,
      sqft: property.sqft,
      bedroom: property.bedroom,
      bathroom: property.bathroom,
      lot_size: property.lot_size,
      zestimate: property.zestimate,
      rent: property.rent,
      portfolio: true
    }
    $.ajax({
      url: "/api/properties",
      method: "POST",
      data: { property: propertyData },
      success: function(response){
        newProperty(response);
      },
      error: function(){
        alert("Cannot add this to your portfolio")
      }
    });
  },
  handleWatchList: function(event){
    event.preventDefault();
    let property = this.props.property;
    let newProperty = this.props.handleNewProperty
    let propertyData = {
      address: property.address,
      city: property.city,
      state: property.state,
      zipcode: property.zipcode,
      zpid: property.zpid,
      house_type: property.house_type,
      year_built: property.year_built,
      sqft: property.sqft,
      bedroom: property.bedroom,
      bathroom: property.bathroom,
      lot_size: property.lot_size,
      zestimate: property.zestimate,
      rent: property.rent,
      portfolio: false
    }
    $.ajax({
      url: "/api/properties",
      method: "POST",
      data: { property: propertyData },
      success: function(response){
        newProperty(response);
      },
      error: function(){
        alert("Cannot add this to your watch list")
      }
    });
  },
  render: function(){
    let property = this.props.property;
    return(
      <div className="property col-lg-4 " id={property.zpid}>
        <li>{property.address + " " + property.city + ", " + property.state + " " + property.zipcode}</li>
          <ul>
            <li>Type: {property.house_type}</li>
            <li>Year Built: {property.year_built}</li>
            <li>SqFt: {property.sqft}</li>
            <li># Bedrooms {property.bedroom}</li>
            <li># Bathrooms: {property.bathroom}</li>
            <li>Total Lot Size: {property.lot_size}</li>
            <li>Estimated Value: ${property.zestimate}</li>
            <li>Estimated Rent/Month: ${property.rent}</li>
          </ul>
          <a className="btn btn-primary btn-xs" onClick={this.handlePortfolio}>Add to Portfolio</a>  <a className="btn btn-danger btn-xs" onClick={this.handleWatchList}>Add to Watch List</a>
      </div>
    )
  }
})
