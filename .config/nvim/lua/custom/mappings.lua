---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

-- Nvim DAP
M.nvimdap = {
  -- plugin = true,
  n = {
    ["<leader>dl"] = {"<cmd>lua require'dap'.step_into()<CR>", "Debugger step into"},
    ["<Leader>dj"] = {"<cmd>lua require'dap'.step_over()<CR>", "Debugger step over"},
    ["<Leader>dk"] = {"<cmd>lua require'dap'.step_out()<CR>", "Debugger step out"},
    ["<Leader>dc"] = {"<cmd>lua require'dap'.continue()<CR>", "Debugger continue"},
    ["<Leader>db"] = {"<cmd>lua require'dap'.toggle_breakpoint()<CR>", "Debugger toggle breakpoint"},
    ["<Leader>dd"] = {"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", "Debugger set conditional breakpoint"},
    ["<Leader>de"] = {"<cmd>lua require'dap'.terminate()<CR>", "Debugger reset" },
    ["<Leader>dr"] = {"<cmd>lua require'dap'.run_last()<CR>", "Debugger run last"},
  }
}

-- rustaceanvim
M.rustaceanvim = {
  n = {
    ["<Leader>dt"] = {"<cmd> lua vim.command('RustLsp testables')<CR>", "RustLsp testables"}
  }
}

return M
