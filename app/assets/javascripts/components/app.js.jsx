var App = React.createClass({
  render: function() {
    return (
      <div>
        <nav className="navbar navbar-default">
          <div className="container">
            <div className="navbar-header">
              <ReactRouter.Link className="navbar-brand" to='/'>
                Diesel Pirate
              </ReactRouter.Link>
            </div>
            <p className="navbar-text text-uppercase">Call us Now! 801-432-057</p>
            <div className="collapse navbar-collapse">
              <ul className="nav navbar-nav navbar-right">
                <li>
                  <ReactRouter.Link to='/'>
                    Home
                  </ReactRouter.Link>
                </li>
                <li>
                  <ReactRouter.Link to='/services'>
                    Services
                  </ReactRouter.Link>
                </li>
                <li>
                  <ReactRouter.Link to='/photos'>
                    Photos
                  </ReactRouter.Link>
                </li>
                <li>
                  <ReactRouter.Link to='/contact'>
                    Contact
                  </ReactRouter.Link>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <div id="content" className='container'>
          <ReactRouter.RouteHandler />

          <hr />
          <footer>
            <p>&copy; 2012 Diesel Pirate, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
          </footer>
        </div>
      </div>
    );
  }
});