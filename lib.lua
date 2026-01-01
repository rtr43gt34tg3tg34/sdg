-- ruin.lol UI Library
-- EXACT positioning from your original code

local ruin = {}
ruin.__index = ruin

-- Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

-- Create the EXACT UI structure
function ruin.new(config)
    config = config or {}
    
    local self = setmetatable({}, ruin)
    
    -- Create EXACT same UI as your original
    self.screenGui = Instance.new("ScreenGui")
    self.screenGui.Name = "ruin.lol"
    self.screenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    self.screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Main Frame (EXACT position and size from your code)
    self.mainFrame = Instance.new("Frame")
    self.mainFrame.Name = "Frame"
    self.mainFrame.BackgroundColor3 = Color3.fromRGB(11, 11, 10)
    self.mainFrame.BorderColor3 = Color3.fromRGB(55, 55, 62)
    self.mainFrame.Position = UDim2.new(0.107611559, 0, 0.101758793, 0) -- EXACT
    self.mainFrame.Size = UDim2.new(0, 469, 0, 611) -- EXACT
    self.mainFrame.Parent = self.screenGui
    
    -- Main UI (EXACT position and size)
    self.mainUI = Instance.new("Frame")
    self.mainUI.Name = "MainUI"
    self.mainUI.BackgroundColor3 = Color3.fromRGB(11, 11, 10)
    self.mainUI.BorderColor3 = Color3.fromRGB(55, 55, 62)
    self.mainUI.Position = UDim2.new(0.0116626602, 0, 0.0395656638, 0) -- EXACT
    self.mainUI.Size = UDim2.new(0, 458, 0, 580) -- EXACT
    self.mainUI.Parent = self.mainFrame
    
    -- Header (EXACT position and size from your code)
    self.header = Instance.new("TextLabel")
    self.header.Name = "Header"
    self.header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    self.header.BackgroundTransparency = 1.000
    self.header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    self.header.BorderSizePixel = 0
    self.header.Position = UDim2.new(0, 0, -0.0606624223, 0) -- EXACT
    self.header.Size = UDim2.new(0, 200, 0, 35) -- Made wider for "ruin.lol"
    self.header.Font = Enum.Font.SourceSans
    self.header.Text = config.Name or "ruin.lol"
    self.header.TextColor3 = Color3.fromRGB(220, 220, 220)
    self.header.TextSize = 14.000
    self.header.TextXAlignment = Enum.TextXAlignment.Left
    self.header.Parent = self.mainUI
    
    -- Separator line (EXACT position and size)
    local separator = Instance.new("Frame")
    separator.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
    separator.BorderSizePixel = 0
    separator.Position = UDim2.new(0.0120000001, 0, 0.0299999993, 0) -- EXACT
    separator.Size = UDim2.new(0.763326228, 100, -0.00200000009, 0) -- EXACT
    separator.Parent = self.mainFrame
    
    -- Setup draggable (EXACT same as your script)
    self:setupDraggable()
    
    -- Setup keybind
    if config.Keybind then
        self.keybind = config.Keybind
        self:setupKeybind()
    end
    
    -- Initialize tabs system
    self.tabs = {}
    self.currentTab = nil
    
    -- Create tabs container (EXACT position for tabs)
    self.tabsContainer = Instance.new("Frame")
    self.tabsContainer.Name = "TabsContainer"
    self.tabsContainer.BackgroundTransparency = 1
    self.tabsContainer.Size = UDim2.new(1, 0, 0, 24)
    self.tabsContainer.Parent = self.mainUI
    
    -- Create content area (EXACT position for tab content)
    self.contentArea = Instance.new("Frame")
    self.contentArea.Name = "ContentArea"
    self.contentArea.BackgroundTransparency = 1
    self.contentArea.Position = UDim2.new(0, 0, 0.0413793102, 0) -- EXACT
    self.contentArea.Size = UDim2.new(1, 0, 1, -24)
    self.contentArea.Parent = self.mainUI
    
    return self
end

-- EXACT same draggable script from your code
function ruin:setupDraggable()
    local frame = self.mainFrame
    local UserInputService = game:GetService("UserInputService")
    
    local dragging = false
    local dragInput = nil
    local dragStart = nil
    local startPos = nil
    
    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
    end
    
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
    
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    frame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            update(input)
        end
    end)
end

-- Setup keybind
function ruin:setupKeybind()
    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == self.keybind then
            self:Toggle()
        end
    end)
end

-- Add a tab with EXACT same styling
function ruin:Tab(name)
    -- Create tab button with EXACT same properties
    local tabButton = Instance.new("TextButton")
    tabButton.Name = name .. "Tab"
    tabButton.BackgroundColor3 = Color3.fromRGB(30, 31, 29)
    tabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tabButton.BorderSizePixel = 0
    tabButton.Size = UDim2.new(0, 94, 0, 24) -- EXACT same size as MainTab
    
    -- Position tabs exactly like yours
    local xPos = 0
    for _, tab in ipairs(self.tabs) do
        if tab.name == "MainTab" then
            xPos = xPos + 94
        else
            xPos = xPos + 90
        end
    end
    
    if name == "Main" then
        tabButton.Size = UDim2.new(0, 94, 0, 24) -- Main tab is 94 wide
        tabButton.Position = UDim2.new(0, xPos, 0, 0)
    else
        tabButton.Size = UDim2.new(0, 90, 0, 24) -- Other tabs are 90 wide
        tabButton.Position = UDim2.new(0, xPos, 0, 0)
    end
    
    tabButton.Font = Enum.Font.SourceSans
    tabButton.Text = name
    tabButton.TextColor3 = Color3.fromRGB(194, 194, 194)
    tabButton.TextSize = 14.000
    tabButton.Parent = self.tabsContainer
    
    -- Create content frame with EXACT same properties
    local contentFrame = Instance.new("Frame")
    contentFrame.Name = name .. "Frame"
    contentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    contentFrame.BackgroundTransparency = 1.000
    contentFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    contentFrame.BorderSizePixel = 0
    contentFrame.Position = UDim2.new(0, 0, 0.0413793102, 0) -- EXACT
    contentFrame.Size = UDim2.new(0, 458, 0, 556) -- EXACT
    contentFrame.Visible = false
    contentFrame.Parent = self.contentArea
    
    -- Store tab data
    local tabData = {
        name = name,
        button = tabButton,
        frame = contentFrame,
        elements = {}
    }
    
    table.insert(self.tabs, tabData)
    
    -- Setup tab switching (EXACT same logic)
    tabButton.MouseButton1Click:Connect(function()
        self:SwitchTab(name)
    end)
    
    -- Set first tab as active
    if #self.tabs == 1 then
        self:SwitchTab(name)
    end
    
    return tabData
end

-- Switch tabs with EXACT same logic
function ruin:SwitchTab(tabName)
    local ACTIVE_COLOR = Color3.fromRGB(11, 11, 10)
    local INACTIVE_COLOR = Color3.fromRGB(30, 31, 29)
    
    -- Hide all tabs
    for _, tab in ipairs(self.tabs) do
        tab.frame.Visible = false
        tab.button.BackgroundColor3 = INACTIVE_COLOR
    end
    
    -- Show selected tab
    for _, tab in ipairs(self.tabs) do
        if tab.name == tabName then
            tab.frame.Visible = true
            tab.button.BackgroundColor3 = ACTIVE_COLOR
            self.currentTab = tab
            break
        end
    end
end

-- Add a section with EXACT same styling
function ruin:Section(config)
    if not self.currentTab then
        warn("Create a tab first!")
        return nil
    end
    
    config = config or {}
    
    -- Create section frame (EXACT same as ExtrasFrame)
    local sectionFrame = Instance.new("Frame")
    sectionFrame.Name = "Section"
    sectionFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 20)
    sectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    sectionFrame.Position = config.position or UDim2.new(0.0152838426, 0, 0.019784173, 0) -- EXACT
    sectionFrame.Size = config.size or UDim2.new(0, 217, 0, 100) -- EXACT
    sectionFrame.Parent = self.currentTab.frame
    
    -- Add title if provided
    if config.text then
        local title = Instance.new("TextLabel")
        title.Name = "Title"
        title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        title.BackgroundTransparency = 1.000
        title.BorderColor3 = Color3.fromRGB(0, 0, 0)
        title.BorderSizePixel = 0
        title.Position = UDim2.new(-0.202764973, 0, 0.159999996, 0) -- EXACT
        title.Size = UDim2.new(0, 186, 0, 29) -- EXACT
        title.Font = Enum.Font.SourceSans
        title.Text = config.text
        title.TextColor3 = Color3.fromRGB(178, 178, 178)
        title.TextSize = 14.000
        title.Parent = sectionFrame
    end
    
    return sectionFrame
end

-- Add a toggle with EXACT same styling
function ruin:Toggle(config)
    if not self.currentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.currentTab.frame
    local name = config.text or config.name or "Toggle"
    local state = config.state or false
    local callback = config.callback or function() end
    
    -- Count elements in current parent
    local elementCount = #parent:GetChildren()
    
    -- Create toggle button (EXACT same as TypeWrite)
    local toggleButton = Instance.new("TextButton")
    toggleButton.Name = name .. "Toggle"
    toggleButton.BackgroundColor3 = state and Color3.fromRGB(108, 107, 146) or Color3.fromRGB(30, 30, 31)
    toggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    toggleButton.Position = config.position or UDim2.new(0.0783410147, 0, 0.370000005 + (elementCount * 0.08), 0) -- EXACT
    toggleButton.Size = config.size or UDim2.new(0, -9, 0, -9) -- EXACT
    toggleButton.AutoButtonColor = false
    toggleButton.Text = ""
    toggleButton.Parent = parent
    
    -- Create label (EXACT same as TextLabel)
    local label = Instance.new("TextLabel")
    label.Name = name .. "Label"
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.BackgroundTransparency = 1.000
    label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label.BorderSizePixel = 0
    label.Position = UDim2.new(-0.202764973, 0, 0.159999996 + (elementCount * 0.08), 0) -- EXACT
    label.Size = UDim2.new(0, 186, 0, 29) -- EXACT
    label.Font = Enum.Font.SourceSans
    label.Text = name
    label.TextColor3 = Color3.fromRGB(178, 178, 178)
    label.TextSize = 14.000
    label.Parent = parent
    
    -- Toggle click handler
    toggleButton.MouseButton1Click:Connect(function()
        state = not state
        if state then
            toggleButton.BackgroundColor3 = Color3.fromRGB(108, 107, 146)
        else
            toggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 31)
        end
        callback(state)
    end)
    
    return {
        button = toggleButton,
        label = label,
        state = state
    }
end

-- Add a button with EXACT same styling
function ruin:Button(config)
    if not self.currentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.currentTab.frame
    
    -- Count elements
    local elementCount = #parent:GetChildren()
    
    local button = Instance.new("TextButton")
    button.Name = config.text or "Button"
    button.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.Position = config.position or UDim2.new(0.0412844047, 0, 0.212863728 + (elementCount * 0.1), 0) -- EXACT
    button.Size = config.size or UDim2.new(0, 98, 0, 18) -- EXACT
    button.Font = Enum.Font.SourceSans
    button.Text = config.text or "Button"
    button.TextColor3 = Color3.fromRGB(178, 178, 178)
    button.TextSize = 14.000
    button.Parent = parent
    
    if config.callback then
        button.MouseButton1Click:Connect(config.callback)
    end
    
    return button
end

-- Toggle UI visibility
function ruin:Toggle()
    self.mainFrame.Visible = not self.mainFrame.Visible
end

-- Show UI
function ruin:Show()
    self.mainFrame.Visible = true
end

-- Hide UI
function ruin:Hide()
    self.mainFrame.Visible = false
end

-- Destroy UI
function ruin:Destroy()
    self.screenGui:Destroy()
end

return ruin
