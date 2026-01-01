-- ruin.lol UI Library
-- Converts your static UI into a dynamic library

local ruin = {}
ruin.__index = ruin

-- Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

-- Colors
local Colors = {
    Background = Color3.fromRGB(11, 11, 10),
    TabActive = Color3.fromRGB(11, 11, 10),
    TabInactive = Color3.fromRGB(30, 31, 29),
    Border = Color3.fromRGB(55, 55, 62),
    Text = Color3.fromRGB(194, 194, 194),
    ToggleOn = Color3.fromRGB(108, 107, 146),
    ToggleOff = Color3.fromRGB(30, 30, 31),
    Section = Color3.fromRGB(21, 21, 20),
    Button = Color3.fromRGB(34, 34, 34)
}

-- Main function to create UI
function ruin.new(config)
    config = config or {}
    
    local self = setmetatable({}, ruin)
    
    -- Store UI data
    self.Tabs = {}
    self.Elements = {}
    self.Toggles = {}
    self.CurrentTab = nil
    
    -- Configuration
    self.Config = {
        Name = config.Name or "ruin.lol",
        Position = config.Position or UDim2.new(0.1, 0, 0.1, 0),
        Size = config.Size or UDim2.new(0, 469, 0, 611),
        Keybind = config.Keybind or Enum.KeyCode.RightControl,
        Visible = config.Visible ~= false
    }
    
    -- Create the base UI
    self:CreateBaseUI()
    
    -- Setup keybind
    if self.Config.Keybind then
        self:SetupKeybind()
    end
    
    return self
end

-- Create the base UI structure
function ruin:CreateBaseUI()
    -- ScreenGui
    self.ScreenGui = Instance.new("ScreenGui")
    self.ScreenGui.Name = "ruin.lol"
    self.ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    self.ScreenGui.ResetOnSpawn = false
    self.ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Main Frame
    self.MainFrame = Instance.new("Frame")
    self.MainFrame.Name = "Frame"
    self.MainFrame.BackgroundColor3 = Colors.Background
    self.MainFrame.BorderColor3 = Colors.Border
    self.MainFrame.Position = self.Config.Position
    self.MainFrame.Size = self.Config.Size
    self.MainFrame.Parent = self.ScreenGui
    
    -- Make draggable
    self:MakeDraggable(self.MainFrame)
    
    -- Main UI Container
    self.MainUI = Instance.new("Frame")
    self.MainUI.Name = "MainUI"
    self.MainUI.BackgroundColor3 = Colors.Background
    self.MainUI.BorderColor3 = Colors.Border
    self.MainUI.Position = UDim2.new(0.0117, 0, 0.0396, 0)
    self.MainUI.Size = UDim2.new(0, self.Config.Size.X.Offset - 11, 0, self.Config.Size.Y.Offset - 31)
    self.MainUI.Parent = self.MainFrame
    
    -- Header
    self.Header = Instance.new("TextLabel")
    self.Header.Name = "Header"
    self.Header.BackgroundTransparency = 1
    self.Header.Position = UDim2.new(0, 0, -0.0607, 0)
    self.Header.Size = UDim2.new(0, 200, 0, 35)
    self.Header.Font = Enum.Font.SourceSans
    self.Header.Text = self.Config.Name
    self.Header.TextColor3 = Color3.fromRGB(220, 220, 220)
    self.Header.TextSize = 14
    self.Header.TextXAlignment = Enum.TextXAlignment.Left
    self.Header.Parent = self.MainUI
    
    -- Tabs Container
    self.TabsContainer = Instance.new("Frame")
    self.TabsContainer.Name = "TabsContainer"
    self.TabsContainer.BackgroundTransparency = 1
    self.TabsContainer.Size = UDim2.new(1, 0, 0, 24)
    self.TabsContainer.Parent = self.MainUI
    
    -- Content Area
    self.ContentArea = Instance.new("Frame")
    self.ContentArea.Name = "ContentArea"
    self.ContentArea.BackgroundTransparency = 1
    self.ContentArea.Position = UDim2.new(0, 0, 0.0414, 0)
    self.ContentArea.Size = UDim2.new(1, 0, 1, -24)
    self.ContentArea.Parent = self.MainUI
    
    -- Separator
    local Separator = Instance.new("Frame")
    Separator.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
    Separator.BorderSizePixel = 0
    Separator.Position = UDim2.new(0.012, 0, 0.03, 0)
    Separator.Size = UDim2.new(0.763, 100, 0.002, 0)
    Separator.Parent = self.MainFrame
end

-- Make frame draggable
function ruin:MakeDraggable(frame)
    local dragging = false
    local dragInput, startPos, startDragPos
    
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            startDragPos = input.Position
            startPos = frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            local delta = input.Position - startDragPos
            frame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
end

-- Setup keybind to toggle UI
function ruin:SetupKeybind()
    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == self.Config.Keybind then
            self:Toggle()
        end
    end)
end

-- Add a tab
function ruin:Tab(name)
    -- Create tab button
    local TabButton = Instance.new("TextButton")
    TabButton.Name = name .. "Tab"
    TabButton.BackgroundColor3 = Colors.TabInactive
    TabButton.BorderSizePixel = 0
    TabButton.Size = UDim2.new(0, 90, 0, 24)
    TabButton.Font = Enum.Font.SourceSans
    TabButton.Text = name
    TabButton.TextColor3 = Colors.Text
    TabButton.TextSize = 14
    
    -- Position tab
    local xPos = 0
    for _, tab in pairs(self.Tabs) do
        xPos = xPos + 90
    end
    TabButton.Position = UDim2.new(0, xPos, 0, 0)
    TabButton.Parent = self.TabsContainer
    
    -- Create tab content frame
    local ContentFrame = Instance.new("Frame")
    ContentFrame.Name = name .. "Frame"
    ContentFrame.BackgroundTransparency = 1
    ContentFrame.Size = UDim2.new(1, 0, 1, 0)
    ContentFrame.Visible = false
    ContentFrame.Parent = self.ContentArea
    
    -- Tab data
    local TabData = {
        Name = name,
        Button = TabButton,
        Frame = ContentFrame,
        Elements = {}
    }
    
    table.insert(self.Tabs, TabData)
    
    -- Tab click event
    TabButton.MouseButton1Click:Connect(function()
        self:SwitchTab(name)
    end)
    
    -- Set first tab as active
    if #self.Tabs == 1 then
        self:SwitchTab(name)
    end
    
    return TabData
end

-- Switch to a specific tab
function ruin:SwitchTab(tabName)
    -- Hide all tabs
    for _, tab in pairs(self.Tabs) do
        tab.Frame.Visible = false
        tab.Button.BackgroundColor3 = Colors.TabInactive
    end
    
    -- Show selected tab
    for _, tab in pairs(self.Tabs) do
        if tab.Name == tabName then
            tab.Frame.Visible = true
            tab.Button.BackgroundColor3 = Colors.TabActive
            self.CurrentTab = tab
            break
        end
    end
end

-- Add a section
function ruin:Section(config)
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    config = config or {}
    
    local SectionFrame = Instance.new("Frame")
    SectionFrame.Name = "Section"
    SectionFrame.BackgroundColor3 = Colors.Section
    SectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SectionFrame.Position = config.position or UDim2.new(0.015, 0, 0.02, 0)
    SectionFrame.Size = config.size or UDim2.new(0.475, 0, 0.3, 0)
    SectionFrame.Parent = self.CurrentTab.Frame
    
    -- Add title if provided
    if config.text then
        local Title = Instance.new("TextLabel")
        Title.Text = config.text
        Title.TextColor3 = Colors.Text
        Title.BackgroundTransparency = 1
        Title.Size = UDim2.new(1, 0, 0, 25)
        Title.Font = Enum.Font.SourceSans
        Title.TextSize = 14
        Title.TextXAlignment = Enum.TextXAlignment.Center
        Title.Parent = SectionFrame
    end
    
    return SectionFrame
end

-- Add a toggle (like your TypeWrite buttons)
function ruin:Toggle(config)
    if not config then
        warn("Toggle requires a configuration table")
        return nil
    end
    
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.CurrentTab.Frame
    local name = config.text or config.name or "Toggle"
    local state = config.state or false
    local callback = config.callback or function() end
    
    -- Create toggle button (like TypeWrite)
    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Name = name .. "Toggle"
    ToggleButton.BackgroundColor3 = state and Colors.ToggleOn or Colors.ToggleOff
    ToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ToggleButton.Position = config.position or UDim2.new(0.078, 0, #self.Elements * 0.07, 0)
    ToggleButton.Size = config.size or UDim2.new(0, -9, 0, -9)
    ToggleButton.AutoButtonColor = false
    ToggleButton.Text = ""
    ToggleButton.Parent = parent
    
    -- Create label (like your TextLabel)
    local Label = Instance.new("TextLabel")
    Label.Text = name
    Label.TextColor3 = Colors.Text
    Label.BackgroundTransparency = 1
    Label.Position = UDim2.new(-0.2, 0, #self.Elements * 0.07 + 0.16, 0)
    Label.Size = UDim2.new(0, 186, 0, 29)
    Label.Font = Enum.Font.SourceSans
    Label.TextSize = 14
    Label.Parent = parent
    
    -- Toggle data
    local ToggleData = {
        Name = name,
        State = state,
        Button = ToggleButton,
        Label = Label,
        Callback = callback
    }
    
    -- Toggle click
    ToggleButton.MouseButton1Click:Connect(function()
        ToggleData.State = not ToggleData.State
        ToggleButton.BackgroundColor3 = ToggleData.State and Colors.ToggleOn or Colors.ToggleOff
        callback(ToggleData.State)
    end)
    
    table.insert(self.Elements, ToggleButton)
    table.insert(self.Toggles, ToggleData)
    
    return ToggleData
end

-- Add a button (like your TextButton)
function ruin:Button(config)
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.CurrentTab.Frame
    
    local Button = Instance.new("TextButton")
    Button.Name = config.text or "Button"
    Button.Text = config.text or "Button"
    Button.TextColor3 = Colors.Text
    Button.BackgroundColor3 = Colors.Button
    Button.BorderSizePixel = 0
    Button.Size = config.size or UDim2.new(0, 200, 0, 18)
    Button.Position = config.position or UDim2.new(0.041, 0, #self.Elements * 0.07, 0)
    Button.Font = Enum.Font.SourceSans
    Button.TextSize = 14
    Button.Parent = parent
    
    if config.callback then
        Button.MouseButton1Click:Connect(config.callback)
    end
    
    table.insert(self.Elements, Button)
    return Button
end

-- Add a textbox (like your TextBox)
function ruin:Textbox(config)
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.CurrentTab.Frame
    
    local Textbox = Instance.new("TextBox")
    Textbox.Name = config.text or "Textbox"
    Textbox.PlaceholderText = config.placeholder or ""
    Textbox.Text = config.default or ""
    Textbox.TextColor3 = Colors.Text
    Textbox.BackgroundColor3 = Colors.Button
    Textbox.BorderSizePixel = 0
    Textbox.Size = config.size or UDim2.new(0, 200, 0, 17)
    Textbox.Position = config.position or UDim2.new(0.041, 0, #self.Elements * 0.07, 0)
    Textbox.Font = Enum.Font.SourceSans
    Textbox.TextSize = 14
    Textbox.Parent = parent
    
    if config.callback then
        Textbox.FocusLost:Connect(function()
            config.callback(Textbox.Text)
        end)
    end
    
    table.insert(self.Elements, Textbox)
    return Textbox
end

-- Add a label
function ruin:Label(config)
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.CurrentTab.Frame
    
    local Label = Instance.new("TextLabel")
    Label.Text = config.text or "Label"
    Label.TextColor3 = Colors.Text
    Label.BackgroundTransparency = 1
    Label.Size = config.size or UDim2.new(0, 186, 0, 29)
    Label.Position = config.position or UDim2.new(-0.2, 0, #self.Elements * 0.07, 0)
    Label.Font = Enum.Font.SourceSans
    Label.TextSize = 14
    Label.Parent = parent
    
    table.insert(self.Elements, Label)
    return Label
end

-- Toggle UI visibility
function ruin:Toggle()
    self.MainFrame.Visible = not self.MainFrame.Visible
end

-- Show UI
function ruin:Show()
    self.MainFrame.Visible = true
end

-- Hide UI
function ruin:Hide()
    self.MainFrame.Visible = false
end

-- Destroy UI
function ruin:Destroy()
    self.ScreenGui:Destroy()
    self.Tabs = {}
    self.Elements = {}
    self.Toggles = {}
end

-- Get toggle state
function ruin:GetState(name)
    for _, toggle in pairs(self.Toggles) do
        if toggle.Name == name then
            return toggle.State
        end
    end
    return nil
end

-- Set toggle state
function ruin:SetState(name, state)
    for _, toggle in pairs(self.Toggles) do
        if toggle.Name == name then
            toggle.State = state
            toggle.Button.BackgroundColor3 = state and Colors.ToggleOn or Colors.ToggleOff
            if toggle.Callback then
                toggle.Callback(state)
            end
            return true
        end
    end
    return false
end

return ruin
