local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
-- dashboard.section.header.val = {
-- 	[[       .                 ]],
-- 	[[      ":"                ]],
-- 	[[    ___:____     |"\/"|  ]],
-- 	[[  ,'        `.    \  /   ]],
-- 	[[  |  O        \___/  |   ]],
-- 	[[~^~^~^~^~^~^~^~^~^~^~^~^~]],
-- }
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "󱎸  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
  -- Fetch the weather using wttr.in for the given location.
  local weather = vim.fn.systemlist("curl -s 'wttr.in/?format=3'")
  -- Trim the output string.
  weather = vim.trim(weather[1] or "")
  -- If we have an empty string, then set it to "N/A".
  if weather == "" then
    weather = "N/A"
  end
  -- Return the weather string.
  return weather
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
