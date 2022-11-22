local f = CreateFrame("Frame")

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


f:RegisterEvent("PLAYER_LEVEL_UP")
f:RegisterEvent("ACHIEVEMENT_EARNED")
f:SetScript("OnEvent", f.OnEvent)