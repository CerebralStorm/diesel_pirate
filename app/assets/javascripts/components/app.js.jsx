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
                  <a href='#'>Home</a>
                </li>
                <li>
                  <a href='#'>About</a>
                </li>
                <li>
                  <a href='#'>Services</a>
                </li>
                <li>
                  <a href='#'>Photos</a>
                </li>
                <li>
                  <a href='#'>Contact</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <div id="content" className='container'>
          <ReactCSSTransitionGroup transitionName="fade-in" transitionAppear={true} transitionAppearTimeout={500}>
            <ReactRouter.RouteHandler />
          </ReactCSSTransitionGroup>
        </div>
      </div>
    );
  }
});