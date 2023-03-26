local On = true


local Players = game:GetService("Players"):GetPlayers()

local Get = function()
    for _ , Playas in next , Players do
        if Playas ~= game:GetService("Players").LocalPlayer then
            local args = {
                [1] = "RequestTrade",
                [2] = Playas
            }
            print("Sent Trade Request To " .. tostring(Playas.DisplayName))
            game:GetService("ReplicatedStorage"):FindFirstChild("fatex"):FireServer(unpack(args))
        end
    end
end

while task.wait() do
    if On then
        local Success , Error = pcall(function()
            Get()
        end)
        if Success then
            On = true
        end
        if Error then
            On = false
        end
    end
end
