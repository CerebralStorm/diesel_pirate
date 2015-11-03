var ContactIndex = React.createClass({
  render: function() {
    return (
      <div>
        <ReactCSSTransitionGroup transitionName="fade" transitionAppear={true} transitionAppearTimeout={500} transitionLeaveTimeout={300}>
          <h1>Contact Us</h1>
          <div className="container">
          <div className="row">
            <div className="col-md-12">
            <div className="alert alert-success"><strong><span className="glyphicon glyphicon-send"></span> Success! Message sent. We will be contacting you shortly</strong></div>
              <div className="alert alert-danger"><span className="glyphicon glyphicon-alert"></span><strong> Error! Please check the inputs.</strong></div>
            </div>
            <ContactForm />
            <hr className="featurette-divider hidden-lg" />
            <div className="col-lg-5 col-md-push-1">
              <iframe width="450" height="300" frameBorder="0" src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJH7SZsSaEUocRs2hBwd8tBF4&key=AIzaSyDIFYLsUtRmV7AB15VwyxNDKDMkZ-5XINU" allowFullScreen></iframe>
              <address>
                <h3>Office Location</h3>
                <p className="lead">
                  <a href="https://www.google.com/maps/preview?ie=UTF-8&q=The+Pentagon&fb=1&gl=us&hq=1400+Defense+Pentagon+Washington,+DC+20301-1400&cid=12647181945379443503&ei=qmYfU4H8LoL2oATa0IHIBg&ved=0CKwBEPwSMAo&safe=on">
                    <span>13118 South 2665</span>
                    <br />
                    <span>West Riverton, Utah 84065</span>
                  </a>
                  <br />
                  <span>Phone: 801-432-0571</span>
                  <span>Email: info@dieselpirate.com</span>
                </p>
              </address>
            </div>
          </div>

          </div>
        </ReactCSSTransitionGroup>
      </div>
    );
  }
});