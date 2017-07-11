parallastic = require './parallastic'

document.addEventListener 'DOMContentLoaded', ->
  p = parallastic.parallastic(window)

  p.addProportional document.getElementById('bg-particles1'),
    0, 100, 'backgroundPosition', 50, -200,
      prefix: 'center '
      suffix: '%'
      units: '%'
  p.addProportional document.getElementById('particle-1'),
    0, 100, 'transform', 0, -50,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
  p.addProportional document.getElementById('particle-2'),
    0, 100, 'transform', 0, -100,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
  p.addProportional document.getElementById('particle-3'),
    0, 100, 'transform', 0, -200,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
  p.addProportional document.getElementById('particle-4'),
    0, 100, 'transform', 0, -400,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
  p.addProportional document.getElementById('layer-1'),
    0, 100, 'transform', 0, 17,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
  p.addProportional document.getElementById('layer-2'),
    0, 100, 'transform', 0, 27,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
  p.addProportional document.getElementById('layer-3'),
    0, 100, 'transform', 0, 35,
      prefix: 'translateY('
      suffix: '%)'
      units: '%'
