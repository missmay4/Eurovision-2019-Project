<template>
  <div class="home">
    <h1 class="display-4">Votaciones</h1>
    <table class="table">
      <thead id="tablaVotos" class="thead-light">
        <tr>
          <th scope="col">Nombre</th>
          <th scope="col">Opción 1</th>
          <th scope="col">Opción 2</th>
          <th scope="col">Opción 3</th>
        </tr>
      </thead>
      <tbody>
      </tbody>
    </table>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'home',
  components: {
    HelloWorld
  }
}
</script>
