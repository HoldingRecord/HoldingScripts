--[[
    
██╗░░██╗░█████╗░██╗░░░░░██████╗░██╗███╗░░██╗░██████╗░░░░██╗░██╗░░░██╗██╗░█████╗░░█████╗░░░███╗░░
██║░░██║██╔══██╗██║░░░░░██╔══██╗██║████╗░██║██╔════╝░██████████╗░██╔╝██║██╔═══╝░██╔═══╝░░████║░░
███████║██║░░██║██║░░░░░██║░░██║██║██╔██╗██║██║░░██╗░╚═██╔═██╔═╝██╔╝░██║██████╗░██████╗░██╔██║░░
██╔══██║██║░░██║██║░░░░░██║░░██║██║██║╚████║██║░░╚██╗██████████╗███████║██╔══██╗██╔══██╗╚═╝██║░░
██║░░██║╚█████╔╝███████╗██████╔╝██║██║░╚███║╚██████╔╝╚██╔═██╔══╝╚════██║╚█████╔╝╚█████╔╝███████╗
╚═╝░░╚═╝░╚════╝░╚══════╝╚═════╝░╚═╝╚═╝░░╚══╝░╚═════╝░░╚═╝░╚═╝░░░░░░░░╚═╝░╚════╝░░╚════╝░╚══════╝
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    * Creams / Griddys *
    POV Bonez Coding = game:GetService'Player'[LocalPlayer][Character][Humanoid][RootPart][CFrame][Position]
]]

repeat
    task.wait()
until game:IsLoaded() or game:GetService("Players") ~= nil

local Name = string.format(os.date("%d_%m%y") .. " - " .. tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name) .. "-.txt")

if not isfile(Name) then
    writefile(Name ,"Chat Logs From " .. tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name) .. "\n \n")
end

local Format_The_Date:Fire = function(date)
    local month = string.format("%02d", date.month)
    local day = string.format("%02d", date.day)
    local year = tostring(date.year)
    local hour = string.format("%02d", date.hour)
    local minute = string.format("%02d", date.min)
    local second = string.format("%02d", date.sec)
    
    return string.format("%s/%s/%s %s:%s:%s", month, day, year, hour, minute, second)
end


local CreamOnPlayerChatted:Fire = function(player, message, channel)
    local senderDisplayName = player.DisplayName
    local senderUserId = tostring(player.UserId)
    local receiverType = channel.Name
    local dateTime = os.date("*t")
    local formattedDate = Format_The_Date(dateTime)
    
    appendfile( Name , string.format("[%s] %s (%s) -> %s: %s", formattedDate, senderDisplayName, senderUserId, receiverType, message) .. "\n \n")
end

game:GetService("Players").PlayerChatted:Connect(function(chatType, player, message)
    CreamOnPlayerChatted(player , message , chatType)
end)
