<template>
  <div id="app">
    <header class="navbar">
      <router-link class="navbar-brand" to="/"><img src="./assets/EuroFlags/EuroIL.png" width="30" height="30" alt=""> Eurovision 2019</router-link>
      <div class="navbar-nav-scroll">
        <ul class="navbar-nav bd-navbar-nav flex-row">
          <li class="nav-item">
            <router-link to="/singers">Participantes</router-link>
          </li>
          <li class="nav-item">
            <router-link to="/votes">Votaciones</router-link>
          </li>
          <li class="nav-item">
            <router-link to="/listVotes">Tus votos</router-link>
          </li>
        </ul>
      </div>
      <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
        <li class="nav-item">
          <a href="https://github.com/missmay4/Eurovision-2019-Project"><i class="fa fa-github fa-lg" aria-hidden="true"></i></a>
        </li>
        <li class="nav-item">
          <a href="https://open.spotify.com/user/deathscythe4/playlist/6ilzr63uzIxOOwcCKdlsTz?si=zBoPp4BjT6OaW_O3gwHWDQ"><i class="fa fa-spotify fa-lg" aria-hidden="true"></i></a>
        </li>
        <li class="nav-item">
          <a href="https://twitter.com/deathscythe_4"><i class="fa fa-twitter fa-lg" aria-hidden="true"></i></a>
        </li>
      </ul>
    </header>
    <div class="margin">
      <router-view/>
    </div>

    <footer>
      <p>
        © 2019, @missmay4 & @aorcajo
      </p>
      <p>Images & Data obtained in <a href="https://en.wikipedia.org/wiki/Eurovision_Song_Contest_2019">Wikipedia</a>, <a href="https://eurovision.tv/">Eurovision.tv</a></p>
    </footer>
  </div>
</template>



<style>

:root { /* Se puede hacer en el body del html tambien. Nivel global */
  --c-accent: #273c75;
  --c-background: #ecf0f1;
  --c-medium: #192a56;
  --c-text: #2f3542;
  --spacer: 15px;
}

/* Generic styles */
body {
  background-color: var(--c-background);
  color: var(--c-text);
  font-family: Arial, Helvetica, sans-serif;
  font-weight: 500;
  margin: 0;

  margin-right: auto;
  margin-left:  auto;
  /* max-width: 960px; */
  padding-right: 10px;
  padding-left:  10px;
}

*: focus {
  outline-color: var(--c-accent);
}

a {
  color: var(--c-accent) !important;
}

a:hover, a:focus {
  font-weight: bold;
}

a: visited {
  color: var(--c-medium);
}

input {
  padding: 0.5rem;
}

input:placeholder-shown {
  border: var(--c-accent) 2px solid;
}

h1 {
  text-align: center;
}

header {
  padding: calc(var(--spacer) / 2) var(--spacer);
  margin-bottom: calc(var(--spacer) / 2);
  display: flex;
  align-items: flex-end;
}

header a {
  margin-left: var(--spacer);
  white-space: nowrap;
}

.logo img {
  max-width: 150px;
  min-width: 80px;
  width: 100%;
}

.flex-right {
  margin-left: auto;
}
/* Main content */
main img {
  display: block;
  max-width: 250px;
  position: relative;
}

.content {
  margin-left: 3%;
}

.margin{
  margin-left: 5%;
  margin-right: 5%;

}

/* main div:hover img, main div:focus img {
  filter: grayscale(.3) blur(2px) brightness(.5);
} */

@supports (display:grid) { /* Media query */
  main {
    display: grid;
    grid-template-columns: repeat(auto-fill, 250px) minmax(200px, 1fr); /* repeat calcula las columnas que puede poner. Minmax define el tamaño de una columna */
    grid-auto-flow: dense;
    grid-gap: var(--spacer);
    grid-auto-rows: 200px;
  }
  main img {
    /* height: 100%; */
    /* width: 100%; */
    max-width: none;
    object-fit: cover;
    position: relative;
  }

  main div {
    display: grid;
    align-items: end;

  }

  main div img, main div span {
    grid-row: 1;
    grid-column: 1;
  }

  main div span {
    display: none;
    z-index: 1;
  }
  main div:hover span, main div:focus span {
    display: inline;
  }
}

.flags{
  height: 40px;
  width: 40px;
  margin-top: 10px;
}

.country {
  margin-top: 10px;
}

.centrar{
  text-align: center;
  margin-top: 10px;
}

.espaciocheck{
  margin-right: 40px;
}

.artistCountry{
  width: 100%;
}

.artistFlag{
  width: 20%;
  float: left;
}

.artistTitle {
  float: right;
  width: 80%;
}

.card-body {
  padding-top: 0px !important;
}


/* Footer */

footer {
  font-size: .8rem;
  margin-top: var(--spacer);
  display: flex;
  flex-direction: column;
  text-align: center;
}

footer p {
  margin: .5em;
}


/* Prueba tabla */
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #000000;
  text-align: left;
  padding: 8px;
}

th {
  background-color: #7590DA;
}
</style>
