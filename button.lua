HideToggler = HideToggler or {}
HideToggler.ADDON_NAME = "HideToggler"
HideToggler.DEPENDENCIES = {
    { addon = "HideGroupNecro", method = "toggleHide" },
    { addon = "Speedrun",       method = "HideGroupToggle" }
}

function HideToggler.createButton()
    if not LibChatMenuButton then
        d("LibChatMenuButton not found. HideToggler requires this library.")
        return
    end

    HideToggler.button = LibChatMenuButton.addChatButton("HideTogglerButton", HideToggler.buttonIcon(),
        HideToggler.buttonTooltip(), function() HideToggler.toggleLanguage() end)
end

function HideToggler.toggleLanguage()
    for _, dep in ipairs(HideToggler.DEPENDENCIES) do
        if _G[dep.addon] and _G[dep.addon][dep.method] then
            _G[dep.addon][dep.method]()
            return
        end
    end

    d("HideGroupNecro or Speedrun not found")
end

function HideToggler.buttonTooltip()
    return "Toggle /hidegroup"
end

function HideToggler.buttonIcon()
    return { "HideToggler/imgs/hidegroup.dds", "HideToggler/imgs/hidegroup_hover.dds" }
end
