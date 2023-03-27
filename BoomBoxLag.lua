--[[
    
██╗░░██╗░█████╗░██╗░░░░░██████╗░██╗███╗░░██╗░██████╗░░░░██╗░██╗░░░██╗██╗░█████╗░░█████╗░░░███╗░░
██║░░██║██╔══██╗██║░░░░░██╔══██╗██║████╗░██║██╔════╝░██████████╗░██╔╝██║██╔═══╝░██╔═══╝░░████║░░
███████║██║░░██║██║░░░░░██║░░██║██║██╔██╗██║██║░░██╗░╚═██╔═██╔═╝██╔╝░██║██████╗░██████╗░██╔██║░░
██╔══██║██║░░██║██║░░░░░██║░░██║██║██║╚████║██║░░╚██╗██████████╗███████║██╔══██╗██╔══██╗╚═╝██║░░
██║░░██║╚█████╔╝███████╗██████╔╝██║██║░╚███║╚██████╔╝╚██╔═██╔══╝╚════██║╚█████╔╝╚█████╔╝███████╗
╚═╝░░╚═╝░╚════╝░╚══════╝╚═════╝░╚═╝╚═╝░░╚══╝░╚═════╝░░╚═╝░╚═╝░░░░░░░░╚═╝░╚════╝░░╚════╝░╚══════╝
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    * Creams / Griddys *
]]

local Generate = function(Creams)
    local Name = "Holding Lag Script Too Good \n \n"
    for i = 1, Creams do
        Name = Name .. Name
    end
    return Name
end

local Shallam = Generate(150)

local HeartBeat = game:GetService("RunService").Heartbeat:Connect(function()
    task.spawn(function()
        for _, Tool in next , game:GetService("Players").LocalPlayer.Character:GetChildren() do
            if Tool:IsA("Tool") and Tool.Name:find("BoomBox") then
                Tool.Remote:FireServer("PlaySong", Shallam)
            end
        end
    end)
end)

task.wait(1 + 1 / 0.2)
HeartBeat:Disconnect()
