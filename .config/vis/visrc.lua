-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	vis.registers['"'] = { io.popen("vis-clipboard --paste"):read("*all") }
	vis:map(vis.modes.NORMAL, '<C-h>', '<C-w>h')
	vis:map(vis.modes.NORMAL, '<C-l>', '<C-w>l')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win) -- luacheck: no unused args
	-- Your per window configuration options e.g.
	-- vis:command('set number')
	vis:command('set relativenumbers')
	vis:command('set tabwidth 2')
	vis:command('set autoindent')
end)
