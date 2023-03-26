local Connections = {}
local Put = function(Message)
    print(Message)
end

local Insert = function(Message)
    task.spawn(function()
        table.insert(Connections , game:GetService("RunService").PreRender:Connect(function()
            Put(Message)
        end))
    end)
end

Insert("Connection Will Be Lost In 2 Seconds")
task.wait(2)
for _ , Connect in next , Connections do
    Connect:Disconnect()
end
