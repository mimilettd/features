$ ->
  $("input:radio").change(->
    if $(this).prop("checked", true)
      price = "<b>#{$(this).data('price')}</b>"
      dimensions = "<b>#{$(this).data('dimensions')}</b>"
      $("#product_details").html("#{price}#{dimensions}")
  )

  $("#add_to_cart").click((e)->
    e.preventDefault()

    $input = $("input:radio:checked")
    $label = $("label[for='#{$input.attr("id")}']")
    $form = $('#new_order')
    product_id = $input.val()
    $hidden_input = "<input type='hidden' name='#{$input.attr('name')}' value='#{product_id}' />"

    $form.prepend($hidden_input)

    $("#cart").append("#{$label.text()}<br/>")

    $.each($form.find("input:hidden"), (index, value) ->
      $(this).attr('name', $(this).attr('name').replace(/\d+/g, index))
    )
  )
