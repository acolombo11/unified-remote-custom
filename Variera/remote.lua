local dev = require("device");
local kb = require("keyboard");

-- Documentation
-- http://www.unifiedremote.com/api

-- Device Library
-- http://www.unifiedremote.com/api/libs/device

-- Codes need to be in the PRONTO format!
-- http://www.remotecentral.com/cgi-bin/files/rcfiles.cgi?area=pronto&db=discrete
-- http://www.unifiedremote.com/tutorials/how-to-use-ir

actions.open_youtube = function()
	os.start("firefox", "-url http://www.youtube.com/tv");
end

actions.open_netflix = function()
	os.start("firefox", "-url http://www.netflix.com");
end

actions.firefox_fullscreen = function()
	kb.press("f11");
end
