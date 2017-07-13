parallastic = require './parallastic'

document.addEventListener 'DOMContentLoaded', ->
  p = parallastic.parallastic(window)

  # Intro section

  p.addProportional document.getElementById('bg-intro-particles1'),
    0, 100, 'transform', 0, -5,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
  # p.addProportional document.getElementById('bg-intro-particles1'),
  #   0, 100, 'backgroundPosition', 50, -100,
  #     prefix: 'center '
  #     suffix: '%'
  #     units: '%'
  p.addProportional document.getElementById('intro-particle-1'),
    0, 100, 'transform', 0, -400,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
  p.addProportional document.getElementById('intro-particle-2'),
    0, 100, 'transform', 0, -250,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
  p.addProportional document.getElementById('intro-particle-3'),
    0, 100, 'transform', 0, -400,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
  p.addProportional document.getElementById('intro-particle-4'),
    0, 100, 'transform', 0, -100,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
  p.addProportional document.getElementById('layer-1'),
    0, 100, 'transform', 0, 17,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
  p.addProportional document.getElementById('layer-2'),
    0, 100, 'transform', 0, 27,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
  p.addProportional document.getElementById('layer-3'),
    0, 100, 'transform', 0, 35,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'


  # Team section

  p.addProportional document.getElementById('team-particle-3'),
    0, 100, 'transform', 50, 200,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
      ref: document.getElementById('team')
  p.addProportional document.getElementById('team-particle-4'),
    0, 100, 'transform', 100, 400,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
      ref: document.getElementById('team')
  p.addProportional document.getElementById('team-coin-1'),
    0, 100, 'transform', 200, -400,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
      ref: document.getElementById('team')
  p.addProportional document.getElementById('team-coin-2'),
    0, 100, 'transform', 0, -300,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
      ref: document.getElementById('team')
  p.addProportional document.getElementById('team-coin-3'),
    0, 100, 'transform', 100, -200,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
      ref: document.getElementById('team')
  p.addProportional document.getElementById('team-coin-4'),
    0, 100, 'transform', 0, -100,
      prefix: 'translate3d(0,'
      suffix: '%,0)'
      units: '%'
      ref: document.getElementById('team')
