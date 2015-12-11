React = require('react')
ReactRouter = require('react-router')

Carousel = React.createClass
  getInitialState: ->
    { index: 0, images: [] }

  handleSubmit: (e) ->
    e.preventDefault()
    url = '/api/v1/messages'
    if (this.props.messageId)
      url += ('/' + this.props.messageId)
    method = this.props.messageId ? 'put' : 'post';
    $.ajax ((url) ->
      dataType: 'json',
      type: method,
      data: { message: { name: this.state.name, email: this.state.email, body: this.state.body } },
      success: (data) ->
        if (this.props.message)
          this.props.message.setState({ editing: false, name: this.state.name, email: this.state.email, body: this.state.body });
        else
          this.transitionTo('/');
    ).bind(this)

  nextSlide: (e) ->
    if (e.target.id == 'message_name')
      this.setState({ name: e.target.value });
    if (e.target.id == 'message_email')
      this.setState({ email: e.target.value });
    if (e.target.id == 'message_body')
      this.setState({ body: e.target.value });

  previousSlide: (e) ->
    if (e.target.id == 'message_name')
      this.setState({ name: e.target.value });
    if (e.target.id == 'message_email')
      this.setState({ email: e.target.value });
    if (e.target.id == 'message_body')
      this.setState({ body: e.target.value });

  render: ->
    <div id="home-carousel" className="carousel slide" data-ride="carousel">
      <ol className="carousel-indicators">
        <li data-target="#home-carousel" data-slide-to="0" className="active"></li>
        <li data-target="#home-carousel" data-slide-to="1"></li>
        <li data-target="#home-carousel" data-slide-to="2"></li>
      </ol>
      <div className="carousel-inner" role="listbox">
        <div className="item active">
          <div className="wrapper">
             <img src="/images/truck-wash1.png" width='100%;' className="img-responsive" alt="Responsive image" />
          </div>
          <div className="container">
            <div className="carousel-caption">
              <h1>Diesel Pirate</h1>
              <p>You name it, we clean it. Call us or schedule an appointment today! Phone: 801-432-057</p>
              <ReactRouter.Link to='/contact'>
                <p><span className="btn btn-lg btn-primary" href="#" role="button">Schedule Me!</span></p>
              </ReactRouter.Link>
            </div>
          </div>
        </div>
      </div>
      <a className="left carousel-control" href="#home-carousel" role="button" data-slide="prev">
        <span className="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span className="sr-only">Previous</span>
      </a>
      <a className="right carousel-control" href="#home-carousel" role="button" data-slide="next">
        <span className="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span className="sr-only">Next</span>
      </a>
    </div>

module.exports = Carousel