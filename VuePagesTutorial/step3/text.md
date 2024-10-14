# Creating the GitHub Pages site

There are two ways of doing this, one is to use the web interface of GitHub and enable it through the repo settings. We are going to do it the other way, by installing the gh-pages npm package and running its publish command. By using the gh-pages package we can circumvent setting up our repo for pages, since it features the [code](https://github.com/tschaub/gh-pages/blob/main/lib/index.js) needed to deploy the page directly from the command line. 

First. Run `npm install gh-pages`

Then open the editor to the right and find the `package.json` file in the `<reponame>` folder, open it.

Under "Scripts" add  
`"deploy": "gh-pages -d dist"`.   
Make sure to add a comma to the previous declaration too. This will publish our page when we run the `npm run deploy` command. 

# Full `package.json` scripts code section
```
{
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview",
    "deploy": "gh-pages -d dist"
  },
}
```

# Go back to the terminal and run
 1. `npm run build`
 2. `npm run deploy`
