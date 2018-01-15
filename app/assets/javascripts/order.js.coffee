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
    product = $label[0].innerText.split('$')
    product_name = product[0].replace(/ /g, '-')
    product_price = product[1]

    if $('#' + product_name).length
      quantity = parseInt($('#' + product_name).attr("quantity")) + 1
      updated_product_price = parseInt($('#' + product_name + 'price').text()) + parseInt(product_price)
      $('#' + product_name).replaceWith("<span id='#{product_name}' quantity='#{quantity}'>(#{quantity}) #{product[0]}</span>")
      $('#' + product_name + 'price').replaceWith("<span id='#{product_name}price'>#{updated_product_price.toFixed(2)}</span>")
    else
      $("#cart").append("<span id='#{product_name}' quantity='1'>#{product[0]}</span> $<span id='#{product_name}price'>#{product_price}</span></br>")

    $.each($form.find("input:hidden"), (index, value) ->
      $(this).attr('name', $(this).attr('name').replace(/\d+/g, index))
    )
  )
