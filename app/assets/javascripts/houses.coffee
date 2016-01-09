$(document).ready ->
  $("#new_house").on("ajax:success", (e, data, status, xhr) ->
    alert xhr.responseText
  )