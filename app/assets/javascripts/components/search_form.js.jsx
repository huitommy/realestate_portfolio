let SearchForm = React.createClass({
  handleNewProperty: function(property){
    this.props.handleNewProperty(property);
  },
  getInitialState: function(){
    return { results: [] }
  },
  search: function(event) {
    event.preventDefault();
    let query = ReactDOM.findDOMNode(this.refs.query).value
    let self = this;
    $.ajax({
      url: '/api/properties/search',
      data: { query: query },
      success: function(data) {
        self.setState({results: data});
      },
      error: function() {
        alert('Property not found');
      }
    })
  },
  render: function(event) {
    return(
      <div>
        <form onSubmit={this.search}>
          <div className="form-group">
            <input type="text" className="form-control" placeholder="Enter an address, city, and zip code" ref="query" />
          </div>
          <button type="submit" className="btn btn-primary">Submit</button>
        </form>
        <SearchResults results={this.state.results} handleNewProperty={this.handleNewProperty} />
      </div>
    )
  }
});
