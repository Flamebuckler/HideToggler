HideToggler = HideToggler or {}
HideToggler.name = "HideToggler"

local function OnAddOnLoaded(eventCode, addOnName)
    if addOnName ~= HideToggler.name then return end

    HideToggler.createButton()

    EVENT_MANAGER:UnregisterForEvent(HideToggler.name, EVENT_ADD_ON_LOADED)
end

EVENT_MANAGER:RegisterForEvent(HideToggler.name, EVENT_ADD_ON_LOADED, OnAddOnLoaded)
