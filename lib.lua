-- Gui to Lua
-- Version: 3.2

-- Instances:

local ensol = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local MainUI = Instance.new("Frame")
local MainTab = Instance.new("TextButton")
local ESPTab = Instance.new("TextButton")
local RageTab = Instance.new("TextButton")
local VisualsTab = Instance.new("TextButton")
local ConfigsTab = Instance.new("TextButton")
local ConfigsFrame = Instance.new("Frame")
local ExtrasFrame = Instance.new("Frame")
local TypeWrite = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local SaveConfig = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local ConfigList = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local Header = Instance.new("TextLabel")
local EspFrame = Instance.new("Frame")
local ExtrasFrame_2 = Instance.new("Frame")
local TypeWrite_2 = Instance.new("TextButton")
local Box = Instance.new("TextLabel")
local TypeWrite_3 = Instance.new("TextButton")
local Box_2 = Instance.new("TextLabel")
local BoxColorChanger = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SaveConfig_2 = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local Frame_5 = Instance.new("Frame")
local Frame_6 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local ColorPickerFrame = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")
local Frame_7 = Instance.new("Frame")
local Frame_8 = Instance.new("Frame")
local Frame_9 = Instance.new("Frame")
local Frame_10 = Instance.new("Frame")
local TextLabel_8 = Instance.new("TextLabel")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")

--Properties:

ensol.Name = "en.sol"
ensol.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
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

MainTab.Name = "MainTab"
MainTab.Parent = MainUI
MainTab.BackgroundColor3 = Color3.fromRGB(30, 31, 29)
MainTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainTab.BorderSizePixel = 0
MainTab.Size = UDim2.new(0, 94, 0, 24)
MainTab.Font = Enum.Font.SourceSans
MainTab.Text = "Aiming"
MainTab.TextColor3 = Color3.fromRGB(194, 194, 194)
MainTab.TextSize = 14.000

ESPTab.Name = "ESPTab"
ESPTab.Parent = MainUI
ESPTab.BackgroundColor3 = Color3.fromRGB(30, 31, 29)
ESPTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPTab.BorderSizePixel = 0
ESPTab.Position = UDim2.new(0.205240175, 0, 0, 0)
ESPTab.Size = UDim2.new(0, 90, 0, 24)
ESPTab.Font = Enum.Font.SourceSans
ESPTab.Text = "ESP"
ESPTab.TextColor3 = Color3.fromRGB(194, 194, 194)
ESPTab.TextSize = 14.000

RageTab.Name = "RageTab"
RageTab.Parent = MainUI
RageTab.BackgroundColor3 = Color3.fromRGB(30, 31, 29)
RageTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
RageTab.BorderSizePixel = 0
RageTab.Position = UDim2.new(0.40174672, 0, 0, 0)
RageTab.Size = UDim2.new(0, 90, 0, 24)
RageTab.Font = Enum.Font.SourceSans
RageTab.Text = "Rage"
RageTab.TextColor3 = Color3.fromRGB(194, 194, 194)
RageTab.TextSize = 14.000

VisualsTab.Name = "VisualsTab"
VisualsTab.Parent = MainUI
VisualsTab.BackgroundColor3 = Color3.fromRGB(30, 31, 29)
VisualsTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualsTab.BorderSizePixel = 0
VisualsTab.Position = UDim2.new(0.59825325, 0, 0, 0)
VisualsTab.Size = UDim2.new(0, 90, 0, 24)
VisualsTab.Font = Enum.Font.SourceSans
VisualsTab.Text = "Visuals"
VisualsTab.TextColor3 = Color3.fromRGB(194, 194, 194)
VisualsTab.TextSize = 14.000

ConfigsTab.Name = "ConfigsTab"
ConfigsTab.Parent = MainUI
ConfigsTab.BackgroundColor3 = Color3.fromRGB(30, 31, 29)
ConfigsTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigsTab.BorderSizePixel = 0
ConfigsTab.Position = UDim2.new(0.79475981, 0, 0, 0)
ConfigsTab.Size = UDim2.new(0, 94, 0, 24)
ConfigsTab.Font = Enum.Font.SourceSans
ConfigsTab.Text = "Configs"
ConfigsTab.TextColor3 = Color3.fromRGB(194, 194, 194)
ConfigsTab.TextSize = 14.000

ConfigsFrame.Name = "ConfigsFrame"
ConfigsFrame.Parent = MainUI
ConfigsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConfigsFrame.BackgroundTransparency = 1.000
ConfigsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigsFrame.BorderSizePixel = 0
ConfigsFrame.Position = UDim2.new(0, 0, 0.0413793102, 0)
ConfigsFrame.Size = UDim2.new(0, 458, 0, 556)
ConfigsFrame.Visible = false

ExtrasFrame.Name = "ExtrasFrame"
ExtrasFrame.Parent = ConfigsFrame
ExtrasFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 20)
ExtrasFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExtrasFrame.Position = UDim2.new(0.0152838426, 0, 0.019784173, 0)
ExtrasFrame.Size = UDim2.new(0, 217, 0, 100)

TypeWrite.Name = "TypeWrite"
TypeWrite.Parent = ExtrasFrame
TypeWrite.BackgroundColor3 = Color3.fromRGB(30, 30, 31)
TypeWrite.BorderColor3 = Color3.fromRGB(0, 0, 0)
TypeWrite.Position = UDim2.new(0.0783410147, 0, 0.370000005, 0)
TypeWrite.Size = UDim2.new(0, -9, 0, -9)
TypeWrite.Font = Enum.Font.SourceSans
TypeWrite.Text = ""
TypeWrite.TextColor3 = Color3.fromRGB(0, 0, 0)
TypeWrite.TextSize = 14.000

TextLabel.Parent = ExtrasFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.202764973, 0, 0.159999996, 0)
TextLabel.Size = UDim2.new(0, 186, 0, 29)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Typewriter"
TextLabel.TextColor3 = Color3.fromRGB(178, 178, 178)
TextLabel.TextSize = 14.000

SaveConfig.Name = "SaveConfig"
SaveConfig.Parent = ConfigsFrame
SaveConfig.BackgroundColor3 = Color3.fromRGB(21, 21, 20)
SaveConfig.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveConfig.Position = UDim2.new(0.506550193, 0, 0.019784173, 0)
SaveConfig.Size = UDim2.new(0, 218, 0, 236)

TextBox.Parent = SaveConfig
TextBox.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Position = UDim2.new(0.0412844047, 0, 0.101694912, 0)
TextBox.Size = UDim2.new(0, 200, 0, 17)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(178, 178, 178)
TextBox.TextSize = 14.000

TextButton.Parent = SaveConfig
TextButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Position = UDim2.new(0.0412844047, 0, 0.212863728, 0)
TextButton.Size = UDim2.new(0, 98, 0, 18)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Save Config"
TextButton.TextColor3 = Color3.fromRGB(178, 178, 178)
TextButton.TextSize = 14.000

TextButton_2.Parent = SaveConfig
TextButton_2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.Position = UDim2.new(0.509174287, 0, 0.212863728, 0)
TextButton_2.Size = UDim2.new(0, 98, 0, 18)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Load Config"
TextButton_2.TextColor3 = Color3.fromRGB(178, 178, 178)
TextButton_2.TextSize = 14.000

TextButton_3.Parent = SaveConfig
TextButton_3.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.Position = UDim2.new(0.0412844047, 0, 0.315797895, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 18)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Delete Config"
TextButton_3.TextColor3 = Color3.fromRGB(178, 178, 178)
TextButton_3.TextSize = 14.000

TextButton_4.Parent = SaveConfig
TextButton_4.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.Position = UDim2.new(0.0412844047, 0, 0.418731958, 0)
TextButton_4.Size = UDim2.new(0, 200, 0, 18)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Refresh Config List"
TextButton_4.TextColor3 = Color3.fromRGB(178, 178, 178)
TextButton_4.TextSize = 14.000

ConfigList.Name = "ConfigList"
ConfigList.Parent = SaveConfig
ConfigList.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
ConfigList.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfigList.Position = UDim2.new(0.0412844047, 0, 0.534018278, 0)
ConfigList.Size = UDim2.new(0, 200, 0, 103)

TextLabel_2.Parent = ConfigList
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.0850000009, 0, -0.109504476, 0)
TextLabel_2.Size = UDim2.new(0, 85, 0, 35)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Config List:"
TextLabel_2.TextColor3 = Color3.fromRGB(178, 178, 178)
TextLabel_2.TextSize = 12.000

Frame_2.Parent = ConfigList
Frame_2.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0.135690331, 0)
Frame_2.Size = UDim2.new(0, 199, 0, 2)

TextLabel_3.Parent = SaveConfig
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(-0.133027524, 0, -0.0466101691, 0)
TextLabel_3.Size = UDim2.new(0, 148, 0, 35)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Config System"
TextLabel_3.TextColor3 = Color3.fromRGB(178, 178, 178)
TextLabel_3.TextSize = 14.000

Frame_3.Parent = SaveConfig
Frame_3.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0412844047, 0, 0.0762711838, 0)
Frame_3.Size = UDim2.new(0, 199, 0, -2)

Frame_4.Parent = SaveConfig
Frame_4.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(-0.995412827, 0, 0.0762711838, 0)
Frame_4.Size = UDim2.new(0, 199, 0, -2)

TextLabel_4.Parent = SaveConfig
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(-1.35321105, 0, -0.0466101691, 0)
TextLabel_4.Size = UDim2.new(0, 187, 0, 35)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Extras"
TextLabel_4.TextColor3 = Color3.fromRGB(178, 178, 178)
TextLabel_4.TextSize = 14.000

Header.Name = "Header"
Header.Parent = MainUI
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1.000
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0, 0, -0.0606624223, 0)
Header.Size = UDim2.new(0, 72, 0, 35)
Header.Font = Enum.Font.SourceSans
Header.Text = "en.solutions"
Header.TextColor3 = Color3.fromRGB(220, 220, 220)
Header.TextSize = 14.000

EspFrame.Name = "EspFrame"
EspFrame.Parent = MainUI
EspFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EspFrame.BackgroundTransparency = 1.000
EspFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
EspFrame.BorderSizePixel = 0
EspFrame.Position = UDim2.new(0, 0, 0.0413793102, 0)
EspFrame.Size = UDim2.new(0, 458, 0, 556)

ExtrasFrame_2.Name = "ExtrasFrame"
ExtrasFrame_2.Parent = EspFrame
ExtrasFrame_2.BackgroundColor3 = Color3.fromRGB(21, 21, 20)
ExtrasFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExtrasFrame_2.Position = UDim2.new(0.0152838426, 0, 0.019784173, 0)
ExtrasFrame_2.Size = UDim2.new(0, 217, 0, 535)

TypeWrite_2.Name = "TypeWrite"
TypeWrite_2.Parent = ExtrasFrame_2
TypeWrite_2.BackgroundColor3 = Color3.fromRGB(30, 30, 31)
TypeWrite_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TypeWrite_2.Position = UDim2.new(0.0783410147, 0, 0.0677612051, 0)
TypeWrite_2.Size = UDim2.new(0, -9, 0, -9)
TypeWrite_2.Font = Enum.Font.SourceSans
TypeWrite_2.Text = ""
TypeWrite_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TypeWrite_2.TextSize = 14.000

Box.Name = "Box"
Box.Parent = ExtrasFrame_2
Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Box.BackgroundTransparency = 1.000
Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
Box.BorderSizePixel = 0
Box.Position = UDim2.new(-0.175115213, 0, 0.0331343189, 0)
Box.Size = UDim2.new(0, 155, 0, 29)
Box.Font = Enum.Font.SourceSans
Box.Text = "Box"
Box.TextColor3 = Color3.fromRGB(178, 178, 178)
Box.TextSize = 14.000

TypeWrite_3.Name = "TypeWrite"
TypeWrite_3.Parent = ExtrasFrame_2
TypeWrite_3.BackgroundColor3 = Color3.fromRGB(30, 30, 31)
TypeWrite_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TypeWrite_3.Position = UDim2.new(0.0783410147, 0, 0.099701494, 0)
TypeWrite_3.Size = UDim2.new(0, -9, 0, -9)
TypeWrite_3.Font = Enum.Font.SourceSans
TypeWrite_3.Text = ""
TypeWrite_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TypeWrite_3.TextSize = 14.000

Box_2.Name = "Box"
Box_2.Parent = ExtrasFrame_2
Box_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Box_2.BackgroundTransparency = 1.000
Box_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Box_2.BorderSizePixel = 0
Box_2.Position = UDim2.new(-0.175115213, 0, 0.0645521954, 0)
Box_2.Size = UDim2.new(0, 170, 0, 29)
Box_2.Font = Enum.Font.SourceSans
Box_2.Text = "Names"
Box_2.TextColor3 = Color3.fromRGB(178, 178, 178)
Box_2.TextSize = 14.000

BoxColorChanger.Name = "BoxColorChanger"
BoxColorChanger.Parent = ExtrasFrame_2
BoxColorChanger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxColorChanger.BorderColor3 = Color3.fromRGB(0, 0, 0)
BoxColorChanger.BorderSizePixel = 0
BoxColorChanger.Position = UDim2.new(0.866359472, 0, 0.049069643, 0)
BoxColorChanger.Size = UDim2.new(0, 19, 0, 8)

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = BoxColorChanger

SaveConfig_2.Name = "SaveConfig"
SaveConfig_2.Parent = EspFrame
SaveConfig_2.BackgroundColor3 = Color3.fromRGB(21, 21, 20)
SaveConfig_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveConfig_2.Position = UDim2.new(0.506550193, 0, 0.019784173, 0)
SaveConfig_2.Size = UDim2.new(0, 218, 0, 236)

TextLabel_5.Parent = SaveConfig_2
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(-0.133027524, 0, -0.0466101691, 0)
TextLabel_5.Size = UDim2.new(0, 123, 0, 35)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Side Esp"
TextLabel_5.TextColor3 = Color3.fromRGB(178, 178, 178)
TextLabel_5.TextSize = 14.000

Frame_5.Parent = SaveConfig_2
Frame_5.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(0.0412844047, 0, 0.0762711838, 0)
Frame_5.Size = UDim2.new(0, 199, 0, -2)

Frame_6.Parent = SaveConfig_2
Frame_6.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_6.BorderSizePixel = 0
Frame_6.Position = UDim2.new(-0.995412827, 0, 0.0762711838, 0)
Frame_6.Size = UDim2.new(0, 199, 0, -2)

TextLabel_6.Parent = SaveConfig_2
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(-1.35321105, 0, -0.0466101691, 0)
TextLabel_6.Size = UDim2.new(0, 202, 0, 35)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Main Esp"
TextLabel_6.TextColor3 = Color3.fromRGB(178, 178, 178)
TextLabel_6.TextSize = 14.000

ColorPickerFrame.Name = "ColorPickerFrame"
ColorPickerFrame.Parent = EspFrame
ColorPickerFrame.BackgroundColor3 = Color3.fromRGB(11, 11, 10)
ColorPickerFrame.BorderColor3 = Color3.fromRGB(55, 55, 62)
ColorPickerFrame.Position = UDim2.new(1.03930116, 0, -0.0881294981, 0)
ColorPickerFrame.Size = UDim2.new(0, 207, 0, 188)

TextLabel_7.Parent = ColorPickerFrame
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0, 0, -0.0106382975, 0)
TextLabel_7.Size = UDim2.new(0, 207, 0, 17)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "Color Picker"
TextLabel_7.TextColor3 = Color3.fromRGB(220, 220, 220)
TextLabel_7.TextSize = 14.000

Frame_7.Parent = ColorPickerFrame
Frame_7.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
Frame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_7.BorderSizePixel = 0
Frame_7.Position = UDim2.new(0.0216618776, 0, 0.101890236, 0)
Frame_7.Size = UDim2.new(0.47299999, 100, -0.00649992889, 0)

Frame_8.Parent = ColorPickerFrame
Frame_8.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Frame_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_8.Position = UDim2.new(0.0289855078, 0, 0.127659574, 0)
Frame_8.Size = UDim2.new(0, 195, 0, 158)

Frame_9.Parent = Frame
Frame_9.BackgroundColor3 = Color3.fromRGB(108, 109, 122)
Frame_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_9.BorderSizePixel = 0
Frame_9.Position = UDim2.new(0.0120000001, 0, 0.0299999993, 0)
Frame_9.Size = UDim2.new(0.763326228, 100, -0.00200000009, 0)

Frame_10.Parent = ensol
Frame_10.BackgroundColor3 = Color3.fromRGB(11, 11, 10)
Frame_10.BorderColor3 = Color3.fromRGB(55, 55, 62)
Frame_10.Position = UDim2.new(0.774278224, 0, 0.704773784, 0)
Frame_10.Size = UDim2.new(0, 266, 0, 154)

TextLabel_8.Parent = Frame_10
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Size = UDim2.new(0, 266, 0, 32)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Pick Your Game"
TextLabel_8.TextColor3 = Color3.fromRGB(127, 127, 127)
TextLabel_8.TextSize = 14.000

TextButton_5.Parent = Frame_10
TextButton_5.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
TextButton_5.BorderColor3 = Color3.fromRGB(91, 91, 91)
TextButton_5.Position = UDim2.new(0.124060154, 0, 0.259740263, 0)
TextButton_5.Size = UDim2.new(0, 200, 0, 32)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Da Hood"
TextButton_5.TextColor3 = Color3.fromRGB(163, 163, 163)
TextButton_5.TextSize = 14.000

TextButton_6.Parent = Frame_10
TextButton_6.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
TextButton_6.BorderColor3 = Color3.fromRGB(91, 91, 91)
TextButton_6.Position = UDim2.new(0.124060154, 0, 0.525974035, 0)
TextButton_6.Size = UDim2.new(0, 200, 0, 32)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "Rip Offs"
TextButton_6.TextColor3 = Color3.fromRGB(163, 163, 163)
TextButton_6.TextSize = 14.000

-- Scripts:

local function ZLTWDPZ_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local frame = script.Parent
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
local function AHFTX_fake_script() -- MainUI.LocalScript 
	local script = Instance.new('LocalScript', MainUI)

	local MainUI = script.Parent
	
	local ACTIVE_COLOR = Color3.fromRGB(11, 11, 10)
	local INACTIVE_COLOR = Color3.fromRGB(30, 31, 29)
	
	local Tabs = {
		MainUI:WaitForChild("MainTab"),
		MainUI:WaitForChild("ESPTab"),
		MainUI:WaitForChild("RageTab"),
		MainUI:WaitForChild("VisualsTab"),
		MainUI:WaitForChild("ConfigsTab"),
	}
	
	local ConfigsFrame = MainUI:WaitForChild("ConfigsFrame")
	ConfigsFrame.Visible = false
	
	local ESPFrame = MainUI:WaitForChild("EspFrame")
	ESPFrame.Visible = false
	
	local function SetActiveTab(activeTab)
		for _, tab in ipairs(Tabs) do
			tab.BackgroundColor3 = (tab == activeTab) and ACTIVE_COLOR or INACTIVE_COLOR
		end
	
		-- Only ESPTab logic like ConfigsTab
		ConfigsFrame.Visible = (activeTab.Name == "ConfigsTab")
		ESPFrame.Visible = (activeTab.Name == "ESPTab")
	end
	
	for _, tab in ipairs(Tabs) do
		tab.MouseButton1Click:Connect(function()
			SetActiveTab(tab)
		end)
	end
	
	-- default tab
	SetActiveTab(MainUI.MainTab)
end
coroutine.wrap(AHFTX_fake_script)()
local function WJBHKF_fake_script() -- TypeWrite.ToggleTypewriter 
	local script = Instance.new('LocalScript', TypeWrite)

	local button = script.Parent
	local mainUi = button.Parent.Parent.Parent
	local header = mainUi:WaitForChild("Header")
	local toggle = header:WaitForChild("TypewriterEnabled")
	
	button.AutoButtonColor = false
	
	local SELECTED = Color3.fromRGB(108, 107, 146)
	local DESELECTED = Color3.fromRGB(30, 30, 31)
	
	local selected = false
	button.BackgroundColor3 = DESELECTED
	
	button.MouseButton1Click:Connect(function()
		selected = not selected
	
		if selected then
			button.BackgroundColor3 = SELECTED
			toggle.Value = true
		else
			button.BackgroundColor3 = DESELECTED
			toggle.Value = false
		end
	end)
	
end
coroutine.wrap(WJBHKF_fake_script)()
local function MBQGLF_fake_script() -- Header.HeaderTypewriter 
	local script = Instance.new('LocalScript', Header)

	local label = script.Parent
	label.RichText = true
	
	-- Initial text
	label.Text = '<font color="rgb(220,220,220)">en</font><font color="rgb(105,102,119)">.solutions</font>'
	
	-- FINAL FIXED POSITION inside UI
	label.Position = UDim2.new(0, 0, -0.061, 0)
	label.Size = UDim2.new(0, 200, 0, label.Size.Y.Offset) -- fixed width so text stays inside
	label.TextXAlignment = Enum.TextXAlignment.Left
	
	-- Typewriter setup
	local enabled = false
	local word = "endless"  -- lowercase
	
	local toggle = Instance.new("BoolValue")
	toggle.Name = "TypewriterEnabled"
	toggle.Value = false
	toggle.Parent = label
	
	toggle.Changed:Connect(function(val)
		enabled = val
		if not val then
			label.Text = '<font color="rgb(220,220,220)">en</font><font color="rgb(105,102,119)">.solutions</font>'
		end
	end)
	
	
	task.spawn(function()
		while true do
			if enabled then
				for i = 2, #word do
					if not enabled then break end
					label.Text = string.format(
						'<font color="rgb(220,220,220)">%s</font><font color="rgb(105,102,119)">.solutions</font>',
						word:sub(1, i)
					)
					task.wait(0.08)
				end
	
				task.wait(0.5)
	
				for i = #word - 1, 2, -1 do
					if not enabled then break end
					label.Text = string.format(
						'<font color="rgb(220,220,220)">%s</font><font color="rgb(105,102,119)">.solutions</font>',
						word:sub(1, i)
					)
					task.wait(0.08)
				end
	
				task.wait(0.5)
			else
				task.wait(0.1)
			end
		end
	end)
	
end
coroutine.wrap(MBQGLF_fake_script)()
local function SJCEXJA_fake_script() -- TypeWrite_2.ToggleTypewriter 
	local script = Instance.new('LocalScript', TypeWrite_2)

	local button = script.Parent
	
	button.AutoButtonColor = false
	
	local SELECTED = Color3.fromRGB(108, 107, 146)
	local DESELECTED = Color3.fromRGB(30, 30, 31)
	
	local selected = false
	button.BackgroundColor3 = DESELECTED
	
	-- Services
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local Workspace = game:GetService("Workspace")
	
	local LocalPlayer = Players.LocalPlayer
	local Camera = Workspace.CurrentCamera
	
	-- Store ESP drawings
	local espCache = {}
	
	-- Create ESP box with proper perspective scaling
	local function createESPBox(char)
		if espCache[char] then return end
	
		-- Create drawing objects for white box
		local boxTop = Drawing.new("Line")
		local boxBottom = Drawing.new("Line")
		local boxLeft = Drawing.new("Line")
		local boxRight = Drawing.new("Line")
	
		-- Create drawing objects for black outline
		local outlineTop = Drawing.new("Line")
		local outlineBottom = Drawing.new("Line")
		local outlineLeft = Drawing.new("Line")
		local outlineRight = Drawing.new("Line")
	
		-- Configure white box (THIN)
		boxTop.Thickness = 1
		boxBottom.Thickness = 1
		boxLeft.Thickness = 1
		boxRight.Thickness = 1
	
		boxTop.Color = Color3.fromRGB(255, 255, 255)  -- White
		boxBottom.Color = Color3.fromRGB(255, 255, 255)
		boxLeft.Color = Color3.fromRGB(255, 255, 255)
		boxRight.Color = Color3.fromRGB(255, 255, 255)
	
		boxTop.Visible = false
		boxBottom.Visible = false
		boxLeft.Visible = false
		boxRight.Visible = false
	
		-- Configure black outline (THIN - separate from white lines)
		outlineTop.Thickness = 1
		outlineBottom.Thickness = 1
		outlineLeft.Thickness = 1
		outlineRight.Thickness = 1
	
		outlineTop.Color = Color3.fromRGB(0, 0, 0)  -- Black
		outlineBottom.Color = Color3.fromRGB(0, 0, 0)
		outlineLeft.Color = Color3.fromRGB(0, 0, 0)
		outlineRight.Color = Color3.fromRGB(0, 0, 0)
	
		outlineTop.Visible = false
		outlineBottom.Visible = false
		outlineLeft.Visible = false
		outlineRight.Visible = false
	
		-- Store in cache
		espCache[char] = {
			boxTop = boxTop,
			boxBottom = boxBottom,
			boxLeft = boxLeft,
			boxRight = boxRight,
			outlineTop = outlineTop,
			outlineBottom = outlineBottom,
			outlineLeft = outlineLeft,
			outlineRight = outlineRight,
			connection = nil
		}
	
		-- Update function
		local connection = RunService.RenderStepped:Connect(function()
			if not selected or not char or not char.Parent then
				-- Clean up
				connection:Disconnect()
				for _, drawing in pairs(espCache[char]) do
					if typeof(drawing) == "table" and drawing.Remove then
						drawing:Remove()
					end
				end
				espCache[char] = nil
				return
			end
	
			-- Get character parts
			local humanoidRootPart = char:FindFirstChild("HumanoidRootPart")
			local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
			local head = char:FindFirstChild("Head")
	
			if (humanoidRootPart or torso) and head then
				local rootPart = humanoidRootPart or torso
	
				-- Get screen positions of top and bottom of character
				local headScreen, headOnScreen = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
				local rootScreen, rootOnScreen = Camera:WorldToViewportPoint(rootPart.Position)
				local footScreen = Camera:WorldToViewportPoint(rootPart.Position - Vector3.new(0, 3, 0))
	
				if headOnScreen and rootOnScreen then
					-- Calculate actual character height on screen (proper perspective)
					local characterHeight = math.abs(footScreen.Y - headScreen.Y)
					local characterWidth = characterHeight * 0.6  -- Width is 60% of height
	
					-- Center position
					local centerX = rootScreen.X
					local topY = headScreen.Y - 5  -- Small offset above head
					local bottomY = topY + characterHeight
	
					-- Box corners
					local left = centerX - characterWidth / 2
					local right = centerX + characterWidth / 2
					local top = topY
					local bottom = bottomY
	
					-- Update white box (draw INSIDE the black outline)
					-- Top line (1 pixel inside)
					espCache[char].boxTop.From = Vector2.new(left + 1, top + 1)
					espCache[char].boxTop.To = Vector2.new(right - 1, top + 1)
					espCache[char].boxTop.Visible = true
	
					-- Bottom line (1 pixel inside)
					espCache[char].boxBottom.From = Vector2.new(left + 1, bottom - 1)
					espCache[char].boxBottom.To = Vector2.new(right - 1, bottom - 1)
					espCache[char].boxBottom.Visible = true
	
					-- Left line (1 pixel inside)
					espCache[char].boxLeft.From = Vector2.new(left + 1, top + 1)
					espCache[char].boxLeft.To = Vector2.new(left + 1, bottom - 1)
					espCache[char].boxLeft.Visible = true
	
					-- Right line (1 pixel inside)
					espCache[char].boxRight.From = Vector2.new(right - 1, top + 1)
					espCache[char].boxRight.To = Vector2.new(right - 1, bottom - 1)
					espCache[char].boxRight.Visible = true
	
					-- Update black outline (draw OUTSIDE the white box)
					-- Top outline
					espCache[char].outlineTop.From = Vector2.new(left, top)
					espCache[char].outlineTop.To = Vector2.new(right, top)
					espCache[char].outlineTop.Visible = true
	
					-- Bottom outline
					espCache[char].outlineBottom.From = Vector2.new(left, bottom)
					espCache[char].outlineBottom.To = Vector2.new(right, bottom)
					espCache[char].outlineBottom.Visible = true
	
					-- Left outline
					espCache[char].outlineLeft.From = Vector2.new(left, top)
					espCache[char].outlineLeft.To = Vector2.new(left, bottom)
					espCache[char].outlineLeft.Visible = true
	
					-- Right outline
					espCache[char].outlineRight.From = Vector2.new(right, top)
					espCache[char].outlineRight.To = Vector2.new(right, bottom)
					espCache[char].outlineRight.Visible = true
				else
					-- Hide if not on screen
					for _, drawing in pairs(espCache[char]) do
						if typeof(drawing) == "table" and drawing.Visible ~= nil then
							drawing.Visible = false
						end
					end
				end
			else
				-- Hide if no valid parts
				for _, drawing in pairs(espCache[char]) do
					if typeof(drawing) == "table" and drawing.Visible ~= nil then
						drawing.Visible = false
					end
				end
			end
		end)
	
		espCache[char].connection = connection
	end
	
	-- Button click handler
	button.MouseButton1Click:Connect(function()
		selected = not selected
	
		if selected then
			button.BackgroundColor3 = SELECTED
	
			-- Create ESP for all players except yourself
			for _, player in pairs(Players:GetPlayers()) do
				if player ~= LocalPlayer and player.Character then
					createESPBox(player.Character)
				end
	
				-- Listen for new characters
				player.CharacterAdded:Connect(function(char)
					if player ~= LocalPlayer then
						wait(0.1)
						createESPBox(char)
					end
				end)
			end
	
			-- Create ESP for NPCs
			for _, model in pairs(Workspace:GetChildren()) do
				if model:IsA("Model") and model:FindFirstChild("Humanoid") then
					-- Check if it's not a player
					local isPlayer = false
					for _, player in pairs(Players:GetPlayers()) do
						if player.Character == model then
							isPlayer = true
							break
						end
					end
	
					if not isPlayer then
						createESPBox(model)
					end
				end
			end
	
		else
			button.BackgroundColor3 = DESELECTED
	
			-- Clean up all ESP
			for char, espData in pairs(espCache) do
				if espData.connection then
					espData.connection:Disconnect()
				end
				for _, drawing in pairs(espData) do
					if typeof(drawing) == "table" and drawing.Remove then
						drawing:Remove()
					end
				end
			end
			espCache = {}
		end
	end)
end
coroutine.wrap(SJCEXJA_fake_script)()
local function SFUEXK_fake_script() -- TypeWrite_3.ToggleTypewriter 
	local script = Instance.new('LocalScript', TypeWrite_3)

	local button = script.Parent
	
	button.AutoButtonColor = false
	
	local SELECTED = Color3.fromRGB(108, 107, 146)
	local DESELECTED = Color3.fromRGB(30, 30, 31)
	
	local selected = false
	button.BackgroundColor3 = DESELECTED
	
	-- Services
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local Workspace = game:GetService("Workspace")
	
	local LocalPlayer = Players.LocalPlayer
	local Camera = Workspace.CurrentCamera
	
	-- Store ESP drawings
	local espCache = {}
	
	-- Create name ESP with fixed size
	local function createNameESP(char)
		if espCache[char] then return end
	
		-- Create ScreenGui for fixed-size UI
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "ESPName_" .. char.Name
		screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
		screenGui.ResetOnSpawn = false
	
		-- Create text label (this will have true fixed size)
		local nameLabel = Instance.new("TextLabel")
		nameLabel.Name = "NameLabel"
		nameLabel.Size = UDim2.new(0, 0, 0, 0) -- Will be auto-sized
		nameLabel.BackgroundTransparency = 1
		nameLabel.TextScaled = false -- Important: don't scale text
		nameLabel.Font = Enum.Font.Gotham
		nameLabel.TextSize = 11 -- Fixed text size (you wanted 11 or 12)
		nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White
		nameLabel.TextStrokeTransparency = 0
		nameLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0) -- Black outline
		nameLabel.Visible = false
		nameLabel.Parent = screenGui
	
		-- Store in cache
		espCache[char] = {
			screenGui = screenGui,
			nameLabel = nameLabel,
			connection = nil
		}
	
		-- Get name based on character type
		local function getDisplayName()
			-- Check if it's a player
			for _, player in pairs(Players:GetPlayers()) do
				if player.Character == char then
					return player.Name
				end
			end
	
			-- Check for NPC name
			local humanoid = char:FindFirstChildWhichIsA("Humanoid")
			if humanoid and humanoid.DisplayName ~= "" then
				return humanoid.DisplayName
			end
	
			-- Fallback to model name
			return char.Name
		end
	
		-- Calculate where the top of the box would be
		local function calculateBoxTopPosition()
			-- Get character parts for box calculation
			local humanoidRootPart = char:FindFirstChild("HumanoidRootPart")
			local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
			local head = char:FindFirstChild("Head")
	
			if (humanoidRootPart or torso) and head then
				local rootPart = humanoidRootPart or torso
	
				-- Get screen positions of top and bottom of character (same as box ESP)
				local headScreen = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
				local footScreen = Camera:WorldToViewportPoint(rootPart.Position - Vector3.new(0, 3, 0))
	
				-- Calculate character height on screen
				local characterHeight = math.abs(footScreen.Y - headScreen.Y)
	
				-- Box top position (same calculation as box ESP)
				local boxTopY = headScreen.Y - 5  -- Small offset above head
	
				-- Return position for name (above the box)
				return Vector2.new(headScreen.X, boxTopY)
			end
	
			return Vector2.new(0, 0)
		end
	
		-- Update function
		local connection = RunService.RenderStepped:Connect(function()
			if not selected or not char or not char.Parent then
				-- Clean up
				connection:Disconnect()
				if espCache[char] then
					if espCache[char].screenGui then
						espCache[char].screenGui:Destroy()
					end
					espCache[char] = nil
				end
				return
			end
	
			-- Get character parts
			local humanoidRootPart = char:FindFirstChild("HumanoidRootPart")
			local head = char:FindFirstChild("Head")
	
			if humanoidRootPart and head then
				-- Get screen position
				local headScreen, headOnScreen = Camera:WorldToViewportPoint(head.Position)
	
				if headOnScreen then
					local displayName = getDisplayName()
					espCache[char].nameLabel.Text = displayName
	
					-- Auto-size the label to fit the text
					local textSize = game:GetService("TextService"):GetTextSize(
						displayName,
						11, -- Same as TextSize
						Enum.Font.Gotham,
						Vector2.new(1000, 100)
					)
	
					-- Calculate box top position
					local boxTopPos = calculateBoxTopPosition()
	
					-- Position the name ABOVE the box (15 pixels above box top)
					local namePosX = boxTopPos.X - (textSize.X / 2)
					local namePosY = boxTopPos.Y - 15 -- Position above the box
	
					-- Make sure the name doesn't go off-screen
					namePosX = math.max(5, math.min(namePosX, Camera.ViewportSize.X - textSize.X - 5))
					namePosY = math.max(5, namePosY)
	
					-- Apply position and size
					espCache[char].nameLabel.Size = UDim2.new(0, textSize.X + 10, 0, textSize.Y + 4)
					espCache[char].nameLabel.Position = UDim2.new(0, namePosX, 0, namePosY)
					espCache[char].nameLabel.Visible = true
				else
					-- Hide if not on screen
					espCache[char].nameLabel.Visible = false
				end
			else
				-- Hide if no valid parts
				espCache[char].nameLabel.Visible = false
			end
		end)
	
		espCache[char].connection = connection
	end
	
	-- Button click handler
	button.MouseButton1Click:Connect(function()
		selected = not selected
	
		if selected then
			button.BackgroundColor3 = SELECTED
	
			-- Create name ESP for all players except yourself
			for _, player in pairs(Players:GetPlayers()) do
				if player ~= LocalPlayer and player.Character then
					createNameESP(player.Character)
				end
	
				-- Listen for new characters
				player.CharacterAdded:Connect(function(char)
					if player ~= LocalPlayer then
						task.wait(0.1)
						createNameESP(char)
					end
				end)
			end
	
			-- Create name ESP for NPCs
			for _, model in pairs(Workspace:GetChildren()) do
				if model:IsA("Model") and model:FindFirstChild("Humanoid") then
					-- Check if it's not a player
					local isPlayer = false
					for _, player in pairs(Players:GetPlayers()) do
						if player.Character == model then
							isPlayer = true
							break
						end
					end
	
					if not isPlayer then
						createNameESP(model)
					end
				end
			end
	
		else
			button.BackgroundColor3 = DESELECTED
	
			-- Clean up all ESP
			for char, espData in pairs(espCache) do
				if espData.connection then
					espData.connection:Disconnect()
				end
				if espData.screenGui then
					espData.screenGui:Destroy()
				end
			end
			espCache = {}
		end
	end)
end
coroutine.wrap(SFUEXK_fake_script)()
local function GRCUF_fake_script() -- ColorPickerFrame.LocalScript 
	local script = Instance.new('LocalScript', ColorPickerFrame)

	local frame = script.Parent
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
coroutine.wrap(GRCUF_fake_script)()
local function JLXUCFV_fake_script() -- Frame_8.LocalScript 
	local script = Instance.new('LocalScript', Frame_8)

	
end
coroutine.wrap(JLXUCFV_fake_script)()
