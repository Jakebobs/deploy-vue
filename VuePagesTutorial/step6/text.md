# Configuring the page for hash routing.
If we want the user to be able to access more complex content on our website, we need to enable hash routing. To do this we need to navigate to the `src/router/index.js` file. There we want to do two things:

add `createWebHashHistory` to the import statement that imports from `'vue-router'`
change the `history` variable to `history: createWebHashHistory(import.meta.env.BASE_URL),`

# Push changes to main and let the Github Action do the publishing for you.
` git add --all `
` git commit -m hash routing added!`
` git push`