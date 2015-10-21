var FeaturetteDescription = React.createClass({
  render: function() {
    return (
      <div>
        <h2 className="featurette-heading">{this.props.header}<span className="text-muted">{this.props.subtext}</span></h2>
        <p className="lead">{this.props.description}</p>
      </div>
    );
  }
});
