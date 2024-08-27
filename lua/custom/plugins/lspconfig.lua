return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  config = function()
    local mason_tool_installer = require 'mason-tool-installer'

    mason_tool_installer.setup {
      ensure_installed = {
        'prettier',
        'stylua',
        'isort',
        'black',
        'shfmt',
        'pylint',
        'eslint_d',
        'mypy',
        'flake8',
        'shellcheck',
        'luacheck',
        'write-good',
        'vale',
        'remark-language-server',
        'pyright',
        'lua-language-server',
        'ltex-ls',
        'clangd',
        'beautysh',
        'bash-language-server',
      },
    }
  end,
}
