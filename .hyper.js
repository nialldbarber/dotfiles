module.exports = {
  config: {
    fontSize: 15,
    fontFamily: '"Dank Mono", "Operator Mono", "Inconsolata for Powerline", monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    letterSpacing: 1,
    lineHeight: 1,
    cursorColor: 'rgba(248,28,229,0.8)',
    wickedBorder: true,
    cursorAccentColor: '#000',
    cursorShape: 'BEAM',
    cursorBlink: false,
    selectionColor: 'rgba(248,28,229,0.3)',
    borderColor: '#333',
    padding: '12px 14px',
    shell: '/bin/zsh',
    bell: false,
    copyOnSelect: false,
    defaultSSHApp: true
  },
  plugins: [
    'hyper-pane',
    'hyper-highlight-active-pane',
    'hyper-tab-icons',
    'hyper-search',
    'hyper-snazzy',
    'hyperterm-close-on-left'
  ],
  localPlugins: [],

  keymaps: {}
};
