-- Taken from the zk-nvim README.  I added the decriptions for which-key.
-- Add the key mappings only for Markdown files in a zk notebook.
if require("zk.util").notebook_root(vim.fn.expand('%:p')) ~= nil then
    local function map(...) vim.api.nvim_buf_set_keymap(0, ...) end
    local opts = { noremap = true, silent = false, desc = '' }

    -- Open the link under the caret.
    map("n", "<CR>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)

    -- Create a new note after asking for its title.
    -- This overrides the global `<leader>zn` mapping to create the note in the same directory as the current buffer.
    opts.desc = 'New Note'
    map("n", "<leader>zn", "<Cmd>ZkNew { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", opts)
    -- Create a new note in the same directory as the current buffer, using the current selection for title.
    opts.desc = 'New Note With Title From Selection'
    map("v", "<leader>znt", ":'<,'>ZkNewFromTitleSelection { dir = vim.fn.expand('%:p:h') }<CR>", opts)
    -- Create a new note in the same directory as the current buffer, using the current selection for note content and asking for its title.
    opts.desc = 'New Note With Content From Selection'
    map("v", "<leader>znc",
        ":'<,'>ZkNewFromContentSelection { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", opts)

    -- Open notes linking to the current buffer.
    opts.desc = 'Open Backlinked Notes'
    map("n", "<leader>zb", "<Cmd>ZkBacklinks<CR>", opts)
    -- Alternative for backlinks using pure LSP and showing the source context.
    --map('n', '<leader>zb', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
    -- Open notes linked by the current buffer.
    opts.desc = 'Open Linked Notes'
    map("n", "<leader>zl", "<Cmd>ZkLinks<CR>", opts)

    -- Preview a linked note.
    opts.desc = 'Preview Note Under Cursor'
    map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    -- Open the code actions for a visual selection.
    opts.desc = 'Code Actions For Selection'
    map("v", "<leader>za", ":'<,'>lua vim.lsp.buf.range_code_action()<CR>", opts)

    -- Conceal markdown links
    vim.opt_local.conceallevel = 2
end
