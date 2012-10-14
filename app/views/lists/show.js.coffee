$(".span9").empty()
$(".span9").html "<%= escape_javascript(render partial: "show" ) %>"
histObj = {foo: "bar"}
history.push histObj, "List", "/test"