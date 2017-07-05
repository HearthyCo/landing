parallastic = require './parallastic'

document.addEventListener 'DOMContentLoaded', ->
  p = parallastic.parallastic(window)

  # p.addToggler document.getElementById('example'), 'active', 0.40

  # p.addProportional document.querySelector('.proof'), 0, 100, 'transform', 100, 600,
  #   prefix: 'translateY('
  #   suffix: 'px)'
  #   units: '%'

  # p.addProportional document.getElementById('bg'), 0, 100, 'backgroundPosition', 100, 470,
  #   prefix: 'center '
  #   suffix: '%'
  #   units: '%'
