env._G = GLOBAL

--env.require = _G.require

env.modrequire = function(loc) modimport("scripts/"..loc) end
env.RegisterInvItemAtlas = function(atlasname, imagename)
	RegisterInventoryItemAtlas(atlasname, imagename)
    RegisterInventoryItemAtlas(_G.resolvefilepath(atlasname), _G.hash(imagename))
end
env.RegisterItemAtlasFile = function(fname)
    local atlas = _G.io.lines(_G.resolvefilepath(fname))
    for line in atlas do
        local _, _, image = line:find("<Element name=\"(.+)\" u1")
        if image ~= nil then
            RegisterInvItemAtlas(fname, image)
        end
    end
end

--Global Tables
env.STRINGS = _G.STRINGS
env.ACTIONS = _G.ACTIONS

--Global Constants
env.FRAMES = _G.FRAMES
env.EQUIPSLOTS = _G.EQUIPSLOTS
env.UPGRADETYPES = _G.UPGRADETYPES
env.FOODTYPE = _G.FOODTYPE
env.FOODGROUP = _G.FOODGROUP

--RPC Handler
env.RPC = _G.RPC
env.SendRPCToServer = _G.SendRPCToServer

--Global Functions
env.BufferedAction = _G.BufferedAction
env.SpawnPrefab = _G.SpawnPrefab
env.GetGameModeProperty = _G.GetGameModeProperty

--Global Functions
env.ThePlayer = _G.ThePlayer
env.TheWorld = _G.TheWorld
env.TheNet = _G.TheNet

--Netvars
env.net_ushortint = _G.net_ushortint
env.net_bool = _G.net_bool

env.RoundBiasedUp = _G.RoundBiasedUp

--SG Classes
env.State = _G.State
env.TimeEvent = _G.TimeEvent
env.ActionHandler = _G.ActionHandler
env.EventHandler = _G.EventHandler

require("water_debugcommands")

-- Commands for testing.
AddClassPostConstruct("screens/consolescreen", function(self)
    if self.console_edit then
        local water_commands = 
        {
            "supergodmodewater", 
            "setthirst",
        }
        local dictionary = self.console_edit.prediction_widget.word_predictor.dictionaries[3]
        for k, word in pairs(water_commands) do
            table.insert(dictionary.words, word)
        end
    end
end)
