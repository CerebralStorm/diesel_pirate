React = require('react')
ReactRouter = require('react-router')

App = React.createClass
  render: ->
      <div>
        <nav id='main-nav' className="navbar navbar-default navbar-fixed-top no-pad no-margin">
          <div className='row no-pad no-margin' role="navigation">

            <ReactRouter.Link id='brand-logo' className='col-lg-4 col-md-4 col-sm-4 col-xs-4' to='/'>
              <img src="/images/brand-logo.png" className='img-responsive' alt='brand logo' />
            </ReactRouter.Link>

            <ReactRouter.Link className='col-lg-2 col-md-2 col-sm-2 col-xs-2 nav-link text-uppercase' role="navigation" to='/'>
              Home
            </ReactRouter.Link>

            <ReactRouter.Link className='col-lg-2 col-md-2 col-sm-2 col-xs-2 nav-link text-uppercase' role="navigation" to='/services'>
              Services
            </ReactRouter.Link>

            <ReactRouter.Link className='col-lg-2 col-md-2 col-sm-2 col-xs-2 nav-link text-uppercase' role="navigation" to='/photos'>
              Photos
            </ReactRouter.Link>

            <ReactRouter.Link className='col-lg-2 col-md-2 col-sm-2 col-xs-2 nav-link text-uppercase' role="navigation" to='/contact'>
              Contact
            </ReactRouter.Link>

          </div>
          <div id='main-call-us'>
            <p className="text-center text-uppercase">Call us Now! 801-432-057</p>
          </div>
        </nav>
        <div id="content" className='container-fluid'>
          <ReactRouter.RouteHandler />
          <footer className='text-center'>
            <p>&copy; 2012 Diesel Pirate, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
          </footer>
        </div>
      </div>

module.exports = App