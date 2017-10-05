toggleModal = require './toggleModal'

document.addEventListener 'DOMContentLoaded', ->
  presalePage = document.querySelector('#presale-form.page')
  return unless presalePage

  whitelist = document.getElementById 'whitelist'
  modalAccept = document.getElementById('modal-accept')
  session = document.getElementById 'session'

  whitelist.addEventListener 'submit', (evt) ->
    evt.preventDefault()
    fetch whitelist.getAttribute('action'),
      method: 'POST'
      body: new FormData whitelist
      mode: 'cors'
    .then (req) ->
      if req.status isnt 200
        throw new Error('Unexpected status')
      req.json()
    .then (data) ->
      session.value = data.session
      toggleModal()

