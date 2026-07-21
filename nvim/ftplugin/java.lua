-- adapted from https://github.com/mfussenegger/nvim-jdtls (README.md)

-- see "root_dir" in the config table below
local the_root_dir = vim.fs.root(0, {'gradlew', '.git', 'mvnw'})
-- basically it keeps traversing upward until it finds any of those (say .git),
-- then it stops at the parent folder of that, setting it as the_root_dir
-- since indeed that parent folder should be the root directory of the project

-- for data directory configuration, I guess:

-- If you started neovim within `~/dev/xy/project-1`,
-- and if the_root_dir is empty (no Gradle nor Git nor Maven in the project),
-- this would resolve to `project-1`
local project_name = vim.fn.fnamemodify(
  the_root_dir or vim.fn.getcwd(), -- fallbacks are so idiomatic in Lua!
  ':p:h:t'
)
local vimpath = vim.fn.stdpath("data") -- for me it's ~/.local/share/nvim
local workspace_dir = vimpath .. "/my-cache/jdtls-data/" .. project_name

-- See `:help vim.lsp.start` for an overview of the supported `config` options.
local config = {
  name = "jdtls",


  -- `cmd` defines the executable to launch eclipse.jdt.ls.
  -- `jdtls` must be available in $PATH and you must have Python3.9 for this to work.
  --
  -- As alternative you could also avoid the `jdtls` wrapper and launch
  -- eclipse.jdt.ls via the `java` executable
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {
    "jdtls",

    '-data', workspace_dir,
  },


  -- `root_dir` must point to the root of your project.
  -- See `:help vim.fs.root`
  root_dir = the_root_dir, -- I moved this to a separate definition above


  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
    }
  },


  -- This sets the `initializationOptions` sent to the language server
  -- If you plan on using additional eclipse.jdt.ls plugins like java-debug
  -- you'll need to set the `bundles`
  --
  -- See https://codeberg.org/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on any eclipse.jdt.ls plugins you can remove this
  init_options = {
    bundles = {}
  },
}
require('jdtls').start_or_attach(config)
