local f = CreateFrame("Frame")
local ADDON_NAME = "Diiing!"

function f:OnEvent(event, ...)
    self[event](self, event, ...)
end

function f:PLAYER_LEVEL_UP(event)
    PlaySoundFile(554922)
    C_Timer.NewTimer(1.2, function()
        PlaySoundFile(552911)
    end)
end

function f:ACHIEVEMENT_EARNED(event)
    PlaySoundFile(543326)
end

function f:ADDON_LOADED(event, addOnName)
    if addOnName == ADDON_NAME then
        -- self:InitializeOptions()
    end
end

f:RegisterEvent("PLAYER_LEVEL_UP")
f:RegisterEvent("ACHIEVEMENT_EARNED")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", f.OnEvent)


function f:InitializeOptions()
    self.panel = CreateFrame("Frame")
    self.panel.name = ADDON_NAME

    InterfaceOptions_AddCategory(self.panel)
end