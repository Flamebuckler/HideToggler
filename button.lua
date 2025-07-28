HideToggler = HideToggler or {}

function HideToggler.createButton()
    HideToggler.button = LibChatMenuButton.addChatButton("HideTogglerButton", HideToggler.buttonIcon(), HideToggler.buttonTooltip(), function() HideToggler.toggleLanguage() end)
end

function HideToggler.toggleLanguage()
    if HideGroupNecro then
        -- d("hidegroup => HidegroupNecro")
        HideGroupNecro.toggleHide()
        return
    end

    if Speedrun then
        -- d("hidegroup => Speedrun")
        Speedrun.HideGroupToggle()
        return
    end

     d("HidegroupNecro or Speedrun not found")
end

function HideToggler.buttonTooltip()
    return "Toggle /hidegroup"
end

function HideToggler.buttonIcon()
    return {"HideToggler/imgs/hidegroup.dds","HideToggler/imgs/hidegroup_hover.dds"}
end
