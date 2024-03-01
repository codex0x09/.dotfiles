---@diagnostic disable: missing-fields
local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup{
  ensure_installed = {"c","cpp","php","html","css","javascript","lua","vim","vimdoc","bash"}, --One of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = true, -- Install languages synchronously (only applied to 'ensure_installed')
  auto_install = false, -- Recommendation: set to false {it dose:Auto install missing parsers}
  ignore_install = { "" }, --List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of languages that will be disabled
    additional_vim_regex_highlighting = true,
  },
  filtype = vim.treesitter.language.register("php","html"),
  indent = { enable = true, disable = { "yaml" } },
}
