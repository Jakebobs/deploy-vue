# Creating the GitHub Pages site

There are two ways of doing this, one is to use the web interface of GitHub and enable it through the repo settings. We are going to do it the other way, by installing the gh-pages npm package and running its publish command. By using the gh-pages package we can automate the deployment process which is beneficial for our CI/CD workflows. We will set this up later on. 

First. Run `npm install gh-pages`

Then open the editor to the right and find the `package.json` file in the `<reponame>` folder, open it.

Under "Scripts" add  
`"deploy": "gh-pages -d dist"`.   
Make sure to add a comma to the previous declaration too. This will publish our page when we run the `npm run deploy` command. 

# Full `package.json` scripts code
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

Go to `https://<username>.github.io/<reponame>.io/` to view your page now. It's going to take a minute or two for the "pages build and deployment" action to finish running.

Add info about the pages publishing action (GitHub built in)
