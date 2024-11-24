-- Library UI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")
local TabsFrame = Instance.new("Frame")
local Tab1 = Instance.new("TextButton")
local Tab2 = Instance.new("TextButton")
local ContentFrame = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")

-- ScreenGui properties
ScreenGui.Name = "CustomMenu"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

-- MainFrame properties
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
MainFrame.Visible = true

-- Logo properties
Logo.Name = "Logo"
Logo.Parent = MainFrame
Logo.BackgroundTransparency = 1
Logo.Position = UDim2.new(0.5, -50, 0, 10)
Logo.Size = UDim2.new(0, 100, 0, 50)
Logo.Image = "rbxassetid://106634247182342" -- Thay <LOGO_IMAGE_ID> bằng ID logo của bạn

-- TabsFrame properties
TabsFrame.Name = "TabsFrame"
TabsFrame.Parent = MainFrame
TabsFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TabsFrame.Size = UDim2.new(0, 100, 0, 200)
TabsFrame.Position = UDim2.new(0, 10, 0, 70)

-- Tab1 properties
Tab1.Name = "Tab1"
Tab1.Parent = TabsFrame
Tab1.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Tab1.Size = UDim2.new(0, 100, 0, 30)
Tab1.Text = "Tab 1"

-- Tab2 properties
Tab2.Name = "Tab2"
Tab2.Parent = TabsFrame
Tab2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Tab2.Size = UDim2.new(0, 100, 0, 30)
Tab2.Position = UDim2.new(0, 0, 0, 40)
Tab2.Text = "Tab 2"

-- ContentFrame properties
ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ContentFrame.Size = UDim2.new(0, 270, 0, 200)
ContentFrame.Position = UDim2.new(0, 120, 0, 70)

-- CloseButton properties
CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -40, 0, 10)
CloseButton.Text = "X"

-- Functionality
local isVisible = true
CloseButton.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    MainFrame.Visible = isVisible
end)

Tab1.MouseButton1Click:Connect(function()
    ContentFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 150) -- Nội dung Tab 1
end)

Tab2.MouseButton1Click:Connect(function()
    ContentFrame.BackgroundColor3 = Color3.fromRGB(150, 50, 50) -- Nội dung Tab 2
end)