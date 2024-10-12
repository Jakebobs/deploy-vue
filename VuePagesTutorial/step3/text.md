# Creating the GitHub Pages site

There are two ways of doing this, one is to use the web interface of GitHub and enable it through the repo settings. We are going to do it the other way, by installing the ghpages npm package and running it's publish command.

First. Run `npm install gh-pages`

# Open the editor to the right and find the `package.json` file in the <reponame> folder, open it.
Under "Scripts" add a `"deploy": "gh-pages -d dist"`. Make sure to add a comma to the previous declaration too. This will publish our page when we run the `npm run deploy` command. 

# Run the `npm run build` followed by the `npm run deploy` command.
Go to `https://<username>.github.com/<reponame>.io/` to view your page now.

Add info about the pages publishing action (GitHub built in)