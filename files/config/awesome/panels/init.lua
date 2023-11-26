--require(... .. ".calendar")
--require(... .. ".popups")

--local top_panel = require(... .. ".panels.top-panel")
--local central_panel = require(... .. ".panels.central-panel")
--local info_panel = require(... .. ".panels.info-panel")
local calendar_panel = require(... .. ".calendar")
local notif_panel = require(... .. ".notifications")

local awful = require("awful")
awful.screen.connect_for_each_screen(function(s)
	calendar_panel(s)
	notif_panel(s)
end)
