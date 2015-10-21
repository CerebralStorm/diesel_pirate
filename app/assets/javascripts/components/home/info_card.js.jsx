var InfoCard = React.createClass({
  render: function() {
    return (
      <div>
        <img className="img-circle" src={this.props.imageUrl} alt="Generic placeholder image" width="140" />
        <h2>{this.props.title}</h2>
        <p>{this.props.description}</p>
        <p><a className="btn btn-default" href="#" role="button">More details &raquo;</a></p>
      </div>
    );
  }
});
