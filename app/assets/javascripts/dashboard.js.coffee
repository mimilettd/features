$ ->
  $(document).ready ->
     $('#orders').hide()

  $("#order_list").click((e)->
    e.preventDefault()
    $("#orders").fadeToggle('fast')
  )
