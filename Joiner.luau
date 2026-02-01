if not a or a == "" then
    game:GetService("Players").LocalPlayer:Kick("missing JobId!\nhttps://discord.gg/5QuSfb2nmT")
    return
end

local PlaceId = game.PlaceId
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    queue_on_teleport([[ 
        if game.JobId ~= "]] .. a .. [[" then
            game:GetService("TeleportService"):TeleportToPlaceInstance(]] .. PlaceId .. [[, "]] .. a .. [[")
        end
    ]])
    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceId, a)
