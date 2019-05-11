<template>
  <div class="modal fade bd-example-modal-sm">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title">Tus votos</h6>
        </div>
        <div class="modal-body">
          <!-- Votos  -->
          <imageCountry  v-for="participant in participants.filter((participant) => { return selectedParticipants.indexOf(participant.id) !== -1})"
                         :participant="participant"
          />
          <form action="">
            <div class="form-group row">
              <div class="col-sm-12">
                <input type="name" class="form-control" id="" placeholder="Tu nombre" v-model="name">
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button @click="vote()" class="btn btn-light">A votar!</button>
          </div>
        </div>
      </div>
    </div>
</template>

<script>

import imageCountry from '@/components/imageCountry.vue'

export default {
  name: 'VoteModal',
  props: {
      selectedParticipants: Array,
      participants: Array
    },
    data() {
    return {
      name: ''
    }
  },
  methods: {
    vote: function() {
      const config = { headers: { 'Content-Type': 'multipart/form-data' } };
      axios.post('http://localhost:8080/user/', '"name"="asdasdasd"', config).then(response => {
        axios.post('http://localhost:8080/user/'+response.id+'/vote', {
          vote1: selectedParticipants[0], 
          vote2: selectedParticipants[1],
          vote3: selectedParticipants[2],
          gala: [1]
        }) 
     
    });
    }
  },
  components: {
    imageCountry
  },
}
</script>

<style scoped>
</style>
