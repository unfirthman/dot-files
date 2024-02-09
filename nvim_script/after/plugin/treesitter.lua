local options = {
  auto_install = true,
  ensure_installed = {
    "lua",
    "vim",
    "go",
    "toml",
    "css",
    "tsx",
    "css",
    "html",
    "lua"
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
 rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
     termcolors = {'MediumSlateBlue', 'RebeccaPurple', 'LightCoral', 'Bisque'} -- table of colour name strings
  },
  autotag = {
    enable = true,
    filetypes = {
      'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
      'css', 'lua', 'xml', 'php', 'markdown'
    },
  },
  indent = { enable = true },
}

require('nvim-treesitter.configs').setup(options)
