  return {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = false, -- Disable automatic suggestions
        keymap = {
          accept = "<Tab>", -- Change this to your preferred key
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = { enabled = false },
    },
    config = function(_, opts)
      require("copilot").setup(opts)
      -- Map a key to manually trigger Copilot suggestions
      vim.api.nvim_set_keymap("i", "<C-Space>", "copilot#Accept('<CR>')", { silent = true, expr = true })
    end,
  }

