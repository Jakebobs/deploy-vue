# How do we get started with Vue?
Great question! Run the following command in the terminal to start the creation of your Vue webpage.\
` npm create vue@3.11.0 `

You will now see many questions arrive in the terminal.

Answer the questions in this manner:
- Project Name : `<reponame>.io`
    - Typescript : No
    - JSX : No
    - Vue Router for Single Page Application Development : Yes
    - Pinia : No
    - Vitest : No
    - End to End : No
    - EsLint : No
    - Vue Devtools: No

Then run:

`cd <reponame>.io`

To enter your repo, and then run:

`npm install`

To install the necessary packages.

You've now created the boilerplate for our page. To make sure our git is up and running properly, upload the vue page to the repo by using:

1. ` git add . `
2. ` git commit -m message `
3. ` git push --set-upstream origin master `

Authenticate with your username and then use the PAT (Personal access token) you created in the previous step as the password.

# Optional step
Verify the creation of the repo before moving on by visiting `https://github.com/<username>/<reponame>.io`