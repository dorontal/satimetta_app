import type { Config } from 'tailwindcss';

import { skeleton, contentPath } from '@skeletonlabs/skeleton/plugin';
import * as themes from '@skeletonlabs/skeleton/themes';

export default {
  darkMode: 'selector',
  content: [
    './src/**/*.{html,js,svelte,ts}',
    contentPath(import.meta.url, 'svelte')
  ],
  theme: {
    extend: {},
  },
  plugins: [
    skeleton({
      // NOTE: each theme included will increase the size of your CSS bundle
      themes: [
        /* 
        themes.catppuccin,
        */
        themes.cerberus
        /*
        themes.concord,
        themes.crimson,
        themes.fennec,
        themes.hamlindigo,
        themes.legacy,
        themes.mint,
        themes.modern,
        themes.mona,
        themes.nosh,
        themes.nouveau,
        themes.pine,
        themes.reign,
        themes.rocket, 
        themes.rose,
        themes.sahara,
        themes.seafoam,
        themes.terminus,
        themes.vintage,
        themes.vox,
        themes.wintry 
        */      ]
    })
  ]
} satisfies Config