# Open your site, see that it is blank. Why?

Opening the web developer console will tell us this. You will find an error message saying `Loading failed for the module with source "https://<username>.github.io/assets/index-xxxxxx.js`. This is because we haven't told our website where to find it's own files.

# How do fix this?

The fix is pretty simple. We need to open the editor once again. Navigate to your `vite.config.js` file and add these three things: 

At the top: `import path from 'path';`
Inside defineConfig: `base: '/',`
Replacing the existing line starting with @ : `'@': path.resolve(__dirname, 'src'),`

# What do these changes do? 
These changes tells the page where it is.