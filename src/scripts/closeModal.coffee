document.addEventListener 'DOMContentLoaded', ->
  acceptButton = document.getElementById('accept-button')
  closeModal = (e) ->
    document.getElementById('presale-form').classList.remove 'blocked'
    document.getElementById('modal-accept').classList.remove 'active'
    e.preventDefault()

  acceptButton.addEventListener 'click', closeModal
  acceptButton.addEventListener 'touchstart', closeModal
