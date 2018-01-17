$ ->
  $(document).ready ->
     $('#orders').hide()

  $("#order_list").click((e)->
    e.preventDefault()
    $("#orders").fadeToggle('fast')
  )

  $(".online").click((e) ->
    e.preventDefault()
    $('tr').show().filter(':not(.online, .header)').hide()
  )

  $(".cx").click((e) ->
    e.preventDefault()
    $('tr').show().filter(':not(.cx, .header)').hide()
  )

  $(".retail").click((e) ->
    e.preventDefault()
    $('tr').show().filter(':not(.retail, .header)').hide()
  )

