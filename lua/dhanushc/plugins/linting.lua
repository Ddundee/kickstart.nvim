return {
    'mfussenegger/nvim-lint',
    config = function()
        local lint = require 'lint'

        lint.linters_by_ft = {
            -- markdown = { 'markdownlint' },
            javascript = { 'eslint_d' },
            javascriptreact = { 'eslint_d' },
            typescript = { 'eslint_d' },
            typescriptreact = { 'eslint_d' },
        }
    end,
}
