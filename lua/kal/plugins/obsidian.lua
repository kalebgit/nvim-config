return {
  "epwalsh/obsidian.nvim", 
  dependencies = {
    "nvim-lua/plenary.nvim"
  }, 
  opts = {
    workspaces = {
      {
        name= "kalnotes", 
        path = "/Users/emi/Documents/kalnotes"
      }
    }, 
    completion = {
      nvim_cmp = true
    },
    notes_subdir = "notes", 
    new_notes_location= "notes_subdir",

    --its still missing daily notes template
    

      mappings = {
    -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    -- Toggle check-boxes.
    ["<leader>ch"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true },
    },
    ["<leader>ont"] = {
        action = function()

          return require("obsidian").util.insert_template("Newsletter-Issue")
        end
      },
    -- Smart action depending on context, either follow link or toggle checkbox.
    ["<cr>"] = {
      action = function()
        return require("obsidian").util.smart_action()
      end,
      opts = { buffer = true, expr = true },
    }
  },

     templates = {
    folder = "templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
      tags=""
  },
    
    ui = {enable = false}
  }
}
