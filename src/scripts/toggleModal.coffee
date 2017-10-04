document.addEventListener 'DOMContentLoaded', ->
  acceptButton = document.getElementById('accept-button')
  joinButton = document.getElementById('join-whitelist')
  cancelButton = document.getElementById('cancel-button')
  modalAccept = document.getElementById('modal-accept')
  toggleModal = (e) ->
    if modalAccept.classList.contains 'active'
      modalAccept.classList.remove 'active'
    else
      modalAccept.classList.add 'active'
    e.preventDefault()

  acceptButton.addEventListener 'click', toggleModal
  acceptButton.addEventListener 'touchstart', toggleModal
  joinButton.addEventListener 'click', toggleModal
  joinButton.addEventListener 'touchstart', toggleModal
  cancelButton.addEventListener 'click', toggleModal
  cancelButton.addEventListener 'touchstart', toggleModal
