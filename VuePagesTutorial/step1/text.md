# Configure github email and name
Run these commands first to setup your email address and username to avoid annoying errors. *youremailaddress* corresponds to your GitHub email address and *yourname* is your GitHub username.

1. `git config --global user.email "<youremailaddress>@<email>.com"`
2. `git config --global user.name  "<yourname>"`

# Using GitHub CLI to deploy a repo

First run the command `gh auth login` to login via github.com. 

Select:
- GitHub.com
- HTTPS
- Authenticate Git with your GitHub credentials? Yes


Select `Paste Personal Access Token` and create a new token with the 'repo', 'read:org' and 'workflow' options selected on https://github.com/settings/tokens . We will be needing the token everytime we are asked for our password, so write it down, copy it to the clipboard, or keep the tab with the token available. 

After succesfully logging in, then run 
`gh repo create <reponame>.io --public --clone` 
to create a new public repository on GitHub from scratch. *reponame* can be any name you want, but it needs to remain the same throughout the tutorial. It also has to end in .io for GitHub Pages to work seamlessly, since this is the standard domain name.