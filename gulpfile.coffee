'use strict'

# Dependencies
autoprefixer = require 'gulp-autoprefixer'
browserify = require 'browserify'
browserSync = require('browser-sync').create()
buffer = require 'vinyl-buffer'
coffeelint = require 'gulp-coffeelint'
compass = require 'gulp-compass'
del = require 'del'
gulp = require 'gulp'
pug = require 'gulp-pug'
minifyCss = require 'gulp-clean-css'
rename = require 'gulp-rename'
runSequence = require 'run-sequence'
source = require 'vinyl-source-stream'
sourcemaps = require 'gulp-sourcemaps'
uglify = require 'gulp-uglify'

# Browsersync
browserSync.use
  plugin: ->
  hooks:
    'client:js': '
      /* Close tab when server dies */
      (function (bs) {
        bs.socket.on("disconnect", function (client) { window.close(); });
      })(___browserSync___);'

gulp.task 'browser-sync', ->
  browserSync.init
    server:
      baseDir: './dist/www/'
      serveStaticOptions:
        extensions: ['html']

# Compass
gulp.task 'compass', ->
  gulp.src 'src/styles/style.sass'
  .pipe compass
    css: 'dist/www'
    sass: 'src/styles'
    relative: false
    sourcemap: true
  .on 'error', (err) ->
    console.log err
    @emit 'end'
  .pipe sourcemaps.init loadMaps: true
  .pipe autoprefixer('last 3 version', 'safari 5', 'ie 9',
      'opera 12.1', 'ios 6', 'android 4')
  .pipe minifyCss()
  .pipe sourcemaps.write './'
  .pipe gulp.dest 'dist/www/'
  .pipe browserSync.stream()

# Coffee
gulp.task 'browserify', ->
  browserify
    entries: ['./src/scripts/main.coffee']
    transform: ['coffeeify', 'envify']
    extensions: ['.coffee']
    paths: ['./src/scripts', './node_modules']
    debug: true
  .bundle()
  .on 'error', (err) ->
    console.log err.message
    @emit 'end'
  .pipe source 'main.js'
  .pipe buffer()
  .pipe sourcemaps.init
    loadMaps: true
    debug: true
  .pipe uglify
    debug: true
    options:
      sourceMap: true
  .pipe sourcemaps.write './' #, addComment: false
  .pipe gulp.dest 'dist/www/'
  .pipe browserSync.stream()

gulp.task 'lint', ->
  gulp.src 'src/scripts/**/*.coffee'
  .pipe coffeelint
    undefined_variables:
      module: 'coffeelint-undefined-variables'
      level: 'warn'
      globals: [
        'window', 'console', 'require', 'module',
        'process', 'config', 'document'
      ]
    variable_scope:
      module: 'coffeelint-variable-scope'
      level: 'warn'
  .pipe coffeelint.reporter()

gulp.task 'coffee', ['lint', 'browserify']

# Pug (ie: Jade)
gulp.task 'pug', ->
  gulp.src 'src/pages/**/*.pug'
  .pipe pug
    locals:
      tag: '?' + Math.round(Date.now() / 1000),
      urlSubcribe: process.env.URL_MAILCHIMP_SUBSCRIBE
      urlZoho: process.env.URL_ZOHO || ''
  .on 'error', (err) ->
    console.log err.message
    @emit 'end'
  .pipe gulp.dest 'dist/www/'
  .pipe browserSync.stream()

# Images
gulp.task 'assets', ->
  gulp.src 'assets/**/*'
  .pipe gulp.dest 'dist/www/assets/'
  .pipe browserSync.stream()

# Watch
gulp.task 'watch', ->
  gulp.watch 'src/styles/**/*', ['compass']
  gulp.watch 'src/pages/**/*', ['pug']
  gulp.watch 'src/components/**/*', ['pug']
  gulp.watch 'src/scripts/**/*', ['coffee']
  gulp.watch 'assets/**/*', ['assets']

# User tasks
gulp.task 'clean', -> del 'dist/www'
gulp.task 'build', ['compass', 'coffee', 'pug', 'assets']
gulp.task 'dev', -> runSequence 'build', ['watch', 'browser-sync']
gulp.task 'default', -> runSequence 'clean', 'dev'
