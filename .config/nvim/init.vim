set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua <<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = { "ruby" },
  	highlight = {
		enable = true,
		disable = {},
  	},
  	incremental_selection = {
		enable = true,
		keymaps = {
		    init_selection = "gnn",
		  	node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
  	indent = {
		enable = true,
		disable = {'ruby'}
	},
}
EOF
