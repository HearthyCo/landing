document.addEventListener 'DOMContentLoaded', ->
  joinButton = document.getElementById('join-whitelist')
  return unless joinButton
  acceptButton = document.getElementById('accept-button')
  cancelButton = document.getElementById('cancel-button')
  modalAccept = document.getElementById('modal-accept')
  session = document.getElementById 'session'
  toggleModal = (e) ->
    if modalAccept.classList.contains 'active'
      modalAccept.classList.remove 'active'
    else
      modalAccept.classList.add 'active'
    e?.preventDefault()

  acceptButton.addEventListener 'click', toggleModal
  acceptButton.addEventListener 'touchstart', toggleModal

  cancelButton.addEventListener 'click', toggleModal
  cancelButton.addEventListener 'touchstart', toggleModal

  joinButton.addEventListener 'click', (evt) ->
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

