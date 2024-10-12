# Configure github email and name
Run these commands first to avoid annoying errors:
`git config --global user.email "<youremailaddress>@<email>.com"`
`git config --global user.name  "<yourname>"`

# Using GitHub CLI to deploy a repo

First run the command `gh auth login` to login via github.com. Select `Paste Personal Access Token` and create a new token with the minimum required priveleges on https://github.com/settings/tokens . We will be needing the token again, so write it down or copy it to clipboard.

Then run `gh repo create ANYNAME.io --public --clone` and create a new public repository on GitHub from scratch. Name it whatever you want but it has to end in .io for github pages to work seamlessly.

Dont add a gitignore or license.