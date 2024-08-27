return {
  'rmagatti/auto-session',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
  },

  opts = {
    auto_restore_enabled = false,
    auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    -- log_level = 'debug',
  }, 
  config = function()
   vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", {desc="Restore session for cwd"})
    vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", {desc="Save session for auto session root dir"})
  end
}

