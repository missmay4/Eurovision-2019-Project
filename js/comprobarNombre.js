// Validacion nombre usuario
function onlyLetters(input, event) {
  var letters = /^[A-Za-z]+$/;
  if (!input.value.match(letters)) {
    alert('Nombre invalido, por favor introduce un nombre correcto');
    event.preventDefault();
    return false;
  }
}