return	{
	"jackplus-xyz/scroll-it.nvim",
	lazy = false,                  -- Set to `true` to lazy-load the plugin, or `false` to load it on startup
	opts = {
		enabled = true,            -- Activates the plugin's functionality after it is loaded
								   -- (Note: This does NOT determine whether the plugin is lazy-loaded)
		reversed = false,          -- Reverse the content extending direction
		hide_line_number = "all",  -- Show line numbers in all windows
		overlap_lines = 3,         -- Number of lines to overlap between adjacent windows for better readability
	},
}
