lua <<EOF

-- local ensure_packer = function()
--     local fn = vim.fn
--     local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--     if fn.empty(fn.glob(install_path)) > 0 then
--         fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--         vim.cmd [[packadd packer.nvim]]
--         return true
--     end
--     return false
-- end
--
-- local packer_bootstrap = ensure_packer()
--
-- -- Setup packer
-- local use = require('packer').use
-- require('packer').startup(function()
--     use 'wbthomason/packer.nvim' -- Package manager
--     use {
--         'kevinhwang91/nvim-hlslens',
--         -- config = function()
--         --     -- require('hlslens').setup() is not required
--         --     require("scrollbar.handlers.search").setup({
--         --         override_lens = function(render, posList, nearest, idx, relIdx)
--         --             local sfw = vim.v.searchforward == 1
--         --             local indicator, text, chunks
--         --             local absRelIdx = math.abs(relIdx)
--         --             if absRelIdx > 1 then
--         --                 indicator = ('%d%s'):format(absRelIdx, sfw ~= (relIdx > 1) and ' N ▲' or ' n ▼')
--         --             elseif absRelIdx == 1 then
--         --                 indicator = sfw ~= (relIdx == 1) and ' N ▲' or ' n ▼'
--         --             else
--         --                 indicator = ''
--         --             end
--         --
--         --             local lnum, col = unpack(posList[idx])
--         --             if nearest then
--         --                 local cnt = #posList
--         --                 if indicator ~= '' then
--         --                     text = (' %s %d / %d '):format(indicator, idx, cnt)
--         --                 else
--         --                     text = (' %d / %d '):format(idx, cnt)
--         --                 end
--         --                 chunks = {{' ', 'Ignore'}, {text, 'HlSearchLensNear'}}
--         --             else
--         --                 local cnt = #posList
--         --                 text = (' %s %d / %d '):format(indicator, idx, cnt)
--         --                 chunks = {{' ', 'Ignore'}, {text, 'HlSearchLens'}}
--         --             end
--         --             render.setVirt(0, lnum - 1, col - 1, chunks, nearest)
--         --         end,
--         --         -- -- override_lens = function() end,
--         --         -- build_position_cb = function(plist, _, _, _)
--         --         --     require("scrollbar.handlers.search").handler.show(plist.start_pos)
--         --         -- end,
--         --     })
--         -- end,
--     }
--     use {
--         "petertriho/nvim-scrollbar",
--         -- requires = { "kevinhwang91/nvim-hlslens" },
--         -- config = function()
--         --     require("scrollbar").setup({
--         --         set_highlights = false,
--         --         handlers = {
--         --             cursor = true,
--         --             diagnostic = true,
--         --             gitsigns = false, -- Requires gitsigns
--         --             handle = true,
--         --             search = true, -- Requires hlslens
--         --             ale = false, -- Requires ALE
--         --         },
--         --     })
--         --
--         -- --     require("scrollbar.handlers.search").setup()
--         -- --     -- require("hlslens").setup({
--         -- --     --     build_position_cb = function(plist, _, _, _)
--         -- --     --         require("scrollbar.handlers.search").handler.show(plist.start_pos)
--         -- --     --     end,
--         -- --     -- })
--             -- vim.cmd([[
--             -- augroup scrollbar_search_hide
--             --     autocmd!
--             --     autocmd CmdlineLeave : lua require('scrollbar.handlers.search').handler.hide()
--             --     autocmd BufEnter * :hi ScrollbarHandle ctermfg=4 ctermbg=4
--             --     autocmd BufEnter * :hi ScrollbarCursor ctermfg=4 ctermbg=4
--             --     autocmd BufEnter * :hi ScrollbarCursorHandle ctermfg=4 ctermbg=4
--             -- augroup END
--             -- ]])
--         -- --
--         -- end,
--     }
--
--     use 'lewis6991/gitsigns.nvim'
--
--   -- Automatically set up your configuration after cloning packer.nvim
--   -- Put this at the end after all plugins
--   if packer_bootstrap then
--     require('packer').sync()
--   end
-- end)

HOME = os.getenv('HOME')

-- nvim-hlslens settings
require('hlslens').setup({
    override_lens = function(render, posList, nearest, idx, relIdx)
        local sfw = vim.v.searchforward == 1
        local indicator, text, chunks
        local absRelIdx = math.abs(relIdx)
        if absRelIdx > 1 then
            indicator = ('%d%s'):format(absRelIdx, sfw ~= (relIdx > 1) and ' N ▲' or ' n ▼')
        elseif absRelIdx == 1 then
            indicator = sfw ~= (relIdx == 1) and ' N ▲' or ' n ▼'
        else
            indicator = ''
        end

        local lnum, col = unpack(posList[idx])
        if nearest then
            local cnt = #posList
            if indicator ~= '' then
                text = (' %s %d / %d '):format(indicator, idx, cnt)
            else
                text = (' %d / %d '):format(idx, cnt)
            end
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLensNear'}}
        else
            local cnt = #posList
            text = (' %s %d / %d '):format(indicator, idx, cnt)
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLens'}}
        end
        render.setVirt(0, lnum - 1, col - 1, chunks, nearest)
    end,
    -- build_position_cb = function(plist, _, _, _)
    --     require("scrollbar.handlers.search").handler.show(plist.start_pos)
    -- end,
})


local kopts = {noremap = true, silent = true}

vim.api.nvim_set_keymap('n', 'n',
    [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', 'N',
    [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
    kopts)
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

vim.api.nvim_set_keymap('n', '<Leader>l', '<Cmd>noh<CR>', kopts)

-- nvim-scrollbar settings
require("scrollbar").setup({
    handlers = {
        cursor = false,
        diagnostic = false,
        gitsigns = false, -- Requires gitsigns
        handle = true,
        search = false, -- Requires hlslens
        ale = false, -- Requires ALE
    },
})

-- nvim-dap settings
local dap = require('dap')
-- dap.adapters.cppdbg = {
--     id = 'cppdbg',
--     type = 'executable',
--     command = HOME .. '/.config/nvim/vscode/extension/debugAdapters/bin/OpenDebugAD7'
-- }
--
-- dap.configurations.cpp = {
--   {
--     name = "Launch file",
--     type = "cppdbg",
--     request = "launch",
--     program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--     cwd = '${workspaceFolder}',
--     stopAtEntry = true,
--     miDebuggerPath = '/usr/local/bin/gdb',
--   },
--   {
--     name = 'Attach to gdbserver :1234',
--     type = 'cppdbg',
--     request = 'launch',
--     MIMode = 'gdb',
--     miDebuggerServerAddress = 'localhost:1234',
--     miDebuggerPath = '/usr/local/bin/gdb',
--     cwd = '${workspaceFolder}',
--     program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--   },
-- }

if vim.fn.filereadable(HOME ..  '/.config/nvim/vscode/extension/adapter/codelldb') == 0 then
    vim.api.nvim_err_writeln('init.lua.vim: codelldb does NOT exist! Please follow nvim-dap guide to deploy codelldb in the appropriate directory')
end

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = HOME ..  '/.config/nvim/vscode/extension/adapter/codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

-- If you want to use this for Rust and C, add something like this:
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

vim.fn.sign_define('DapBreakpoint', { text = "B", texthl = "Identifier", linehl = "CursorLine", numhl = "Statement" })
vim.fn.sign_define('DapBreakpointCondition', { text = "C", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define('DapBreakpointRejected', { text = 'R', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapLogPoint', { text = 'L', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '>>', texthl = 'CursorLineNr', linehl = 'CursorLine', numhl = 'CursorLineNr' })

-- nvim-dap-ui settings
require('dapui').setup({
    layouts = { {
        elements = { {
            id = "scopes",
            size = 0.25
        }, {
            id = "breakpoints",
            size = 0.25
        }, {
            id = "stacks",
            size = 0.25
        }, {
            id = "watches",
            size = 0.25
        } },
        position = "left",
        size = 60
    }, {
        elements = { {
            id = "repl",
            size = 0.5
        }, {
            id = "console",
            size = 0.5
        } },
        position = "bottom",
        size = 40
    } },
})

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--   dapui.close()
-- end

-- neodev.nvim settings
require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
  lspconfig = false,
})

-- vim.lsp.start({
--   name = "lua-language-server",
--   cmd = { "lua-language-server" },
--   before_init = require("neodev.lsp").before_init,
--   root_dir = vim.fn.getcwd(),
--   settings = { Lua = {} },
-- })

-- codicons.nvim settings
require('codicons').setup()

-- nvim-dap-virtual-text settings
require("nvim-dap-virtual-text").setup()

EOF
