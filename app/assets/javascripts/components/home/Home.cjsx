React = require('react')
ReactRouter = require('react-router')
ReactCSSTransitionGroup = require('react-addons-css-transition-group')
Carousel = require('./Carousel.cjsx')
InfoCard = require('./InfoCard.cjsx')
Featurette = require('./Featurette.cjsx')

Home = React.createClass
  render: ->
    <div>
      <ReactCSSTransitionGroup transitionName="fade" transitionAppear={true} transitionAppearTimeout={500} transitionLeaveTimeout={300}>
        <Carousel />

        <div id='home-info-cards' className='texture-1 featurette-container'>
          <div className='container'>
            <div className="row">
              <div className="col-lg-4">
                <InfoCard imageUrl={'/assets/th_th_donavon1.jpg'} title={'Mobile Detailing'} description={'Diesel Pirate uses our elite power washing system to blow away all the dirt and grim. Do you have an old decal you need removed from the truck? That’s our specialty! We then take the time to gently detail the exterior and interior of the truck. We service new and used trucks.'} />
              </div>
              <div className="col-lg-4">
                <InfoCard imageUrl={'/assets/th_james1.jpg'} title={'Power Washing'} description={'If it can be power washed we can do it–including home, airplane, construction, and driveways. We are licensed and insured and will work with your schedule and come to you 24 hours a day'} />
              </div>
              <div className="col-lg-4">
                <InfoCard imageUrl={'/assets/th_jeremiah1.jpg'} title={'Sand Blasting'} description={'Whatever you get dirty we can get clean. Local owned and operated right in the Salt Lake Valley.'} />
              </div>
            </div>
          </div>
        </div>

        <Featurette
          backgroundClass={''}
          header={"Oh yeah, it's that good. "}
          subtext={"See for yourself."}
          description={'We are licensed and insured and will work with your schedule and come to you 24 hours a day.'}
          imageUrl={'http://dieselpirate.com/wp-content/uploads/2013/06/DSCF1165-300x300.jpg'}
          justification={'right'} />

        <Featurette
          backgroundClass={''}
          header={'Eco-Friendly'}
          subtext={" No harmful chemicals here!"}
          description={'We only use bio friendly, biodegradable, green soaps and liquids so your truck gets clean without making the environment dirty.'}
          imageUrl={'http://dieselpirate.com/wp-content/uploads/2013/07/utah-power-washing-300x300.jpeg'}
          justification={'left'} />

        <Featurette
          backgroundClass={''}
          header={"We come to you "}
          subtext={"Servicing all these locations"}
          description={'Salt Lake, West Valley, Taylorsville, Magna, Murray, Sandy, Draper, West Jordan, South Jordan.'}
          imageUrl={'http://dieselpirate.com/wp-content/uploads/2013/06/DSCF1119-300x300.jpg'}
          justification={'right'} />


      </ReactCSSTransitionGroup>
    </div>

module.exports = Home