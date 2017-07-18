document.addEventListener 'DOMContentLoaded', ->
  whitepaper = document.getElementById 'whitepaper'
  whitepaper.addEventListener 'submit', (evt) ->
    evt.preventDefault()
    fetch whitepaper.getAttribute('action'),
      method: 'POST'
      body: new FormData whitepaper
    .then ->
      whitepaper.classList.add 'submitted'