return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- disable the keymap to change buffer
    { "<leader>,", false },
    -- add a keymap to grep files
    { "<c-f>", LazyVim.pick("live_grep") },
  },
}
