document.addEventListener 'DOMContentLoaded', ->
  copyButton = document.getElementById('copy-button')
  copyClipboard = ->
    copyText = document.getElementById('code')
    copyText.select()
    document.execCommand 'Copy'
    alert 'Copied the text: ' + copyText.value
    return
  copyButton.addEventListener 'touchstart', copyClipboard
  copyButton.addEventListener 'click', copyClipboard
