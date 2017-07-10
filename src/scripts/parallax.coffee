parallastic = require './parallastic'

document.addEventListener 'DOMContentLoaded', ->
  p = parallastic.parallastic(window)

  p.addProportional document.getElementById('bg-particles1'),
    0, 100, 'backgroundPosition', 50, -150,
      prefix: 'center '
      suffix: '%'
      units: '%'

  p.addProportional document.getElementById('layer-1'),
    0, 100, 'transform', 0, 50,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
  p.addProportional document.getElementById('layer-2'),
    0, 100, 'transform', 0, 65,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
  p.addProportional document.getElementById('layer-3'),
    0, 100, 'transform', 0, 75,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'

  p.addToggler document.getElementById('explanation-title'), 'active', 0.9

  text1 = document.getElementById('text-1')
  p.addToggler text1, 'appear', 1
  p.addToggler text1, 'disappear', 1.8

  text2 = document.getElementById('text-2')
  p.addToggler text2, 'appear', 1
  p.addToggler text2, 'disappear', 1.8

  text3 = document.getElementById('text-3')
  p.addToggler text3, 'appear', 1
  p.addToggler text3, 'disappear', 1.8

  text4 = document.getElementById('text-4')
  p.addToggler text4, 'appear', 1
  p.addToggler text4, 'disappear', 1.8

  p.addProportional document.getElementById('how'),
    350, 550, 'transform', 100, 0,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
