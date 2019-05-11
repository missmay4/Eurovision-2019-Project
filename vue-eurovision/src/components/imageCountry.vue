<template>
<div>
<div class="col-md-4">
        <img class="flags" :src="loadImage('EuroFlags/Euro' + participant.country.code + '.png')"
            :alt="'Euro' + participant.country.code">
    </div>
    <div class="col-md-8">
        <label class="form-check-label">{{participant.country.name}}</label>
    </div>
</div>
    
</template>

<script>
export default {
    name: 'imageCountry',
    props: {
        name: String,
        participant: Object
    },
    methods: {
        loadImage(imageName) {
            return require('../assets/' + imageName);
        }
    },

}
</script>

<style scoped>
</style>