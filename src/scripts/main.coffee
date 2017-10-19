# Your code below
require './parallax'
require './toggler'
# require './newsletter'
require './presaleForm'
require './acceptZoho'

# Save URL parameters to the localStorage so they are available at the form.
if window.location.search.length
  window.localStorage.setItem 'query', window.location.search
