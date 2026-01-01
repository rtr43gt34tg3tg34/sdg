-- en.solutions UI Library v2.0
-- https://github.com/YOUR_USERNAME/en-solutions-ui

if _G.enSolutions then
    return _G.enSolutions
end

local enSolutions = {}
enSolutions.__index = enSolutions

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

-- Main library function
function enSolutions.new(config)
    config = config or {}
    
    local self = setmetatable({}, enSolutions)
    
    -- UI Data
    self.Tabs = {}
    self.Elements = {}
    self.Toggles = {}
    self.Sections = {}
    self.CurrentTab = nil
    
    -- Configuration
    self.Config = {
        Name = config.Name or "en.solutions",
        Position = config.Position or UDim2.new(0.1076, 0, 0.1018, 0),
        Size = config.Size or UDim2.new(0, 469, 0, 611),
        Keybind = config.Keybind or Enum.KeyCode.RightControl,
        Visible = config.Visible ~= false
    }
    
    -- Create UI
    self:CreateMainUI()
    self:SetupKeybind()
    
    return self
end

-- Create main UI elements
function enSolutions:CreateMainUI()
    -- ScreenGui
    self.ScreenGui = Instance.new("ScreenGui")
    self.ScreenGui.Name = "en.sol"
    self.ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    self.ScreenGui.ResetOnSpawn = false
    
    -- Main Frame
    self.MainFrame = Instance.new("Frame")
    self.MainFrame.Name = "MainFrame"
    self.MainFrame.BackgroundColor3 = Colors.Background
    self.MainFrame.BorderColor3 = Colors.Border
    self.MainFrame.Position = self.Config.Position
    self.MainFrame.Size = self.Config.Size
    self.MainFrame.Parent = self.ScreenGui
    
    -- Make draggable
    self:MakeDraggable(self.MainFrame)
    
    -- Header (Typewriter style)
    self.Header = Instance.new("TextLabel")
    self.Header.Name = "Header"
    self.Header.Text = "en.solutions"
    self.Header.TextColor3 = Color3.fromRGB(220, 220, 220)
    self.Header.BackgroundTransparency = 1
    self.Header.Position = UDim2.new(0, 0, -0.06, 0)
    self.Header.Size = UDim2.new(0, 200, 0, 35)
    self.Header.Font = Enum.Font.SourceSans
    self.Header.TextSize = 14
    self.Header.TextXAlignment = Enum.TextXAlignment.Left
    self.Header.Parent = self.MainFrame
    
    -- Tabs Container
    self.TabsContainer = Instance.new("Frame")
    self.TabsContainer.Name = "TabsContainer"
    self.TabsContainer.BackgroundTransparency = 1
    self.TabsContainer.Size = UDim2.new(1, 0, 0, 24)
    self.TabsContainer.Parent = self.MainFrame
    
    -- Content Area (where tabs show their content)
    self.ContentArea = Instance.new("Frame")
    self.ContentArea.Name = "ContentArea"
    self.ContentArea.BackgroundTransparency = 1
    self.ContentArea.Position = UDim2.new(0, 0, 0.0414, 0)
    self.ContentArea.Size = UDim2.new(1, 0, 1, -24)
    self.ContentArea.Parent = self.MainFrame
    
    -- Separator Line
    local Separator = Instance.new("Frame")
    Separator.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
    Separator.BorderSizePixel = 0
    Separator.Position = UDim2.new(0.012, 0, 0.03, 0)
    Separator.Size = UDim2.new(0.763, 100, 0.002, 0)
    Separator.Parent = self.MainFrame
end

-- Make any frame draggable
function enSolutions:MakeDraggable(frame)
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

-- Setup toggle keybind
function enSolutions:SetupKeybind()
    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == self.Config.Keybind then
            self:Toggle()
        end
    end)
end

-- Add a tab
function enSolutions:Tab(name)
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
    
    -- Position tab (automatically)
    local xPos = 0
    for _, tab in pairs(self.Tabs) do
        xPos = xPos + tab.Button.Size.X.Offset
    end
    TabButton.Position = UDim2.new(0, xPos, 0, 0)
    TabButton.Parent = self.TabsContainer
    
    -- Create tab content frame
    local ContentFrame = Instance.new("Frame")
    ContentFrame.Name = name .. "Content"
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

-- Switch to a tab
function enSolutions:SwitchTab(tabName)
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

-- Add a toggle button
function enSolutions:Toggle(config)
    if not config then
        warn("Toggle requires a configuration table")
        return nil
    end
    
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    -- Default values
    local parent = config.parent or self.CurrentTab.Frame
    local name = config.text or config.name or "Toggle"
    local state = config.state or false
    local callback = config.callback or function() end
    local position = config.position or UDim2.new(0.05, 0, #self.Elements * 0.07, 0)
    local size = config.size or UDim2.new(0, 15, 0, 15)
    
    -- Create toggle container
    local ToggleFrame = Instance.new("Frame")
    ToggleFrame.Name = name .. "Toggle"
    ToggleFrame.BackgroundTransparency = 1
    ToggleFrame.Size = UDim2.new(1, -10, 0, 25)
    ToggleFrame.Position = position
    ToggleFrame.Parent = parent
    
    -- Toggle button
    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Name = "Button"
    ToggleButton.Size = size
    ToggleButton.Position = UDim2.new(0, 0, 0.2, 0)
    ToggleButton.BackgroundColor3 = state and Colors.ToggleOn or Colors.ToggleOff
    ToggleButton.BorderSizePixel = 0
    ToggleButton.AutoButtonColor = false
    ToggleButton.Text = ""
    ToggleButton.Parent = ToggleFrame
    
    -- Toggle label
    local Label = Instance.new("TextLabel")
    Label.Text = name
    Label.TextColor3 = Colors.Text
    Label.BackgroundTransparency = 1
    Label.Size = UDim2.new(1, -20, 1, 0)
    Label.Position = UDim2.new(0, 20, 0, 0)
    Label.Font = Enum.Font.SourceSans
    Label.TextSize = 14
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = ToggleFrame
    
    -- Toggle data
    local ToggleData = {
        Name = name,
        State = state,
        Button = ToggleButton,
        Callback = callback
    }
    
    -- Click event
    ToggleButton.MouseButton1Click:Connect(function()
        ToggleData.State = not ToggleData.State
        ToggleButton.BackgroundColor3 = ToggleData.State and Colors.ToggleOn or Colors.ToggleOff
        callback(ToggleData.State)
    end)
    
    table.insert(self.Elements, ToggleFrame)
    table.insert(self.Toggles, ToggleData)
    
    return ToggleData
end

-- Add a button
function enSolutions:Button(config)
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.CurrentTab.Frame
    
    local Button = Instance.new("TextButton")
    Button.Name = (config.text or "Button") .. "Btn"
    Button.Text = config.text or "Button"
    Button.TextColor3 = Colors.Text
    Button.BackgroundColor3 = Colors.Button
    Button.BorderSizePixel = 0
    Button.Size = config.size or UDim2.new(0.9, 0, 0, 25)
    Button.Position = config.position or UDim2.new(0.05, 0, #self.Elements * 0.07, 0)
    Button.Font = Enum.Font.SourceSans
    Button.TextSize = 14
    Button.Parent = parent
    
    if config.callback then
        Button.MouseButton1Click:Connect(config.callback)
    end
    
    table.insert(self.Elements, Button)
    return Button
end

-- Add a label
function enSolutions:Label(config)
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.CurrentTab.Frame
    
    local Label = Instance.new("TextLabel")
    Label.Text = config.text or "Label"
    Label.TextColor3 = Colors.Text
    Label.BackgroundTransparency = 1
    Label.Size = config.size or UDim2.new(1, -10, 0, 25)
    Label.Position = config.position or UDim2.new(0.05, 0, #self.Elements * 0.07, 0)
    Label.Font = Enum.Font.SourceSans
    Label.TextSize = 14
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = parent
    
    table.insert(self.Elements, Label)
    return Label
end

-- Add a textbox
function enSolutions:Textbox(config)
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.CurrentTab.Frame
    
    local Textbox = Instance.new("TextBox")
    Textbox.Name = (config.text or "Textbox") .. "Box"
    Textbox.PlaceholderText = config.placeholder or ""
    Textbox.Text = config.default or ""
    Textbox.TextColor3 = Colors.Text
    Textbox.BackgroundColor3 = Colors.Button
    Textbox.BorderSizePixel = 0
    Textbox.Size = config.size or UDim2.new(0.9, 0, 0, 25)
    Textbox.Position = config.position or UDim2.new(0.05, 0, #self.Elements * 0.07, 0)
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

-- Add a section (group of elements)
function enSolutions:Section(config)
    if not self.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
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

-- Toggle UI visibility
function enSolutions:Toggle()
    self.MainFrame.Visible = not self.MainFrame.Visible
end

-- Show UI
function enSolutions:Show()
    self.MainFrame.Visible = true
end

-- Hide UI
function enSolutions:Hide()
    self.MainFrame.Visible = false
end

-- Destroy UI
function enSolutions:Destroy()
    self.ScreenGui:Destroy()
    self.Tabs = {}
    self.Elements = {}
    self.Toggles = {}
end

-- Get toggle state
function enSolutions:GetState(name)
    for _, toggle in pairs(self.Toggles) do
        if toggle.Name == name then
            return toggle.State
        end
    end
    return nil
end

-- Set toggle state
function enSolutions:SetState(name, state)
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

-- Export as global
_G.enSolutions = enSolutions
return enSolutions
