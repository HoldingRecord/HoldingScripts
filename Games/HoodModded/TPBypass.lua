local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer

local Connections = {}

local Teleport = function(CFrame , Kords)
    table.insert(Connections , RunService.Heartbeat:Connect(function()
        local Velocity = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Velocity
        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Velocity = Vector3.new(0 , -550 , 0)
        table.insert(Connections , RunService.RenderStepped:Connect((function()
            LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Velocity = Velocity
            task.wait(0/.4)
            for _ , Connection in next , Connections do
                Connection:Disconnect()
            end
        end)))
        task.wait(0/.1)
        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame or Vector3.new(Kords)
    end))
end

Teleport(game:GetService("Workspace"):FindFirstChildWhichIsA("Part").CFrame)
