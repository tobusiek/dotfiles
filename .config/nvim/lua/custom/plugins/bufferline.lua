return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    -- { "<leader>bd", "<cmd>bp<bar>bd<cr>", desc = "Delete current buffer" },
    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<leader>bp", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<leader>bn", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
  },
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "left",
          },
        },
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "silent",
        always_show_bufferline = true,
      },
    })
  end,
}
