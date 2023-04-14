local status_ok, _ = pcall(require, "knap")
if not status_ok then
	return
end

-- Set global settings for knap
local gknapsettings = {
	mdoutputext = "pdf",
	mdtohtml = "pandoc --standalone %docroot% -o %outputfile%",
	mdtohtmlviewerlaunch = "open -a Safari %outputfile%",
	mdtohtmlviewerrefresh = "none",
	mdtopdf = "pandoc %docroot% -o %outputfile%",
	mdtopdfviewerlaunch = "open -a Preview %outputfile%",
	mdtopdfviewerrefresh = "none",
	markdownoutputext = "pdf",
	markdowntohtml = "pandoc --standalone %docroot% -o %outputfile",
	markdowntohtmlviewerlaunch = "open -a Safari %outputfile%",
	markdowntohtmlviewerrefresh = "none",
	markdowntopdf = "pandoc %docroot% -o %outputfile%",
	markdowntopdfviewerlaunch = "open -a Preview %outputfile",
	markdowntopdfviewerrefresh = "none",
	texoutputext = "pdf",
  textopdf = "tectonic -X build",
  textopdfviewerlaunch = "open -a Preview %outputfile%",
  textopdfviewerrefresh = "none",
	delay = 250,
}
vim.g.knap_settings = gknapsettings

-- KEYBINDINGS IN WHICHKEY
-- F5 processes the document once, and refreshes the view
-- vim.keymap.set('n','<F5>', function() require("knap").process_once() end)
-- F6 closes the viewer application, and allows settings to be reset
-- vim.keymap.set('n','<F6>', function() require("knap").close_viewer() end)
-- F7 toggles the auto-processing on and off
-- vim.keymap.set('n','<F7>', function() require("knap").toggle_autopreviewing() end)
