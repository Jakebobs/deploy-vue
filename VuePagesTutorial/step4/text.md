# Open your site, and see that it is blank. Why?

Opening a web developer console will tell us why this is the case. You would find an error message saying `Loading failed for the module with source "https://<username>.github.io/assets/index-xxxxxx.js`. This is because we haven't actually told our website where to find its own files. Vite projects assume by default that they are being hosted at the root of a domain such as `https://<username>.github.io/`, but we actually want the repository subpath `https://<username>.github.io/<reponame>.io/`.

# How do we fix this?

The fix is straightforward. We need to open the editor once again. Navigate to your `vite.config.js` file and add these three things: 

- At the top: `import path from 'path';`
- Inside defineConfig: `base: '/<reponame.io>/',`
- Replacing `'@': fileURLToPath(new URL('./src', import.meta.url))` with:
- `'@': path.resolve(__dirname, 'src'),`

# Full code for `vite.config.js` (Change the reponame to your own)
```
import path from 'path';
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    vue(),
  ],
  base: '/<reponame.io>/',
  resolve: {
    alias: {
      '@': path.resolve(__dirname, 'src'),
    }
  }
})
```

Lets move on now that this has been fixed!