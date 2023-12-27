return {
    {
        "dcampos/cmp-snippy",
        dependencies = {
            "hrsh7th/nvim-cmp",
            "dcampos/nvim-snippy",
        },
        config = function()
            require 'cmp'.setup({
                snippet = {
                    expand = function(args)
                        require 'snippy'.expand_snippet(args.body)
                    end
                },
                sources = {
                    { name = 'snippy' }
                }
            })
        end,
    }
}
