var FeaturetteImage = React.createClass({
  render: function() {
    return (
      <img className="featurette-image img-responsive img-rounded center-block" src={this.props.imageUrl} alt={this.props.imageUrl} />
    );
  }
});