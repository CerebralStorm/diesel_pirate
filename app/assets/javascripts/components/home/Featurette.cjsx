React = require('react')
FeaturetteDescription = require('./FeaturetteDescription.cjsx')
FeaturetteImage = require('./FeaturetteImage.cjsx')

Featurette = React.createClass
  leftClass: ->
    if(this.props.justification == 'left')
      'col-md-7 col-md-push-5';
    else
      'col-md-7'

  rightClass: ->
    if(this.props.justification == 'left')
      'col-md-5 col-md-pull-7';
    else
      'col-md-5'

  render: ->
    <div className={this.props.backgroundClass + ' featurette-container'}>
      <div className='container'>
        <div className="row">
          <div className={this.leftClass()}>
            <FeaturetteDescription header={this.props.header} subtext={this.props.subtext} description={this.props.description} />
          </div>
          <div className={this.rightClass()}>
            <FeaturetteImage imageUrl={this.props.imageUrl} />
          </div>
        </div>
      </div>
    </div>

module.exports = Featurette