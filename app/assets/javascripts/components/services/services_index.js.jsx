var ServicesIndex = React.createClass({
  render: function() {
    return (
      <div>
        <ReactCSSTransitionGroup transitionName="fade" transitionAppear={true} transitionAppearTimeout={500} transitionLeaveTimeout={300}>
          <h1>Services</h1>
          <hr />
          <Featurette
            header={"Mobile Detailing "}
            subtext={""}
            description={'Diesel Pirate uses our elite power washing system to blow away all the dirt and grim. Do you have an old decal you need removed from the truck? That’s our specialty! We then take the time to gently detail the exterior and interior of the truck. We service new and used trucks.'}
            imageUrl={'http://dieselpirate.com/wp-content/uploads/2013/06/DSCF1165-300x300.jpg'}
            justification={'right'} />

          <hr />

          <Featurette
            header={'Power Washing'}
            subtext={''}
            description={'If it can be power washed we can do it–including home, airplane, construction, and driveways. We are licensed and insured and will work with your schedule and come to you 24 hours a day'}
            imageUrl={'http://dieselpirate.com/wp-content/uploads/2013/07/utah-power-washing-300x300.jpeg'}
            justification={'right'} />

          <hr />

          <Featurette
            header={"Sand Blasting"}
            subtext={''}
            description={'Whatever you get dirty we can get clean. Local owned and operated right in the Salt Lake Valley.'}
            imageUrl={'http://dieselpirate.com/wp-content/uploads/2013/06/DSCF1119-300x300.jpg'}
            justification={'right'} />
        </ReactCSSTransitionGroup>
      </div>
    );
  }
});
