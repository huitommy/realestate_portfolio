let WatchList = React.createClass({
  render: function(){
    var properties = [];
    this.props.info.forEach(function(property){
      if(property.portfolio === false){
        properties.push(
          <Property property={property} key={property + property.id} />
        )
      }
      }.bind(this));
    return(
      <div className="property card">
        <ul>
          {properties}
        </ul>
      </div>
    )
  }
})
