# Configuring the page for hash routing.
Now, if we want the user to be able to access more complex content on our website, we need to enable hash routing. 

# What is hash routing?




# Adding dynamic routerlink creation to the vue page.
One additonal thing that might still hinder your focus on the front-end of the page is that Vue is not set up from the start to dynamically add your views to the navigation bar or router. So we are going to add this so that all you need to do is add new `.vue` files to expand your web page.

# What is dynamic routing?
Dynamic routing is the process of creating routes in our application based on the files or data available at runtime. Instead of manually defining each route, dynamic routing allows us to automatically generate routes by scanning for available components, which in this case are Vue files. This makes it easier to manage and scale the application as new views are added.


# Practical steps

To do this we need to navigate to the `src/router/index.js` file. There we want to do two things:

add `createWebHashHistory` to the import statement that imports from `'vue-router'`
change the `history` variable to `history: createWebHashHistory(import.meta.env.BASE_URL),`

Next up, dynamic routing changes here....

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

# Push changes to main and let the Github Action do the publishing for you.
1. ` git add --all `
2. ` git commit -m hash routing added!`
3. ` git push`