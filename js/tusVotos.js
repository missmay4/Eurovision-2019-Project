function showName(name) {
  var voteTemplate = Handlebars.compile($('#tuNombre').html());
  $('#nameContainer').html(voteTemplate({
    nombre: name
  }));
}


function showVotes(country_id) {
  var voteTemplate = Handlebars.compile($('#paisesVotados').html());
  $('#votesContainer').append(voteTemplate(paises[country_id - 1]));
}


$.ajax({
  url: "http://iceberg.com.es:8001/user/" + localStorage.getItem("user_id"),
  crossDomain: true,
  contentType: "application/json",
  dataType: "json",
  success: function(response) {
    showName(response.name);
    showVotes(response.option1);
    showVotes(response.option2);
    showVotes(response.option3);
    console.log(response);
  },
  error: function(xhr, status) {
    alert('Error');
  }
});