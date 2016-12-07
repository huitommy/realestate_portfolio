let SearchForm = React.createClass({
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
          <input type="text" className="form-control" placeholder="Enter address" ref="query" />
          <input type="submit" value="Submit" />
        </form>
        <SearchResults results={this.state.results} />
      </div>
    )
  }
});
