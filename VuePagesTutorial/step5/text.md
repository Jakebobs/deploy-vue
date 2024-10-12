# Deploying via Github actions
Create a new folder named .github, enter it and create a new folder named workflows
Create a .yml file with the following content.
``` name 
name: Deploy to GitHub Pages

on:
  push:
    branches: [main] # Trigger on push to the main branch
  workflow_dispatch: # Allow manual triggering

permissions:
  contents: write # Grant write access to push changes to the repository

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

      - name: Deploy with gh-pages
        run: npm run deploy
```