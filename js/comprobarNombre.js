function abreModalNombre() {
  if (localStorage.getItem('user_name') !== null) {
    window.location.href = 'votaciones.html';
  } else {
    $('#registroModal').modal('show');
  }
}

// Validacion nombre usuario
function onlyLetters(input, event) {
  var letters = /^[A-Za-z]+$/;
  if (!input.value.match(letters)) {
    alert('Nombre invalido, por favor introduce un nombre correcto');
    event.preventDefault();
    return false;
  } else {
    localStorage.setItem('user_name', $("#name").val());
  }
}