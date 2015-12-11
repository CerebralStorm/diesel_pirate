React = require('react')
ReactRouter = require('react-router')

InfoCard = React.createClass
  render: ->
    <div className='info-card'>
      <img className="img-circle img-responsive" src={this.props.imageUrl} alt="Generic placeholder image" />
      <h2>{this.props.title}</h2>
      <p>{this.props.description}</p>
      <ReactRouter.Link to='/services'>
        <p><span className="btn btn-default" href="#" role="button">More details &raquo;</span></p>
      </ReactRouter.Link>
    </div>

module.exports = InfoCard