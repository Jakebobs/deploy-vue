# Creating the GitHub Pages site

There are two ways of doing this, one is to use the web interface of GitHub and enable it through the repo settings. We are going to do it the other way, by installing the ghpages npm package and running its publish command. **Why are we doing it this way?**

First. Run `npm install gh-pages`

# Open the editor to the right and find the `package.json` file in the `<reponame>` folder, open it.
Under "Scripts" add a `"deploy": "gh-pages -d dist"`. Make sure to add a comma to the previous declaration too. This will publish our page when we run the `npm run deploy` command. 

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
 
Go to `https://<username>.github.com/<reponame>.io/` to view your page now. It's going to take a minute or two for the "pages build and deployment" action to complete running.

Add info about the pages publishing action (GitHub built in)

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