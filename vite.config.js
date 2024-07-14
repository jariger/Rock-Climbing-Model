import { defineConfig } from 'vite';

export default defineConfig({
  base: '/Rock-Climbing-Model/',
  build: {
    rollupOptions: {
      input: 'index.html',
      output: {
        assetFileNames: (assetInfo) => {
          if (assetInfo.name === 'edgemethod.glb') {
            return 'edgemethod.glb';
          }
          return assetInfo.name;
        },
      },
    },
  },
  server: {
    open: true,
  },
});
