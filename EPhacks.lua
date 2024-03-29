-- Made by TotoAJ

local enabled = {
    routine_1 = true, -- Infinite Ammo
    routine_2 = true, -- Player ESP
    routine_3 = true, -- NPC ESP
    routine_4 = 25 -- LoopWalk (Set to 0 for false)
}

function routine_1()
    while wait(1) do
        for i, v in pairs(game.Players.LocalPlayer.Status.Ammo:GetChildren()) do
            v.Value = v.Cap.Value
        end
    end
end

function routine_2()
    local Players = workspace.Level.Players
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    highlight.FillColor = Color3.fromRGB(85, 255, 255)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)

    for i, v in pairs(Players:GetChildren()) do
        repeat
            wait()
        until v:FindFirstChild("Character") ~= nil
        if
            v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight")
         then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
    end

    Players.ChildAdded:Connect(
        function(player)
            repeat
                wait()
            until player:FindFirstChild("Character") ~= nil
            if
                player.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                    not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight")
             then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = player.Character
                highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            end
        end
    )

    Players.ChildRemoved:Connect(
        function(playerRemoved)
            if
                playerRemoved:FindFirstChild("Character") ~= nil and
                    playerRemoved.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                    playerRemoved:FindFirstChild("HumanoidRootPart") and
                    playerRemoved.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") ~= nil
             then
                playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
            end
        end
    )

    while wait(1) do
        for i, v in pairs(Players:GetChildren()) do
            repeat
                wait(0.5)
            until v:FindFirstChild("Character") ~= nil
            if
                v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                    not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight")
             then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            end
        end
    end
end

function routine_3()
    local Actors = workspace.Level.Actors
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    highlight.FillColor = Color3.fromRGB(85, 255, 255)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)

    for i, v in pairs(Actors:GetChildren()) do
        repeat
            wait()
        until v:FindFirstChild("Character") ~= nil
        if
            v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight")
         then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
    end

    Actors.ChildAdded:Connect(
        function(player)
            repeat
                wait()
            until player:FindFirstChild("Character") ~= nil
            if
                player.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                    not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight")
             then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = player.Character
                highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            end
        end
    )

    Actors.ChildRemoved:Connect(
        function(playerRemoved)
            if
                playerRemoved:FindFirstChild("Character") ~= nil and
                    playerRemoved.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                    playerRemoved:FindFirstChild("HumanoidRootPart") and
                    playerRemoved.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") ~= nil
             then
                playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
            end
        end
    )

    while wait(1) do
        for i, v in pairs(Actors:GetChildren()) do
            repeat
                wait(0.5)
            until v:FindFirstChild("Character") ~= nil
            if
                v.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                    not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight")
             then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            end
        end
    end
end

function routine_4()
    while wait() do
        if enabled["routine_4"] > 0 then
            game:GetService("Players").LocalPlayer:WaitForChild("Character"):WaitForChild("Humanoid").WalkSpeed =
                enabled["routine_4"]
        end
    end
end

for i, v in pairs(enabled) do
    if v then
        loadstring("pcall(coroutine.wrap(" .. i .. "))")()
    end
end
