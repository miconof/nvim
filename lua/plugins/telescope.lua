return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
  },
  config = function()
    require("telescope").setup({
      -- the rest of your telescope config goes here
      defaults = {
        -- path_display = { "smart" },
        scroll_strategy = "limit",
        sorting_strategy = "ascending",
        layout_config = {
          prompt_position = "top",
        },
      },
      extensions = {
        undo = {
          layout_config = {
            preview_width = 0.5,
          },
        },
        -- other extensions:
        -- file_browser = { ... }
      },
      pickers = {
        buffers = {
          previewer = false,
          theme = "dropdown",
          initial_mode = "normal",
          sort_mru = true,
          sort_lastused = true,
        },
        find_files = {
          -- theme = 'ivy', -- 'ivy', 'dropdown', 'cursor'
          layout_config = {
            preview_width = 0.5,
          },
        },
        help_tags = {
          theme = "ivy",
        },
        symbols = {
          theme = "dropdown",
        },
        registers = {
          previewer = false,
          theme = "dropdown",
          initial_mode = "normal",
          sort_mru = true,
          sort_lastused = true,
          layout_config = {
            width = 0.8,
            height = 0.6,
          },
        },
        grep_string = {
          layout_config = {
            preview_width = 0.5,
          },
        },
        search_word = {
          layout_config = {
            preview_width = 0.5,
          },
        },
        live_grep = {
          layout_config = {
            preview_width = 0.5,
          },
        },
      },
    })
    require("telescope").load_extension("undo")
  end,
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- disable the keymap to change buffer
    { "<leader>,", false },
    -- add a keymap to live grep files
    { "<c-f>", mode = { "i", "n", "x", "s" }, LazyVim.pick("live_grep") },
    -- add a keymap to search current string
    { "<m-f>", mode = { "i", "n", "x", "s" }, LazyVim.pick("grep_string") },
    { "<c-b>", mode = { "i", "n", "x", "s" }, LazyVim.pick("buffers") },
    { "<c-u>", mode = { "i", "n", "x", "s" }, "<cmd>Telescope undo<cr>" },
  },
}
