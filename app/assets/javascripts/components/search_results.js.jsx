let SearchResults = React.createClass({
  render: function(){
    let results = [];
    this.props.results.forEach(function(property){
      results.push(
        <Property property={property} key={property.zpid} />
      )
    }.bind(this));
    debugger;
    if(results.length > 0){
      return(
        <div className="results">
          <ul>
            {results}
          </ul>
        </div>
      )
    } else {
      return(
        <div className="results">
          <h3> No match found</h3>
        </div>
      )
    }
  }
})
