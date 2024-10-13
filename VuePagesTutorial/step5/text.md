# Deploying via GitHub Actions

Now we want to .....

First, create a new folder named `.github`, enter it and create a new folder named `workflows`. Then enter it and create the `pagedeploy.yml` file. 

The steps in the terminal are:

1. ` mkdir .github `
2. ` cd .github `
3. ` mkdir workflows `
4. ` cd workflows `
5. ` touch pagedeploy.yml`

You can do this in the editor if preferred. Just remember that the  `.github` folder should be created in your `<reponame>.io` folder.

Now, open the editor and edit your currently empty .yml file with the following content. 
```
name: Deploy to GitHub Pages

on:
  push:
    branches: [master] 
  workflow_dispatch: 

permissions:
  contents: write
```



```
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout the repository
        uses: actions/checkout@v4
```

```
      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 20
```

```
      - name: Install dependencies
        run: npm install
```

```
      - name: Build the project
        run: npm run build
```

```
      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v4
        with:
          personal_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./dist
          publish_branch: gh-pages
```

Here is the entire code. 

```
name: Deploy to GitHub Pages

on:
  push:
    branches: [master] 
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

# Go to the terminal and push your changes
1. ` git add --all`
2. ` git commit -m workflow added`
3.  ` git push `