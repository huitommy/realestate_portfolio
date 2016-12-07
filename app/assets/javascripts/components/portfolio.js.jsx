let Portfolio = React.createClass({
  render: function(){
    let properties = [];
    this.props.info.forEach(function(property){
      if(property.portfolio){
        properties.push(
          <Property property={property} key={property + property.id} />
        )
      }
      }.bind(this));
    return(
      <div className="property">
        <ul>
          {properties}
        </ul>
      </div>
    )
  }
})
