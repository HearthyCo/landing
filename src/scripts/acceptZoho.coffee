toggleModal = require './toggleModal'

document.addEventListener 'DOMContentLoaded', ->
  presale = document.querySelector('#presale-form.page')
  return unless presale
  acceptZoho = document.getElementById 'accept-zoho'

  acceptButton = document.getElementById('accept-button')
  acceptButton?.addEventListener 'click', (evt) ->
    console.log(evt)
    evt.preventDefault()
    fetch acceptZoho.getAttribute('action'),
      method: 'POST'
      body: new FormData acceptZoho
    .then (req)->
      if req.status isnt 200
        throw new Error('Unexpected status')
      window.location.href = '/greetings'

  cancelButton = document.getElementById('cancel-button')
  cancelButton.addEventListener 'click', toggleModal
