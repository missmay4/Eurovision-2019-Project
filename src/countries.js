function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      var participants = JSON.parse(this.responseText);
      for (var i = 0; i < participants.length; i++) {
        var html = `<td> ${participants[i].country.name} </td>` +
          `<td> ${participants[i].name} </td>` +
          `<td> ${participants[i].song} </td>`;

        var tr = document.createElement('tr');

        tr.innerHTML = html;

        document.getElementById('tabla').appendChild(tr);
      }
    }
  };
  xhttp.open("GET", "http://localhost:8080/participant/", true);
  xhttp.send();
}