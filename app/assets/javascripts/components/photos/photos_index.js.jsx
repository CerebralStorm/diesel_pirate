var PhotosIndex = React.createClass({
  getInitialState: function() {
    return {
      photos: [
        'http://dieselpirate.com/wp-content/uploads/2013/06/Interior-Detailing-800x533.jpg',
        'http://dieselpirate.com/wp-content/uploads/2013/06/Exterior-truck-wash-800x600.jpg',
        'http://dieselpirate.com/wp-content/uploads/2013/06/Diesel-PIrate-Gallery-01-800x533.jpg',
        'http://dieselpirate.com/wp-content/uploads/2013/07/utah-power-washing-800x600.jpeg',
        'http://dieselpirate.com/wp-content/uploads/2013/06/DSCF1168.jpg',
        'http://dieselpirate.com/wp-content/uploads/2013/06/DSCF1166.jpg'
      ]
    };
  },
  render: function() {
    var photos = this.state.photos.map(function (imageUrl, index) {
      return (
        <div key={index} className='col-sm-6 pad-img'>
          <FeaturetteImage imageUrl={imageUrl} />
        </div>
      )
    }.bind(this));
    return (
      <div>
        <ReactCSSTransitionGroup transitionName="fade" transitionAppear={true} transitionAppearTimeout={500} transitionLeaveTimeout={300}>
          <h1>Photos</h1>
          <div className='row'>
            {photos}
          </div>
        </ReactCSSTransitionGroup>
        <div className='clearfix'></div>
      </div>
    );
  }
});