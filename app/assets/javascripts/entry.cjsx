React = require('react')
ReactDOM = require('react-dom')
App = require('./components/app/App.cjsx')
Home = require('./components/home/Home.cjsx')
ServicesIndex = require('./components/services/ServicesIndex.cjsx')
ContactIndex = require('./components/contact/ContactIndex.cjsx')
PhotosIndex = require('./components/photos/PhotosIndex.cjsx')
ReactRouter = require("react-router")

routes = (
  <ReactRouter.Route path='/' handler={App}>
    <ReactRouter.DefaultRoute handler={Home}/>
    <ReactRouter.Route path='/services' handler={ServicesIndex}/>
    <ReactRouter.Route path='/contact' handler={ContactIndex}/>
    <ReactRouter.Route path='/photos' handler={PhotosIndex}/>
  </ReactRouter.Route>
);

main = ->
  $(document).ready ->
    container = document.getElementById('react-container')
    if container
      ReactRouter.run routes, (Handler) ->
        ReactDOM.render(<Handler />, document.getElementById('react-container'))

main()
