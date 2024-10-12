# Deploying via Github actions
Create a new folder named `.github`, enter it and create a new folder named `workflows`
Create a .yml file with the following content. `touch pagedeploy.yml`
```
name: Deploy to GitHub Pages

on:
  push:
    branches: [master, main] 
  workflow_dispatch: 

permissions:
  contents: write

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout the repository
        uses: actions/checkout@v4

      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 20

      - name: Install dependencies
        run: npm install

      - name: Build the project
        run: npm run build

      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v4
        with:
          personal_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./dist
          publish_branch: gh-pages
```

# What does this enable?
You might prefer to have the newest changes published to the page on push to main instead of only using the deploy command. An advantage of this approach is that it will also enable you to add additonal actions to your deployment pipeline instead of having the deployment backdoor through the gh-pages package.

# Push your changes
` git add --all`
` git commit -m workflow added`
` git push `