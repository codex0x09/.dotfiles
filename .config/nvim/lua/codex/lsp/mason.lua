---------------------------------** Hits: **----------------------------------------------
-- this file contens configrations of three Plug-ins working together
-- Mason.nvim (used for installing lsps and third part binarys),
-- Mashn-lspconfig.nvim (used for automatically config any server installed by Mason), and
-- Mason-tool-installer.nvim (used for ensure installed certain server hard coded by user)
------------------------------------------------------------------------------------------
require("mason").setup({ -- should be first
  ui = {
    border = "none",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },
    keymaps = {
      -- Keymap to expand a package
      toggle_package_expand = "<CR>",
      -- Keymap to check for new version for the package under the current cursor position
      check_package_version = "c",
      -- Keymap to check which installed packages are outdated
      check_outdated_packages = "C",
      -- Keymap to install the package under the current cursor position
      install_package = "i",
      -- Keymap to uninstall a package
      uninstall_package = "X",
      -- Keymap to reinstall/update the package under the current cursor position
      update_package = "u",
      -- Keymap to update all installed packages
      update_all_packages = "U",
      -- Keymap to cancel a package installation
      cancel_installation = "<C-c>",
      -- Keymap to apply language filter
      apply_language_filter = "<C-f>",
      toggle_help = "g?",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
})
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup {}
  end
})
require("mason-tool-installer").setup({
  -- a list of all tools you want to ensure are installed upon start
  ensure_installed = {
    "lua-language-server",
    "vim-language-server",
    "clang-format",
    "clangd",
    "pyright",
    "jsonls",
    "emmet-ls",
    "prettierd",
  },
  run_on_start = true, -- automatically install / update on startup
  start_delay = 3000, -- set delay before the installation
})
