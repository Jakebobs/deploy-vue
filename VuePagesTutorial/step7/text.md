# Adding a new view
Now, after we've configured the router and app to dynamically scan for views, adding a new view to our page is as simple as creating the .vue page. To do this we will follow the following steps.

If you are still in the `.github/workflows` folder. Navigate back using these commands in the terminal:


`cd ..`


`cd ..`


Then navigate to the views folder using.

`cd src`


`cd views`


`touch testview.vue`

You could do this in the editor by creating the `testview.vue` file in the `views` folder. As we have already implemented the dynamic routing all we have to do now is add some content to our view. We recommend the following code:

# Our generously provided template, just add it. Don't think about it.
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
# Now, push changes to main and let the Github Action do the publishing for you.
1. ` git add --all `
2. ` git commit -m hash routing added!`
3. ` git push`