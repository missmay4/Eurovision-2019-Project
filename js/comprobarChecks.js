// Permite seleccionar tres checks maximo
var max_limit = 3; // Max Limit
$(document).ready(function() {
  $(".checkear:input:checkbox").each(function(index) {
    this.checked = (".checkear:input:checkbox" < max_limit);
  }).change(function() {
    if ($(".checkear:input:checkbox:checked").length > max_limit) {
      this.checked = false;
    }
  });
});