-- ruin.lol UI Library
-- EXACT same UI structure as your code, but made into a library

local ruin = {}
ruin.__index = ruin

-- Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

-- This creates the EXACT UI from your code
local function createExactUI()
    -- Gui to Lua
    -- Version: 3.2

    -- Instances:
    local ensol = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local MainUI = Instance.new("Frame")
    local Header = Instance.new("TextLabel")
    local Frame_9 = Instance.new("Frame")
    
    -- Properties:
    ensol.Name = "ruin.lol"
    ensol.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    ensol.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = ensol
    Frame.BackgroundColor3 = Color3.fromRGB(11, 11, 10)
    Frame.BorderColor3 = Color3.fromRGB(55, 55, 62)
    Frame.Position = UDim2.new(0.107611559, 0, 0.101758793, 0)
    Frame.Size = UDim2.new(0, 469, 0, 611)

    MainUI.Name = "MainUI"
    MainUI.Parent = Frame
    MainUI.BackgroundColor3 = Color3.fromRGB(11, 11, 10)
    MainUI.BorderColor3 = Color3.fromRGB(55, 55, 62)
    MainUI.Position = UDim2.new(0.0116626602, 0, 0.0395656638, 0)
    MainUI.Size = UDim2.new(0, 458, 0, 580)

    Header.Name = "Header"
    Header.Parent = MainUI
    Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header.BackgroundTransparency = 1.000
    Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header.BorderSizePixel = 0
    Header.Position = UDim2.new(0, 0, -0.0606624223, 0)
    Header.Size = UDim2.new(0, 200, 0, 35)
    Header.Font = Enum.Font.SourceSans
    Header.Text = "ruin.lol"
    Header.TextColor3 = Color3.fromRGB(220, 220, 220)
    Header.TextSize = 14.000

    Frame_9.Parent = Frame
    Frame_9.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
    Frame_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_9.BorderSizePixel = 0
    Frame_9.Position = UDim2.new(0.0120000001, 0, 0.0299999993, 0)
    Frame_9.Size = UDim2.new(0.763326228, 100, -0.00200000009, 0)
    
    -- Make draggable
    local function ZLTWDPZ_fake_script()
        local frame = Frame
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
    coroutine.wrap(ZLTWDPZ_fake_script)()
    
    return {
        ScreenGui = ensol,
        MainFrame = Frame,
        MainUI = MainUI,
        Header = Header,
        Tabs = {},
        ContentFrames = {},
        CurrentTab = nil
    }
end

-- Create new UI instance
function ruin.new(config)
    config = config or {}
    
    local self = setmetatable({}, ruin)
    
    -- Create the exact UI
    self.ui = createExactUI()
    
    -- Store configuration
    self.config = {
        Name = config.Name or "ruin.lol",
        Keybind = config.Keybind or Enum.KeyCode.RightControl,
        Visible = config.Visible ~= false
    }
    
    -- Update header text
    self.ui.Header.Text = self.config.Name
    
    -- Setup keybind
    if self.config.Keybind then
        self:setupKeybind()
    end
    
    -- Content area (where tabs show)
    self.ui.ContentArea = Instance.new("Frame")
    self.ui.ContentArea.Name = "ContentArea"
    self.ui.ContentArea.BackgroundTransparency = 1
    self.ui.ContentArea.Position = UDim2.new(0, 0, 0.0414, 0)
    self.ui.ContentArea.Size = UDim2.new(1, 0, 1, -24)
    self.ui.ContentArea.Parent = self.ui.MainUI
    
    -- Tabs container
    self.ui.TabsContainer = Instance.new("Frame")
    self.ui.TabsContainer.Name = "TabsContainer"
    self.ui.TabsContainer.BackgroundTransparency = 1
    self.ui.TabsContainer.Size = UDim2.new(1, 0, 0, 24)
    self.ui.TabsContainer.Parent = self.ui.MainUI
    
    return self
end

-- Setup keybind
function ruin:setupKeybind()
    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == self.config.Keybind then
            self:Toggle()
        end
    end)
end

-- Add a tab (EXACT same style as your tabs)
function ruin:Tab(name)
    -- Create tab button (same as your MainTab, ESPTab, etc.)
    local tabButton = Instance.new("TextButton")
    tabButton.Name = name .. "Tab"
    tabButton.BackgroundColor3 = Color3.fromRGB(30, 31, 29)
    tabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tabButton.BorderSizePixel = 0
    tabButton.Size = UDim2.new(0, 90, 0, 24)
    tabButton.Font = Enum.Font.SourceSans
    tabButton.Text = name
    tabButton.TextColor3 = Color3.fromRGB(194, 194, 194)
    tabButton.TextSize = 14.000
    
    -- Position it (same spacing as your tabs)
    local xPos = 0
    for _, tab in pairs(self.ui.Tabs) do
        xPos = xPos + tab.Button.Size.X.Offset
    end
    tabButton.Position = UDim2.new(0, xPos, 0, 0)
    tabButton.Parent = self.ui.TabsContainer
    
    -- Create content frame (same as your ConfigsFrame/EspFrame)
    local contentFrame = Instance.new("Frame")
    contentFrame.Name = name .. "Frame"
    contentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    contentFrame.BackgroundTransparency = 1.000
    contentFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    contentFrame.BorderSizePixel = 0
    contentFrame.Position = UDim2.new(0, 0, 0.0413793102, 0)
    contentFrame.Size = UDim2.new(0, 458, 0, 556)
    contentFrame.Visible = false
    contentFrame.Parent = self.ui.ContentArea
    
    -- Tab data
    local tabData = {
        Name = name,
        Button = tabButton,
        Frame = contentFrame,
        Elements = {}
    }
    
    table.insert(self.ui.Tabs, tabData)
    
    -- Tab switching logic (same as your script)
    tabButton.MouseButton1Click:Connect(function()
        self:SwitchTab(name)
    end)
    
    -- Set first tab as active
    if #self.ui.Tabs == 1 then
        self:SwitchTab(name)
    end
    
    return tabData
end

-- Switch tab (same as your AHFTX_fake_script)
function ruin:SwitchTab(tabName)
    local ACTIVE_COLOR = Color3.fromRGB(11, 11, 10)
    local INACTIVE_COLOR = Color3.fromRGB(30, 31, 29)
    
    -- Hide all tabs
    for _, tab in ipairs(self.ui.Tabs) do
        tab.Frame.Visible = false
        tab.Button.BackgroundColor3 = INACTIVE_COLOR
    end
    
    -- Show selected tab
    for _, tab in ipairs(self.ui.Tabs) do
        if tab.Name == tabName then
            tab.Frame.Visible = true
            tab.Button.BackgroundColor3 = ACTIVE_COLOR
            self.ui.CurrentTab = tab
            break
        end
    end
end

-- Add a section (same as your ExtrasFrame)
function ruin:Section(config)
    if not self.ui.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    config = config or {}
    
    -- Create section frame (same as your ExtrasFrame)
    local sectionFrame = Instance.new("Frame")
    sectionFrame.Name = "Section"
    sectionFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 20)
    sectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    sectionFrame.Position = config.position or UDim2.new(0.0152838426, 0, 0.019784173, 0)
    sectionFrame.Size = config.size or UDim2.new(0, 217, 0, 100)
    sectionFrame.Parent = self.ui.CurrentTab.Frame
    
    -- Add title if provided
    if config.text then
        local title = Instance.new("TextLabel")
        title.Name = "Title"
        title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        title.BackgroundTransparency = 1.000
        title.BorderColor3 = Color3.fromRGB(0, 0, 0)
        title.BorderSizePixel = 0
        title.Position = UDim2.new(-0.202764973, 0, 0.159999996, 0)
        title.Size = UDim2.new(0, 186, 0, 29)
        title.Font = Enum.Font.SourceSans
        title.Text = config.text
        title.TextColor3 = Color3.fromRGB(178, 178, 178)
        title.TextSize = 14.000
        title.Parent = sectionFrame
    end
    
    return sectionFrame
end

-- Add a toggle (same as your TypeWrite buttons)
function ruin:Toggle(config)
    if not self.ui.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.ui.CurrentTab.Frame
    local name = config.text or config.name or "Toggle"
    local state = config.state or false
    local callback = config.callback or function() end
    
    -- Create toggle button (SAME as your TypeWrite)
    local toggleButton = Instance.new("TextButton")
    toggleButton.Name = name .. "Toggle"
    toggleButton.BackgroundColor3 = state and Color3.fromRGB(108, 107, 146) or Color3.fromRGB(30, 30, 31)
    toggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    toggleButton.Position = config.position or UDim2.new(0.0783410147, 0, #self.ui.CurrentTab.Elements * 0.1, 0)
    toggleButton.Size = config.size or UDim2.new(0, -9, 0, -9)
    toggleButton.AutoButtonColor = false
    toggleButton.Text = ""
    toggleButton.Parent = parent
    
    -- Create label (SAME as your TextLabel)
    local label = Instance.new("TextLabel")
    label.Name = name .. "Label"
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.BackgroundTransparency = 1.000
    label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label.BorderSizePixel = 0
    label.Position = UDim2.new(-0.202764973, 0, #self.ui.CurrentTab.Elements * 0.1 + 0.16, 0)
    label.Size = UDim2.new(0, 186, 0, 29)
    label.Font = Enum.Font.SourceSans
    label.Text = name
    label.TextColor3 = Color3.fromRGB(178, 178, 178)
    label.TextSize = 14.000
    label.Parent = parent
    
    -- Toggle data
    local toggleData = {
        Name = name,
        State = state,
        Button = toggleButton,
        Label = label,
        Callback = callback
    }
    
    -- Toggle click (SAME as your WJBHKF_fake_script)
    toggleButton.MouseButton1Click:Connect(function()
        toggleData.State = not toggleData.State
        if toggleData.State then
            toggleButton.BackgroundColor3 = Color3.fromRGB(108, 107, 146)
        else
            toggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 31)
        end
        callback(toggleData.State)
    end)
    
    table.insert(self.ui.CurrentTab.Elements, toggleButton)
    return toggleData
end

-- Add a button (same as your TextButton)
function ruin:Button(config)
    if not self.ui.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.ui.CurrentTab.Frame
    
    local button = Instance.new("TextButton")
    button.Name = config.text or "Button"
    button.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.Position = config.position or UDim2.new(0.0412844047, 0, #self.ui.CurrentTab.Elements * 0.07, 0)
    button.Size = config.size or UDim2.new(0, 200, 0, 18)
    button.Font = Enum.Font.SourceSans
    button.Text = config.text or "Button"
    button.TextColor3 = Color3.fromRGB(178, 178, 178)
    button.TextSize = 14.000
    button.Parent = parent
    
    if config.callback then
        button.MouseButton1Click:Connect(config.callback)
    end
    
    table.insert(self.ui.CurrentTab.Elements, button)
    return button
end

-- Add a textbox (same as your TextBox)
function ruin:Textbox(config)
    if not self.ui.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.ui.CurrentTab.Frame
    
    local textbox = Instance.new("TextBox")
    textbox.Name = config.text or "Textbox"
    textbox.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
    textbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    textbox.Position = config.position or UDim2.new(0.0412844047, 0, #self.ui.CurrentTab.Elements * 0.07, 0)
    textbox.Size = config.size or UDim2.new(0, 200, 0, 17)
    textbox.Font = Enum.Font.SourceSans
    textbox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
    textbox.PlaceholderText = config.placeholder or ""
    textbox.Text = config.default or ""
    textbox.TextColor3 = Color3.fromRGB(178, 178, 178)
    textbox.TextSize = 14.000
    textbox.Parent = parent
    
    if config.callback then
        textbox.FocusLost:Connect(function()
            config.callback(textbox.Text)
        end)
    end
    
    table.insert(self.ui.CurrentTab.Elements, textbox)
    return textbox
end

-- Add a label
function ruin:Label(config)
    if not self.ui.CurrentTab then
        warn("Create a tab first!")
        return nil
    end
    
    local parent = config.parent or self.ui.CurrentTab.Frame
    
    local label = Instance.new("TextLabel")
    label.Name = config.text or "Label"
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.BackgroundTransparency = 1.000
    label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label.BorderSizePixel = 0
    label.Position = config.position or UDim2.new(-0.202764973, 0, #self.ui.CurrentTab.Elements * 0.07, 0)
    label.Size = config.size or UDim2.new(0, 186, 0, 29)
    label.Font = Enum.Font.SourceSans
    label.Text = config.text or "Label"
    label.TextColor3 = Color3.fromRGB(178, 178, 178)
    label.TextSize = 14.000
    label.Parent = parent
    
    table.insert(self.ui.CurrentTab.Elements, label)
    return label
end

-- Toggle UI visibility
function ruin:Toggle()
    self.ui.MainFrame.Visible = not self.ui.MainFrame.Visible
end

-- Show UI
function ruin:Show()
    self.ui.MainFrame.Visible = true
end

-- Hide UI
function ruin:Hide()
    self.ui.MainFrame.Visible = false
end

-- Destroy UI
function ruin:Destroy()
    self.ui.ScreenGui:Destroy()
    self.ui = nil
end

return ruin
