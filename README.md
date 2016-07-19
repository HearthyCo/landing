# Easy-Dev
A simple scaffold to kickstart your web development projects.
Powered by Compass, Coffeescript, Jade, and Browsersync.

---

## Pre-requisites

To use this scaffold, you need to install:
  * npm
  * compass
  * gulp

Before running it for the first time, do a `npm install` to fetch all the
dependencies.

## Usage

Just run `gulp` and a browser window with your page will open, and auto-reload
with any changes. Source maps will get generated too, for easy debugging.

Your code should go on the following folders:
  * `src/pages/` for your Jade templates
  * `src/styles/` for your SASS stylesheets
  * `src/scripts/` for your Coffeescript scripts

A entrypoint sample file is already present on each of them.

If you just want to generate the distributable files, you can run `gulp build`
instead.

Happy coding!

## Deployment

This repo is already configured to work with Dokku (or Heroku), so if
you use it as a scaffold, deploying should be already configured.
Gitlab CI is ready to use too.
