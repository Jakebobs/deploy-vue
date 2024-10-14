# Deploying via GitHub Actions

Now that the assets for the website are accessible, we want to be able to deploy it, using GitHub Actions. First, create a new folder named `.github`, enter it and create a new folder named `workflows`. Then enter it and create the `pagedeploy.yml` file. 

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

Here we set workflow to trigger whenever there is a push to the master branch. 
We also allow it to write contents to the repository.  


```
jobs:
  deploy:
    runs-on: ubuntu-22.04
    steps:
      - name: Checkout the repository
        uses: actions/checkout@v4
```

Next we start to define the steps that will run as a part of the workflow. 
The first one, `actions/checkout`, gives the workflow access to our repository.  


```
      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 20
```

The next step is `actions/setup-node` which installs the specified version of Node.js  

```
      - name: Install dependencies
        run: npm install

      - name: Build the project
        run: npm run build
```

Here we `run npm install` to install the project dependencies from package.json.
We then `run npm build` to compile the project based on these dependencies.  


```
      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v4
        with:
          personal_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./dist
          publish_branch: gh-pages
```
Finally we deploy the project to gh-pages branch. We have chosen to utilise this [GitHub marketplace Action](https://github.com/marketplace/actions/github-pages-action), it essentially checks out the branch, installs dependencies, builds the package, and publishes it to the gh-pages branch. One could replicate this themselves but that would add a lot of complexity for little to no benefit.  


Here is the entire code for the .yml file. 

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
    runs-on: ubuntu-22.04
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
You might prefer to have the newest changes published to the page on push to master instead of only using the deploy command. An advantage of this approach is that it will also enable you to add additional actions to your deployment pipeline instead of having the deployment backdoor through the gh-pages package.

# Go to the terminal and push your changes before moving on
1. ` git add --all`
2. ` git commit -m workflow`
3. ` git push `