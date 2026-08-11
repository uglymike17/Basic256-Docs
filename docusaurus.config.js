// @ts-check
// `@type` JSDoc annotations allow editor autocompletion and type checking
// (when paired with `@ts-check`).
// There are various equivalent ways to declare your Docusaurus config.
// See: https://docusaurus.io/docs/api/docusaurus-config

import {themes as prismThemes} from 'prism-react-renderer';

// This runs in Node.js - Don't use client-side code here (browser APIs, JSX...)

/** @type {import('@docusaurus/types').Config} */
const config = {
  markdown: {
    format: 'detect',
    hooks: {
      onBrokenMarkdownLinks: 'warn',
      onBrokenMarkdownImages: 'warn',
    },
  },
  title: 'BASIC-256 Documentation',
  tagline: 'BASIC256 is a classic BASIC programming language designed to make learning programming fun through graphics, animation, sound and experimentation.',
  favicon: 'img/favicon.ico',

  // Future flags, see https://docusaurus.io/docs/api/docusaurus-config#future
  future: {
    v4: true, // Improve compatibility with the upcoming Docusaurus v4
  },

  // Served from the custom domain doc.basic256.org (GitHub Pages).
  // Custom domain => site is at the root, so baseUrl is '/'.
  // The static/CNAME file keeps the custom domain across deploys.
  url: 'https://doc.basic256.org',
  baseUrl: '/',
  organizationName: 'uglymike17',
  projectName: 'Basic256-Docs',
  deploymentBranch: 'gh-pages',
  trailingSlash: false,

  onBrokenLinks: 'throw',

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: './sidebars.js',
          // No editUrl: there is no public repo yet, so no "edit this page" links.
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      image: 'img/social-card.jpg',
      metadata: [
        {name: 'algolia-site-verification', content: 'C69DFA73DA380192'},
      ],

      // Algolia DocSearch. Renders a search box in the navbar.
      // These three values come from the DocSearch program approval email
      // (https://docsearch.algolia.com/apply). The apiKey MUST be the
      // Search-only key (safe to commit publicly), never an Admin/Write key.
      algolia: {
        appId: 'LZHG9M42JA',
        apiKey: '748fd8d320f443adf490d7a8fba15394',
        indexName: 'Docusaurus documentation website',
        contextualSearch: true,
      },

      colorMode: {
        respectPrefersColorScheme: true,
      },
      navbar: {
        title: 'BASIC-256 Documentation',
        logo: {
          alt: 'BASIC-256 logo',
          src: 'img/logo.png',
        },
        items: [
          {
            type: 'docSidebar',
            sidebarId: 'tutorialSidebar',
            position: 'left',
            label: 'Docs',
          },
          {
            href: 'https://uglymike17.github.io/basic256/',
            label: 'Run Online',
            position: 'right',
          },
          {
            href: 'https://github.com/uglymike17/basic256',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        links: [
          {
            title: 'Docs',
            items: [
              {
                label: 'Syntax Reference (English)',
                to: '/docs/en/start',
              },
            ],
          },
          {
            title: 'BASIC-256 v2.1 Project',
            items: [
              {
                label: 'GitHub',
                href: 'https://github.com/uglymike17/basic256',
              },
              {
                label: 'Website',
                href: 'https://basic256.org',
              },
              {
                label: 'Run in Browser (WASM)',
                href: 'https://uglymike17.github.io/basic256/',
              },
            ],
          },
          {
            title: 'Original Project',
            items: [
              {
                label: 'SourceForge',
                href: 'https://sourceforge.net/projects/kidbasic/',
              },
            ],
          },
        ],
        copyright: `Documentation content from the BASIC-256 wiki, licensed CC BY-NC-SA 4.0. Built with Docusaurus.`,
      },
      prism: {
        theme: prismThemes.github,
        darkTheme: prismThemes.dracula,
      },
    }),
};

export default config;
