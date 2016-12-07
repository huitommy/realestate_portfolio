let Property = React.createClass({
  propTypes: {
    address: React.PropTypes.string,
    city: React.PropTypes.string,
    state: React.PropTypes.string,
    house_type: React.PropTypes.string,
    year_built: React.PropTypes.string,
    sqft: React.PropTypes.string,
    bedroom: React.PropTypes.string,
    bathroom: React.PropTypes.string,
    lot_size: React.PropTypes.string,
    zestimate: React.PropTypes.string,
    rent: React.PropTypes.string,
  },
  render: function(){
    let property = this.props.property;
    return(
      <div className="property col-lg-4">
        <li>{property.address + " " + property.city + ", " + property.state}</li>
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
      </div>
    )
  }
})
