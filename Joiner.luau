if not a or a == "" then
    game:GetService("Players").LocalPlayer:Kick("missing JobId!\nhttps://discord.gg/5QuSfb2nmT")
    return
end

local PlaceId = 4442272183

if game.PlaceId ~= PlaceId then
    queue_on_teleport([[ 
        task.wait(5)
        if game.JobId ~= "]] .. a .. [[" then
            game:GetService("TeleportService"):TeleportToPlaceInstance(]] .. PlaceId .. [[, "]] .. a .. [[")
        end
    ]])
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
else
    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceId, a)
end
