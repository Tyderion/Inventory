$ ->
  buttontoggle = (element, name) ->
    $(".togglebutton", element).css "border", "5px solid transparent"
    if $(name).is(":visible")
      $(".togglebutton", element).css "border-left", "5px solid"
      $(".togglebutton", element).css "margin-top", "5px"
      $(".togglebutton", element).css "margin-right", "0px"
    else
      $(".togglebutton", element).css "border-top", "5px solid"
      $(".togglebutton", element).css "margin-top", "10px"
      $(".togglebutton", element).css "margin-right", "2px"
    $(name).toggle()
  $(".span9").on "click", ".toggle_user", (event) ->
    buttontoggle this, ".toggled_user"
  $(".span9").on "click", ".toggle_list", (event) ->
      buttontoggle this, ".toggled_list"