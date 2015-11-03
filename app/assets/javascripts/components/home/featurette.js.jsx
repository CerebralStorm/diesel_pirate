var Featurette = React.createClass({
  leftClass: function() {
    if(this.props.justification == 'left') {
      return 'col-md-7 col-md-push-5';
    } else {
      return 'col-md-7';
    }
  },
  rightClass: function() {
    if(this.props.justification == 'left') {
      return 'col-md-5 col-md-pull-7';
    } else {
      return 'col-md-5';
    }
  },
  render: function() {
    return (
      <div className={this.props.backgroundClass + ' featurette-container'}>
        <div className='container'>
          <div className="row">
            <div className={this.leftClass()}>
              <FeaturetteDescription header={this.props.header} subtext={this.props.subtext} description={this.props.description} />
            </div>
            <div className={this.rightClass()}>
              <FeaturetteImage imageUrl={this.props.imageUrl} />
            </div>
          </div>
        </div>
      </div>
    );
  }
});

