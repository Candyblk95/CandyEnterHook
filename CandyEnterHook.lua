-- Create a frame to listen for chat activation
local f = CreateFrame("Frame")

-- Hook into the function Blizzard calls when you hit Enter
hooksecurefunc("ChatFrame_OpenChat", function()
    -- Fire a WeakAura custom event
    if WeakAuras then
        WeakAuras.ScanEvents("CANDY_UI_TOGGLE")
    end
end)
