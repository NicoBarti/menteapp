const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',

    // esta opcion es para que funcione waypoint.jquery
    'window.jQuery': 'jquery',

    Popper: ['popper.js', 'default']
  })
)

module.exports = environment
