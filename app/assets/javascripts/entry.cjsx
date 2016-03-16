React = require('react')
ReactDOM = require('react-dom')
ReactRouter = require("react-router")
Router = ReactRouter.Router
Route = ReactRouter.Route
browserHistory = ReactRouter.browserHistory

App = require('./components/app/App.cjsx')
NoMatch = require('./components/app/NoMatch.cjsx')
Home = require('./components/home/Home.cjsx')
ServicesIndex = require('./components/services/ServicesIndex.cjsx')
ContactIndex = require('./components/contact/ContactIndex.cjsx')
PhotosIndex = require('./components/photos/PhotosIndex.cjsx')

main = ->
  $(document).ready ->
    Window.CSRFToken = $('meta[name="csrf-token"]')[0].content

    ReactDOM.render((
      <Router history={browserHistory}>
        <Route component={App}>
          <Route path="/" component={Home} />
          <Route path="/services" component={ServicesIndex} />
          <Route path="/contact" component={ContactIndex} />
          <Route path="/photos" component={PhotosIndex} />
          <Route path="*" component={NoMatch} />
        </Route>
      </Router>
    ), document.getElementById('react-container'))

main()