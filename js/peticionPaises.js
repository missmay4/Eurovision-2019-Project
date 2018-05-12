function onVote(event) {
  var countries = $(':checked').map(function(i, element) {
    return paises[parseInt($(element).val()) - 1];
  });
  var voteTemplate = Handlebars.compile($('#paisesVotados').html());

  $('#voteContainer').html('');
  countries.map(function(i, data) {
    $('#voteContainer').append(voteTemplate(data));
  });

  $('#votosModal').modal('show');
}


function vote()  {
  var countries = $(':checked').map(function(i, element) {
    return paises[parseInt($(element).val()) - 1];
  });

  var data = {
    name: localStorage.getItem("user_name"),
    option1: countries[0].id,
    option2: countries[1].id,
    option3: countries[2].id
  };

  $.ajax({
    url: "http://iceberg.com.es:8001/user",
    type: "POST",
    crossDomain: true,
    contentType: "application/json",
    dataType: "json",
    data: JSON.stringify(data),
    success: function(response) {
      localStorage.setItem("user_id", response.id);
      window.location.href = 'tusvotos.html';
    },
    error: function(xhr, status) {
      console.log(xhr);
      alert('Error');
    }
  });
}