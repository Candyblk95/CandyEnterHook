-- Fire WA events when chat opens/closes
local f = CreateFrame("Frame")

-- Chat opened (Enter pressed)
hooksecurefunc("ChatFrame_OpenChat", function()
    if WeakAuras then
        WeakAuras.ScanEvents("CANDY_UI_SHOW")
    end
end)

-- Chat closed (Enter again, Esc, clicking away, etc.)
hooksecurefunc("ChatEdit_DeactivateChat", function()
    if WeakAuras then
        WeakAuras.ScanEvents("CANDY_UI_HIDE")
    end
end)
