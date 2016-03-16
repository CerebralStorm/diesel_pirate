React = require('react')
ReactRouter = require('react-router')
Link = require('react-router').Link
Footer = require('./Footer.cjsx')

App = React.createClass
  render: ->
    <div>
      <nav id='main-nav' className="navbar navbar-default navbar-fixed-top no-pad no-margin">
        <div className='row no-pad no-margin' role="navigation">

          <Link id='brand-logo' className='col-lg-4 col-md-4 col-sm-4 col-xs-4' to='/'>
            <img src="/assets/brand-logo.png" className='img-responsive' alt='brand logo' />
          </Link>

          <Link className='col-lg-2 col-md-2 col-sm-2 col-xs-2 nav-link text-uppercase' role="navigation" to='/'>
            Home
          </Link>

          <Link className='col-lg-2 col-md-2 col-sm-2 col-xs-2 nav-link text-uppercase' role="navigation" to='/services'>
            Services
          </Link>

          <Link className='col-lg-2 col-md-2 col-sm-2 col-xs-2 nav-link text-uppercase' role="navigation" to='/photos'>
            Photos
          </Link>

          <Link className='col-lg-2 col-md-2 col-sm-2 col-xs-2 nav-link text-uppercase' role="navigation" to='/contact'>
            Contact
          </Link>

        </div>
        <div id='main-call-us'>
          <p className="text-center text-uppercase">Call us Now! 801-432-057</p>
        </div>
      </nav>
      {this.props.children}

      <Footer />
    </div>

module.exports = App