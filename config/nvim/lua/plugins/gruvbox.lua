return {
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		name = "gruvbox",
		init = function()
			vim.g.gruvbox_material_enable_italic = 1
			vim.cmd([[
			     let g:gruvbox_material_ui_contrast = 'high'
			     let g:gruvbox_material_background = 'medium'
			     let g:gruvbox_material_enable_bold = 1
			     let g:gruvbox_material_sign_column_background = 'grey'
			   ]])
			vim.cmd.colorscheme("gruvbox-material")

			vim.cmd.hi("Comment gui=none")
		end,
	},
}
