# Adding a new view
Now, after we've configured the router and app to dynamically scan for views. Adding a new view to our page is as simple as creating the .vue page. To do this we will follow the following steps.

`cd src`


`cd views`


`touch testview.vue`

# Our genorously provided template, just add it. Don't think about it.
```
<template>
  <div class="video-container">
    <button v-if="!showVideo" @click="showVideo = true" class="show-video-button"> Click this button </button>
    <iframe
      v-if="showVideo"
      width="1280"
      height="720"
      :src="videoSrc"
      title="YouTube video player"
      frameborder="0"
      allow="autoplay; accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
      allowfullscreen
    ></iframe>
  </div>
</template>

<script>
export default {
  name: 'EasterView',
  data() {
    return {
      showVideo: false,
      videoSrc: '',
    };
  },
  watch: {
    showVideo(newVal) {
      if (newVal) {
        this.videoSrc = 'https://www.youtube.com/embed/dQw4w9WgXcQ?autoplay=1';
      }
    },
  },
};
</script>

<style scoped>
.video-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.show-video-button {
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
}
</style>
```
