-- python-lsp-server settings
return {
  settings = {
    pylsp = {
      plugins = {
        autopep8 = { enabled = false },
        pylint = { enabled = true },
      },
    },
  },
}
