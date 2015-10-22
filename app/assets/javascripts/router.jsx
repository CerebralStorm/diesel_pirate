var routes = (
  <ReactRouter.Route path='/' handler={App}>
    <ReactRouter.DefaultRoute handler={Home}/>
    <ReactRouter.Route path='/services' handler={ServicesIndex}/>
    <ReactRouter.Route path='/contact' handler={ContactIndex}/>
  </ReactRouter.Route>
);

$(document).on('ready page:load', function() {
  ReactRouter.run(routes, function(Handler) {
    React.render(<Handler />, document.getElementById('container'));
  });
});
