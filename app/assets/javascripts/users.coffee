# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
myApp = new Framework7()
$$ = Dom7

$$('tab active').on('click', ()->
  myApp.showTab('#tab1')
)

$$('tab').on('click', ()->
  myApp.showTab('#tab2')
)
