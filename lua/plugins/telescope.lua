return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
  },
  config = function()
    require("telescope").setup({
      -- the rest of your telescope config goes here
      extensions = {
        undo = {
          -- telescope-undo.nvim config, see below
        },
        -- other extensions:
        -- file_browser = { ... }
      },
    })
    require("telescope").load_extension("undo")
  end,
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- disable the keymap to change buffer
    { "<leader>,", false },
    -- add a keymap to grep files
    { "<c-f>", LazyVim.pick("live_grep") },
  },
}
