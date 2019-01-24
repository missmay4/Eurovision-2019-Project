$.ajax({
  url: "http://iceberg.com.es:8001/user/",
  crossDomain: true,
  contentType: "application/json",
  dataType: "json",
  success: function(response) {
    var voteTemplate = Handlebars.compile($('#tablaVoto').html());
    response._items.map(function(element, i) {
      console.log(element);
      pais1 = paises[element.option1 - 1];
      element.option1 = pais1.nombre;
      element.img1 = pais1.img;

      pais2 = paises[element.option2 - 1];
      element.option2 = pais2.nombre;
      element.img2 = pais2.img;

      pais3 = paises[element.option3 - 1];
      element.option3 = pais3.nombre;
      element.img3 = pais3.img;

      $('#tablaVotos').append(voteTemplate(element));
    });
  },
  error: function(xhr, status) {
    alert('Error');
  }
});