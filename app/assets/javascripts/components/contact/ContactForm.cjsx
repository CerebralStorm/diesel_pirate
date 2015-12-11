React = require('react')
ReactRouter = require('react-router')

ContactForm = React.createClass
  mixins: [ ReactRouter.Navigation ],
  getInitialState: ->
    { name: '', email: '', body: '' };

  handleSubmit: (e) ->
    e.preventDefault();
    url = '/api/v1/messages';
    if (this.props.messageId)
      url += ('/' + this.props.messageId)
    method = this.props.messageId ? 'put' : 'post';
    $.ajax((url) ->
      dataType: 'json',
      type: method,
      data: { message: { name: this.state.name, email: this.state.email, body: this.state.body } },
      success: (data) ->
        if (this.props.message)
          this.props.message.setState({ editing: false, name: this.state.name, email: this.state.email, body: this.state.body });
        else
          this.transitionTo('/');
      ).bind(this)

  handleChange: (e) ->
    if (e.target.id == 'message_name')
      this.setState({ name: e.target.value });
    if (e.target.id == 'message_email')
      this.setState({ email: e.target.value });
    if (e.target.id == 'message_body')
      this.setState({ body: e.target.value });

  componentDidMount: ->
    if (this.props.name || this.props.body)
      this.setState({ name: this.props.name, body: this.props.body });
    this.updateFormValidation();

  componentDidUpdate: ->
    this.updateFormValidation();

  updateFormValidation: ->
    $(this.getDOMNode()).find('form:first').formValidation().on 'success.form.fv', (e) ->
      e.preventDefault();

  render: ->
    <form className="form" onSubmit={this.handleSubmit} data-fv-framework="bootstrap" data-fv-icon-valid="glyphicon glyphicon-ok" data-fv-icon-invalid="glyphicon glyphicon-remove" data-fv-icon-validating="glyphicon glyphicon-refresh fa-spin">
      <div className="col-lg-6">
        <div className="well well-sm"><strong><i className="fa fa-sun-o"></i> Indicates a Required Field</strong></div>
        <div className="form-group">
          <label for="message[name]">Your Name</label>
          <div className="input-group">
            <input type="text" className="form-control" name="message[name]" id="message_name" placeholder="Enter Name" required onChange={this.handleChange} value={this.state.name} data-fv-notempty="true" data-fv-stringlength="true" data-fv-stringlength-min="5" data-fv-stringlength-max="255" />
            <span className="input-group-addon"><i className="fa fa-sun-o"></i></span>
          </div>
        </div>
        <div className="form-group">
          <label for="message[email]">Your Email</label>
          <div className="input-group">
            <input type="email" className="form-control" id="message_email" name="message[email]" placeholder="Enter Email" onChange={this.handleChange} value={this.state.email} data-fv-notempty="true" data-fv-stringlength="true" data-fv-stringlength-min="5" data-fv-stringlength-max="255" />
            <span className="input-group-addon"><i className="fa fa-sun-o"></i></span>
          </div>
        </div>
        <div className="form-group">
          <label for="message[body]">Message</label>
          <div className="input-group">
            <textarea name="message[body]" id="message_body" className="form-control" rows="5" required onChange={this.handleChange} value={this.state.body} data-fv-notempty="true" data-fv-stringlength="true" data-fv-stringlength-min="5"></textarea>
            <span className="input-group-addon"><i className="fa fa-sun-o"></i></span>
          </div>
        </div>
        <input type="submit" className="btn btn-primary"/>
      </div>
    </form>

module.exports = ContactForm