# Configure github email and name
Run these commands first to avoid annoying errors:


1. `git config --global user.email "<youremailaddress>@<email>.com"`
2. `git config --global user.name  "<yourname>"`

# Using GitHub CLI to deploy a repo

First run the command `gh auth login` to login via github.com. 

Select:
- GitHub.com
- HTTPS
- Authenticate Git with your GitHub credentials? Yes
Select `Paste Personal Access Token` and create a new token with the 'repo', 'read:org', 'workflow'. on https://github.com/settings/tokens . We will be needing the token again, so write it down or copy it to clipboard.

Then run `gh repo create <reponame>.io --public --clone` and create a new public repository on GitHub from scratch. reponame can be any name you want, but it needs to remain the same throughout the tutorial. It also has to end in .io for GitHub pages to work seamlessly, since this is the standard domain name.