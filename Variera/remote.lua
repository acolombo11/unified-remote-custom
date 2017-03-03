local dev = require("device");
local kb = require("keyboard");

-- Documentation
-- https://github.com/unifiedremote/Docs

actions.open_youtube = function()
	os.start("firefox", "-url http://www.youtube.com/tv");
end

actions.open_netflix = function()
	os.start("firefox", "-url http://www.netflix.com");
end

actions.firefox_fullscreen = function()
	kb.press("f11");
end
