parallastic = require './parallastic'

document.addEventListener 'DOMContentLoaded', ->

  p = parallastic.parallastic(window)

  issue1 = document.querySelector('#issue-1 .split')
  p.addToggler issue1, 'ease-in', 0.5, true # for reverse, (remove classname)
  p.addToggler issue1, 'ease-out', 1.2, true

  issue2 = document.querySelector('#issue-2 .split')
  p.addToggler issue2, 'ease-in', 0.5, true # for reverse, (remove classname)
  p.addToggler issue2, 'ease-out', 1.2, true

  issue3 = document.querySelector('#issue-3 .split')
  p.addToggler issue3, 'ease-in', 0.5, true # for reverse, (remove classname)
  p.addToggler issue3, 'ease-out', 1.2, true

  issue4 = document.querySelector('#issue-4 .split')
  p.addToggler issue4, 'ease-in', 0.5, true # for reverse, (remove classname)
  p.addToggler issue4, 'ease-out', 1.2, true

  issue5 = document.querySelector('#issue-5 .split')
  p.addToggler issue5, 'ease-in', 0.5, true # for reverse, (remove classname)
  p.addToggler issue5, 'ease-out', 1.2, true

  p.addToggler document.getElementById('how-image'), 'play', 0.35, true
