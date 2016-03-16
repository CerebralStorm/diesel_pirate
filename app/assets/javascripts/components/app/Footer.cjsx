React = require('react')
ReactRouter = require('react-router')

Footer = React.createClass
  render: ->
    <footer className='text-center'>
      <p>&copy; 2012 Diesel Pirate, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>

module.exports = Footer