$(".span9").empty()
$(".span9").html "<%= escape_javascript(render partial: "show" ) %>"+"<%= escape_javascript( render partial: 'shared/gon')%>"

histObj = {foo: "bar"}
history.pushState histObj, "List", "<%= escape_javascript(list_path)%>"

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