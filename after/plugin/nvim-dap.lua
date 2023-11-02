local dap = require("dap")

-- Set keymaps to control the debugger
vim.keymap.set('n', '<F5>', require'dap'.continue)
vim.keymap.set('n', '<F10>', require'dap'.step_over)
vim.keymap.set('n', '<F11>', require'dap'.step_into)
vim.keymap.set('n', '<F12>', require'dap'.step_out)
vim.keymap.set('n', '<leader>b', require'dap'.toggle_breakpoint)
vim.keymap.set('n', '<leader>B', function()
    require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)
vim.fn.sign_define('DapBreakpoint',
                   {text = '🛑', texthl = '', linehl = '', numhl = ''})

-- dap adapters
require("dap").adapters["pwa-node"] = {
    type = "server",
    host = "localhost",
    port = "${port}",
    executable = {
        command = "node",
        -- 💀 Make sure to update this path to point to your installation
        args = {"/Users/mickael/Work/js-debug/src/dapDebugServer.js", "${port}"}
    }
}

require("dap").adapters["pwa-chrome"] = {
    type = "server",
    host = "localhost",
    port = "${port}",
    executable = {
        command = "node",
        -- 💀 Make sure to update this path to point to your installation
        args = {"/Users/mickael/Work/js-debug/src/dapDebugServer.js", "${port}"}
    }
}

-- dap configurations
local js_based_languages = {
    "typescript", "javascript", "typescriptreact", "javascriptreact"
}

for _, language in ipairs(js_based_languages) do
    require("dap").configurations[language] = {
        {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            cwd = "${workspaceFolder}"
        }, {
            type = "pwa-node",
            request = "attach",
            name = "Attach",
            protocol = "inspector",
            -- processId = require'dap.utils'.pick_process,
            cwd = "${workspaceFolder}",
            restart = true
        }, {
            type = "pwa-chrome",
            request = "launch",
            name = "Debug Fasst frontend",
            url = "http://localhost:8000",
            webRoot = "${workspaceFolder}",
            userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir"
        }
    }
end
