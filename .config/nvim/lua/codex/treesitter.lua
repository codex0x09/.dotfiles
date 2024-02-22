local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup{

   ensure_installed = {"c","cpp","php","html","css","javascript","lua","vim","vimdoc"}, --One of "all", "maintained" (parsers with maintainers), or a list of languages
    sync_install = false, -- Install languages synchronously (only applied to 'ensure_installed')
    auto_install = false, -- Recommendation: set to false {it dose:Auto install missing parsers}
    ignore_install = { "" }, --List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of languages that will be disabled
        additional_vim_regex_highlighting = true,
    },
  filtype = vim.treesitter.language.register("php","html"),
    indent = { enable = true, disable = { "yaml" } },
    --rainbow = {
    --    enable = true,
    --    -- list of languages you want to disable the plugin for
    --    disable = {},
    --    -- Which query to use for finding delimiters
    --    query = 'rainbow-parens',
    --    -- Highlight the entire buffer all at once
    --    strategy = require('ts-rainbow').strategy.global,
   -- },
  --  playground = {      -- playground
   --     enable = false,
        --        disable = {},
        --        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        --        persist_queries = false, -- Whether the query persists across vim sessions
        --        keybindings = {
        --            toggle_query_editor = 'o',
        --            toggle_hl_groups = 'i',
        --            toggle_injected_languages = 't',
        --            toggle_anonymous_nodes = 'a',
        --            toggle_language_display = 'I',
        --            focus_language = 'f',
        --            unfocus_language = 'F',
        --            update = 'R',
        --            goto_node = '<cr>',
        --            show_help = '?',
        --        },
    --},
}
