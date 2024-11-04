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
      pickers = {
        buffers = {
          previewer = false,
          theme = "dropdown",
          initial_mode = "normal",
        },
        find_files = {
          -- theme = 'ivy', -- 'ivy', 'dropdown', 'cursor'
          -- layout_strategy = 'vertical',
          -- layout_config = { height = 0.9 },
          -- previewer = false,
          path_display = { "smart" },
          layout_config = {
            prompt_position = "top",
            preview_width = 0.5,
            -- width = 0.7,
          },
          sorting_strategy = "ascending",
        },
        help_tags = {
          theme = "ivy",
        },
        symbols = {
          theme = "dropdown",
        },
        registers = {
          theme = "ivy",
        },
        grep_string = {
          path_display = { "smart" },
          layout_config = {
            prompt_position = "top",
            preview_width = 0.5,
            -- width = 0.7,
          },
          sorting_strategy = "ascending",
        },
        search_word = {
          path_display = { "smart" },
          layout_config = {
            prompt_position = "top",
            preview_width = 0.5,
            -- width = 0.7,
          },
          sorting_strategy = "ascending",
        },
        live_grep = {
          path_display = { "smart" },
          layout_config = {
            prompt_position = "top",
            preview_width = 0.5,
            -- width = 0.7,
          },
          sorting_strategy = "ascending",
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
    -- add a keymap to grep files
    { "<c-f>", LazyVim.pick("live_grep") },
  },
}
