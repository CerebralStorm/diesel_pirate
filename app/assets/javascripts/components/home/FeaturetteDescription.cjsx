React = require('react')

FeaturetteDescription = React.createClass
  render: ->
    <div>
      <h2 className="featurette-heading">{this.props.header}<span className="text-muted">{this.props.subtext}</span></h2>
      <p className="lead">{this.props.description}</p>
    </div>

module.exports = FeaturetteDescription
