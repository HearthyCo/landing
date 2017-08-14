parallastic = require 'parallastic'

document.addEventListener 'DOMContentLoaded', ->
  if  window.innerWidth > 567
    p = parallastic(window)

    contactSlack = document.getElementById 'contact-slack'
    window.addEventListener 'scroll', (e) ->
      console.log('>>', contactSlack, window.scrollTop)
      if window.scrollY
        contactSlack.classList.add 'show'
      else
        contactSlack.classList.remove 'show'

    issue1 = document.querySelector('#issue-1 .split')
    p.addToggler issue1, 'ease-in', 0.6, true # for reverse, (remove classname)
    p.addToggler issue1, 'ease-out', 1.1, true

    issue2 = document.querySelector('#issue-2 .split')
    p.addToggler issue2, 'ease-in', 0.5, true # for reverse, (remove classname)
    p.addToggler issue2, 'ease-out', 1.1, true

    issue3 = document.querySelector('#issue-3 .split')
    p.addToggler issue3, 'ease-in', 0.5, true # for reverse, (remove classname)
    p.addToggler issue3, 'ease-out', 1.1, true

    # issue4 = document.querySelector('#issue-4 .split')
    # p.addToggler issue4, 'ease-in', 0.5, true
    # p.addToggler issue4, 'ease-out', 1.1, true

    issue5 = document.querySelector('#issue-5 .split')
    p.addToggler issue5, 'ease-in', 0.5, true # for reverse, (remove classname)
    p.addToggler issue5, 'ease-out', 1.1, true

    p.addToggler document.getElementById('how-image'), 'play', 0.25, true

    p.addToggler document.querySelector('#hearthy-bot img'), 'appear', 0.2, true
    p.addToggler document.querySelector('#hearthy-app img'), 'appear', 0.2, true

    p.addToggler document.getElementById('roadmap-1'), 'appear', 0.25, true
    p.addToggler document.getElementById('roadmap-2'), 'appear', 0.35, true
    p.addToggler document.getElementById('roadmap-3'), 'appear', 0.25, true
    p.addToggler document.getElementById('roadmap-4'), 'appear', 0.35, true
