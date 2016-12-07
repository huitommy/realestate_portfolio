var DashboardApplication = React.createClass({
  getInitialState: function(){
    return { properties: [] }
  },
  componentDidMount: function(){
    this.getData();
  },
  getData: function(){
    let self = this;
    $.ajax({
      url: '/api/properties',
      success: function(data){
        self.setState({properties: data})
      },
      error: function(xhr, status, error){
        alert('Cannot get data from API: ', error);
      }
    });
  },
  render: function(){
    return(
      <div className="container">
        <div className="header">
          <h1> Portfolio Dashboard</h1>
          <p> All your real estate portfolio information</p>
        </div>
        <div>
          <h1> Find a new property</h1>
          <p> (Powered by Zillow) </p>
          <SearchForm />
        </div>
        <div className="portfolio col-xs-12">
          <h1> Portfolio</h1>
          <Portfolio info={this.state.properties}/>
        </div>
        <div className="watchlist col-xs-12">
          <h1> Watch List</h1>
          <WatchList info={this.state.properties}/>
        </div>
      </div>
    )
  }
})
