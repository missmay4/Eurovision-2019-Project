// Set the date we're counting down to
var countDown2Semi = new Date("May 16, 2019 21:00:00").getTime();

// Update the count down every 1 second
var x3 = setInterval(function() {

  // Get todays date and time
  var now3 = new Date().getTime();

  // Find the distance between now and the count down date
  var distance3 = countDown2Semi - now3;

  // Time calculations for days, hours, minutes and seconds
  var days3 = Math.floor(distance3 / (1000 * 60 * 60 * 24));
  var hours3 = Math.floor((distance3 % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes3 = Math.floor((distance3 % (1000 * 60 * 60)) / (1000 * 60));
  var seconds3 = Math.floor((distance3 % (1000 * 60)) / 1000);

  // Output the result in an element with id="countdown"
  document.getElementById("countdown2semi").innerHTML = days3 + "d " + hours3 + "h " +
    minutes3 + "m " + seconds3 + "s ";

  // If the count down is over, write some text
  if (distance3 < 0) {
    clearInterval(x3);
    document.getElementById("countdown2semi").innerHTML = "EXPIRED";
    var botonSemi2 = document.getElementById("btnSemi2");
    botonSemi2.classList.remove("disabled");
  }
}, 1000);