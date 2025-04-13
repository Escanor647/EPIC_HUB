local function applyWhiteText(obj)
    if obj:IsA("TextLabel") or obj:IsA("TextButton") then
        obj.TextColor3 = Color3.new(1, 1, 1)
    end
    for _, child in pairs(obj:GetChildren()) do
        applyWhiteText(child)
    end
end

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "KIEN_HUB_EPIC"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 520, 0, 300)
main.Position = UDim2.new(0.5, -260, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.Active = true
main.Draggable = true
main.Visible = false  -- يبدأ مخفي

local topBar = Instance.new("Frame", main)
topBar.Size = UDim2.new(1, 0, 0, 30)
topBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
topBar.BorderColor3 = Color3.fromRGB(0, 0, 0)

local titleLabel = Instance.new("TextLabel", topBar)
titleLabel.Size = UDim2.new(1, -40, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "KIEN HUB EPIC"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 16
titleLabel.TextXAlignment = Enum.TextXAlignment.Left

local closeButton = Instance.new("TextButton", topBar)
closeButton.Size = UDim2.new(0, 40, 1, 0)
closeButton.Position = UDim2.new(1, -40, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closeButton.Text = "X"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 16
closeButton.MouseButton1Click:Connect(function()
    main.Visible = false
end)

-- زر خارجي لإظهار/إخفاء الواجهة
local toggleBtn = Instance.new("ImageButton", gui)
toggleBtn.Size = UDim2.new(0, 50, 0, 50)
toggleBtn.Position = UDim2.new(0, 20, 0.5, -25)
toggleBtn.BackgroundTransparency = 1
toggleBtn.Image = "rbxassetid://70996907583373"
toggleBtn.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
end)

applyWhiteText(gui)