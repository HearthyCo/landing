document.addEventListener 'DOMContentLoaded', ->
  acceptButton = document.getElementById 'accept-button'
  acceptZoho = document.getElementById 'accept-zoho'
  acceptButton.addEventListener 'click', (evt) ->
    evt.preventDefault()
    fetch acceptZoho.getAttribute('action'),
      method: 'POST'
      body: new FormData acceptZoho
    .then (req)->
      if req.status isnt 200
        throw new Error('Unexpected status')
      window.location.href = '/greetings'