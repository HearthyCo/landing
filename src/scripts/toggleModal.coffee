exports = module.exports = (e) ->
  modalAccept = document.getElementById('modal-accept')
  if modalAccept.classList.contains 'active'
    modalAccept.classList.remove 'active'
  else
    modalAccept.classList.add 'active'
  e?.preventDefault()
