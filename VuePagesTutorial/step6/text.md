# Configuring the page for hash routing.
If we want the user to be able to access more complex content on our website, we need to enable hash routing. To do this we need to navigate to the `src/router/index.js` file. There we want to do two things:

add `createWebHashHistory` to the import statement that imports from `'vue-router'`
change the `history` variable to `history: createWebHashHistory(import.meta.env.BASE_URL),`

# What is hash routing?

# Push changes to main and let the Github Action do the publishing for you.
` git add --all `
` git commit -m hash routing added!`
` git push`

# Visit (länk)/actions to see your deployment take place live.

# Adding dynamic routerlink creation to the vue page.
One thing that might still hinder your focus on the front-end of the page is that Vue is not set up from the start to dynamically add your views to the navigation bar or router. So we are going to add this so that all you need to do is add new `.vue` files to expand your web page.

# Changes to be made in `src/router/index.js`
```
import { createRouter, createWebHashHistory } from 'vue-router';

// Automatically import all views from the "views" directory
const viewModules = import.meta.glob('../views/*.vue');

export const routes = Object.keys(viewModules).map((viewPath) => {
  const name = viewPath.split('/').pop().replace('.vue', '');
  const path = name === 'HomeView' ? '/' : `/${name.replace('View', '').toLowerCase()}`;

  return {
    path: path,
    name: name.toLowerCase(),
    component: viewModules[viewPath], // Lazy-loaded components
  };
});

const router = createRouter({
  history: createWebHashHistory(import.meta.env.BASE_URL),
  routes,
});

export default router;
```


# Changes to be made in `src/app.vue`
```
<script>
import { RouterLink, RouterView } from 'vue-router';
import { routes } from './router';

export default {
  name: 'App',
  data() {
    return {
      routes
    };
  },
  methods: {
    formatRouteName(name) {
      // Capitalize the first letter for display in the navigation bar
      return name.charAt(0).toUpperCase() + name.slice(1);
    }
  }
};
</script>

<template>
  <div>
    <nav>
      <RouterLink
        v-for="route in routes"
        :key="route.path"
        :to="route.path"
      >
        {{ formatRouteName(route.name) }}
      </RouterLink>
    </nav>
    <RouterView />
  </div>
</template>
```