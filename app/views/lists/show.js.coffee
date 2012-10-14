$(".span9").empty()
$(".span9").html "<%= escape_javascript(render partial: "show" ) %>"+"<%= escape_javascript( render partial: 'shared/gon')%>"

histObj = {foo: "bar"}
history.pushState histObj, "List", "<%= escape_javascript(list_path)%>"

# Need to find a way to include these functions from the other files
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
$(".toggle_user").click ->
    buttontoggle this, ".toggled_user"

$(".toggle_list").click ->
    buttontoggle this, ".toggled_list"
      #Autocomplete
$("[id*='autocomplete']").autocomplete(
    source: (request, response) ->
      response $.ui.autocomplete.filter( gon["autocomplete_#{$(this.element).attr("id").substring(13)}"], request.term)
    autoFocus: true
    minLength: 0
    select: (event, ui) ->
      event.preventDefault()
      $(this).val ui.item["label"]
      $("input[id$='#{$(this).attr("complete")}']", $(this).parents('fieldset') ).val ui.item["value"]
    focus: (event, ui) ->
      event.preventDefault()
      $('#autocomplete').val ui.item["label"]
      $("input[id$='#{$(this).attr("complete")}']", $(this).parents('fieldset') ).val ui.item["value"]
    ).focus ->
      if @value is ""
        $(this).autocomplete "search", "" 
      else
        $(this).autocomplete "search", @value