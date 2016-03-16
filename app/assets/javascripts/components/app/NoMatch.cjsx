React = require('react')

NoMatch = React.createClass
  render: ->
    <div>
      <div className='well well-lg'>
        <h1 className='text-center'>I'm sorry, but I can't seem to find the page you are looking for.</h1>
      </div>
    </div>

module.exports = NoMatch
