// Set the date we're counting down to
var countDown1Semi = new Date("May 14, 2019 21:00:00").getTime();

// Update the count down every 1 second
var x2 = setInterval(function() {

  // Get todays date and time
  var now2 = new Date().getTime();

  // Find the distance between now and the count down date
  var distance2 = countDown1Semi - now2;

  // Time calculations for days, hours, minutes and seconds
  var days2 = Math.floor(distance2 / (1000 * 60 * 60 * 24));
  var hours2 = Math.floor((distance2 % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes2 = Math.floor((distance2 % (1000 * 60 * 60)) / (1000 * 60));
  var seconds2 = Math.floor((distance2 % (1000 * 60)) / 1000);

  // Output the result in an element with id="countdown"
  document.getElementById("countdown1semi").innerHTML = days2 + "d " + hours2 + "h " +
    minutes2 + "m " + seconds2 + "s ";

  // If the count down is over, write some text
  if (distance2 < 0) {
    clearInterval(x2);
    document.getElementById("countdown1semi").innerHTML = "EXPIRED";
    var botonSemi1 = document.getElementById("btnSemi1");
    botonSemi1.classList.remove("disabled");
  }
}, 1000);