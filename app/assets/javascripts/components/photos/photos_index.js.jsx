var PhotosIndex = React.createClass({
  render: function() {
    return (
      <div>
        <ReactCSSTransitionGroup transitionName="fade" transitionAppear={true} transitionAppearTimeout={500} transitionLeaveTimeout={300}>
          <h1>Photos</h1>
        </ReactCSSTransitionGroup>
      </div>
    );
  }
});