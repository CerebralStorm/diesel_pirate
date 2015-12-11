React = require('react')

FeaturetteImage = React.createClass
  render: ->
    <img className="featurette-image img-responsive img-rounded center-block" src={this.props.imageUrl} alt={this.props.imageUrl} />

module.exports = FeaturetteImage