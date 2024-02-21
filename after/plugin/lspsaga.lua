local status, lspsaga = pcall(require, "lspsaga")
if (not status) then return end

lspsaga.setup({
  lightbulb = {
    enable = false,
    sign = false,             -- show sign in status column
    debounce = 50,            -- timer debounce
    sign_priority = 40,       -- sign priority
    virtual_text = false,     -- show virtual text at the end of line
    enable_in_insert = false
  },

  code_action_prompt = { enable = false }
})
