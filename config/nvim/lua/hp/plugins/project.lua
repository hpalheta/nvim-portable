return {
  "ahmedkhalf/project.nvim",
  opts = {
    manual_mode = false,
    detection_methods = { "pattern" },
    patterns = {
      ".git",
      "main.nf",
      "nextflow.config",
      "pyproject.toml",
      "Cargo.toml",
      "package.json",
      "manage.py",
    },
    silent_chdir = true,
  },
  config = function(_, opts)
    require("project_nvim").setup(opts)
  end,
}
