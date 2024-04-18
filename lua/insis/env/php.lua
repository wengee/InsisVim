--- @param config PhpConfig
return function(config)
  return {

    getFormatOnSavePattern = function()
      if config.format_on_save then
        return { "*.php" }
      end
      return {}
    end,

    getTSEnsureList = function()
      return { "php" }
    end,

    getLSPEnsureList = function()
      if config.lsp == "intelephense" then
        return { "intelephense" }
      end
      return {}
    end,

    getLSPConfigMap = function()
      if config.lsp == "intelephense" then
        return {
          intelephense = require("insis.lsp.config.intelephense"),
        }
      end
      return {}
    end,

    getToolEnsureList = function()
      if config.formatter == "phpcsfixer" then
        return { "php-cs-fixer" }
      end
      return {}
    end,

    getNulllsSources = function()
      local null_ls = pRequire("null-ls")
      if not null_ls then
        return {}
      end
      if config.formatter == "phpcsfixer" then
        return { null_ls.builtins.formatting.phpcsfixer.with({}) }
      end
      return {}
    end,

    getNeotestAdapters = function()
      return {}
    end,
  }
end
