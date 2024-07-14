import { defineConfig } from 'vite';

export default defineConfig({
  base: '/Rock-Climbing-Model/',
  publicDir: 'public',
  build: {
    rollupOptions: {
      input: 'index.html',
    },
  },
  server: {
    open: true,
  },
});
