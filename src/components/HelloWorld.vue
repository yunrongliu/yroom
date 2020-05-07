<template>
  <div class="container">
    <div 
    v-for="(item,index) in startsArr"
    :key="'star' + index"
    :style="{'transformOrigin': item.transformOrigin,'transform': item.transform}"
    class="star">

    </div>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data() {
    return {
      startsCount: 800,
      distance: 800,
      startsArr: [],
    }
  },
  mounted() {
    
    this.startsArr = Array.from({length: this.startsCount},(curr = {})=> {
      let speed = 0.2 + Math.random()
      let selfDistance = this.distance + (Math.random() * 500)
      curr.transformOrigin = `0 0 ${selfDistance}px`
      curr.transform = `translate3d(0,0,-${selfDistance}px) rotateY(${Math.random() * 360}deg) rotateX(${Math.random() * (-50)}deg) scale(${speed },${speed})`

      return curr
    })
   
   console.log(this.startsArr[0])
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss">
  @keyframes starRotate {
    0% {
      transform: perspective(800px) rotateZ(20deg) rotateX(-40deg) rotateY(0);
    }
    100% {
      transform: perspective(800px) rotateZ(20deg) rotateX(-40deg) rotateY(-360deg);
    }
  }

  .container {
    display: flex;
    position: absolute;
    bottom: 0;
    transform: perspective(300px);
    transform-style: preserve-3d;
    perspective-origin: 100% 100%;
    animation: starRotate 90s infinite linear;
    .star {
      width: 2px;
      height: 2px;
      background-color: #f7f7b8;
      backface-visibility: hidden;
    }
  }
  
</style>
