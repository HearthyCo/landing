# Load config depending on environment

if process.env.NODE_ENV is 'production'
  config = require 'config/production'
else
  config = require 'config/development'

module.exports = config
