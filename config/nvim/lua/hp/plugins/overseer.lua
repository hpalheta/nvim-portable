return {
  "stevearc/overseer.nvim",
  opts = {},
  keys = {
    { "<leader>or", "<cmd>OverseerRun<CR>", desc = "Overseer run task" },
    { "<leader>ot", "<cmd>OverseerToggle<CR>", desc = "Overseer toggle" },
    { "<leader>oa", "<cmd>OverseerTaskAction<CR>", desc = "Overseer task action" },
  },
  config = function(_, opts)
    local overseer = require("overseer")
    overseer.setup(opts)

    overseer.register_template({
      name = "Nextflow: run main.nf",
      builder = function()
        return {
          cmd = { "nextflow" },
          args = { "run", "main.nf", "-resume" },
          components = { "default" },
        }
      end,
      condition = {
        filetype = { "nextflow", "groovy" },
      },
    })

    overseer.register_template({
      name = "Nextflow: run current profile",
      builder = function()
        local profile = vim.g.hp_project_profile or "standard"
        return {
          cmd = { "nextflow" },
          args = { "run", "main.nf", "-profile", profile, "-resume" },
          components = { "default" },
        }
      end,
    })

    overseer.register_template({
      name = "Tail .nextflow.log",
      builder = function()
        return {
          cmd = { "bash" },
          args = { "-lc", "test -f .nextflow.log && tail -f .nextflow.log || echo '.nextflow.log not found'" },
          components = { "default" },
        }
      end,
    })

    overseer.register_template({
      name = "Slurm: squeue",
      builder = function()
        return {
          cmd = { "bash" },
          args = { "-lc", "squeue -u $USER" },
          components = { "default" },
        }
      end,
    })

    overseer.register_template({
      name = "Slurm: tail latest log",
      builder = function()
        return {
          cmd = { "bash" },
          args = { "-lc", "ls -1t logs/*.log 2>/dev/null | head -n 1 | xargs -r tail -f" },
          components = { "default" },
        }
      end,
    })
  end,
}
