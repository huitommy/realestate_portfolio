let SearchResults = React.createClass({
  handleNewProperty: function(property){
    this.props.handleNewProperty(property);
  },
  render: function(){
    let results = [];
    this.props.results.forEach(function(property){
      results.push(
        <Result property={property} key={property.zpid} handleNewProperty={this.handleNewProperty} />
      )
    }.bind(this));
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
