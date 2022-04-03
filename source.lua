local V3N = {}

local TweenSerice = game:GetService("TweenService")
local TI = TweenInfo.new
local InputService = game:GetService("UserInputService")
local Run = game:GetService("RunService")

local Utils = {}
local Objects = {}

function V3N:SetDraggable(Object, ToDrag)

    ToDrag = ToDrag or Object

    local Dragging = false
    local DragInput, MousePos, FramePos

    Object.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputState.MouseButton1 then
            Dragging = true
            MousePos = Input.Position
            FramePos = ToDrag.Position

            Input.Changed:Connect(function()
                if Input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end
            end)
        end
    end)

    Object.InputChanged:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseMovement then
            DragInput = Input
        end
    end)

    InputService.InputChanged:Connect(function(Input)
        if Input == DragInput and Dragging then
            local Delta = Input.Position
            ToDrag.Position = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + Delta.X, FramePos.Y.Scale, FramePos.Y.Offset + Delta.Y)
        end
    end)

end

function Utils:CreateTween(Object, Properties, Time, ...)
   TweenService:Create(Object, TI(Time, ...), Properties):Play() 
end

function GenerateRandomString()
    local Length = math.random(10, 20)
    local Array = {}
    for i = 1, Length do
        Array[i] = string.char(math.random(32, 126))
    end
    return table.concat(Array)
end

local CurrentLibraryThemes = {
    
}
local LibraryThemeStyles = {

}

local LibrarySettings = {

}

local LibraryName = GenerateRandomString()

__COREGUI__ = game:GetService("CoreGui")
__PARENT__ = nil

if (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = GenerateRandomString()
	syn.protect_gui(Main)
	Main.Parent = __COREGUI__
	__PARENT__ = Main
elseif get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	local Main = Instance.new("ScreenGui")
	Main.Name = GenerateRandomString()
	Main.Parent = hiddenUI()
	__PARENT__ = Main
elseif COREGUI:FindFirstChild('RobloxGui') then
	PARENT = __COREGUI__.RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = GenerateRandomString()
	Main.Parent = __COREGUI__
	__PARENT__ = Main
end

function V3N:CreateWindow(WindowTitle, HubVersion)

    WindowTitle = WindowTitle or "Error"
    HubVersion = HubVersion or "?"
    local SelectedTab

    table.insert(V3N, WindowTitle)

    local V3N_Library = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local SideBar = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Top = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Version = Instance.new("TextLabel")
    local Bottom = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local Tab = Instance.new("TextButton")
    local UICorner_3 = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local ContentArea = Instance.new("ScrollingFrame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local SectionTitle = Instance.new("TextLabel")
    local Label = Instance.new("TextLabel")
    local Options = Instance.new("Frame")
    local OptionName = Instance.new("TextLabel")
    local MenuButton = Instance.new("TextButton")
    local UICorner_4 = Instance.new("UICorner")
    local Button = Instance.new("TextButton")
    local UICorner_5 = Instance.new("UICorner")
    local Toggle = Instance.new("Frame")
    local ToggleName = Instance.new("TextLabel")
    local Toggle_1 = Instance.new("TextButton")
    local UICorner_6 = Instance.new("UICorner")
    local Toggle_2 = Instance.new("TextButton")
    local UICorner_7 = Instance.new("UICorner")
    local Slider = Instance.new("Frame")
    local SliderName = Instance.new("TextLabel")
    local Value = Instance.new("TextLabel")
    local SliderBack = Instance.new("Frame")
    local UICorner_8 = Instance.new("UICorner")
    local SliderCircle = Instance.new("Frame")
    local UICorner_9 = Instance.new("UICorner")
    local OptionsMenu = Instance.new("ScrollingFrame")
    local Title_2 = Instance.new("TextLabel")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local Option = Instance.new("TextButton")
    local UICorner_10 = Instance.new("UICorner")
    local BackBlur = Instance.new("Frame")
    local UICorner_11 = Instance.new("UICorner")

    V3N:SetDraggable(SideBar, V3N_Library)

    V3N_Library.Name = "V3N_Library"
    V3N_Library.Parent = game.CoreGui
    V3N_Library.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    V3N_Library.BorderSizePixel = 0
    V3N_Library.Position = UDim2.new(0.5, -286, 0.5, -169)
    V3N_Library.Size = UDim2.new(0, 573, 0, 338)

    UICorner.CornerRadius = UDim.new(0.0199999996, 0)
    UICorner.Parent = V3N_Library

    SideBar.Name = "SideBar"
    SideBar.Parent = V3N_Library
    SideBar.BackgroundColor3 = Color3.fromRGB(33, 34, 43)
    SideBar.BorderSizePixel = 0
    SideBar.Size = UDim2.new(0.303664923, 0, 1, 0)

    UICorner_2.CornerRadius = UDim.new(0.0399999991, 0)
    UICorner_2.Parent = SideBar

    Top.Name = "Top"
    Top.Parent = SideBar
    Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Top.BackgroundTransparency = 1.000
    Top.BorderSizePixel = 0
    Top.Size = UDim2.new(1, 0, 0.210059166, 0)

    Title.Name = "Title"
    Title.Parent = Top
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(1, 0, 0.563380301, 0)
    Title.Font = Enum.Font.Nunito
    Title.Text = WindowTitle
    Title.TextColor3 = Color3.fromRGB(115, 122, 255)
    Title.TextSize = 31.000

    Version.Name = "Version"
    Version.Parent = Top
    Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Version.BackgroundTransparency = 1.000
    Version.BorderSizePixel = 0
    Version.Position = UDim2.new(0, 0, 0.563380301, 0)
    Version.Size = UDim2.new(1, 0, 0.436619729, 0)
    Version.Font = Enum.Font.SourceSans
    Version.Text = "Version: " .. HubVersion
    Version.TextColor3 = Color3.fromRGB(211, 202, 255)
    Version.TextSize = 17.000

    Bottom.Name = "Bottom"
    Bottom.Parent = SideBar
    Bottom.Active = true
    Bottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bottom.BackgroundTransparency = 1.000
    Bottom.BorderSizePixel = 0
    Bottom.Position = UDim2.new(0, 0, 0.210059166, 0)
    Bottom.Size = UDim2.new(1, 0, 0.789940834, 0)
    Bottom.BottomImage = ""
    Bottom.MidImage = ""
    Bottom.ScrollBarThickness = 0
    Bottom.TopImage = ""

    UIListLayout.Parent = Bottom
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0.00499999989, 0)

    Tab.Name = "Tab"
    Tab.Parent = Bottom
    Tab.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
    Tab.BorderSizePixel = 0
    Tab.Position = UDim2.new(0.0344827585, 0, 0, 0)
    Tab.Size = UDim2.new(0, 162, 0, 40)
    Tab.Font = Enum.Font.Ubuntu
    Tab.Text = "Tab Name"
    Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tab.TextSize = 22.000

    UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
    UICorner_3.Parent = Tab

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(94, 93, 122)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(41, 44, 49)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(41, 44, 49))}
    UIGradient.Parent = V3N_Library

    ContentArea.Name = "ContentArea"
    ContentArea.Parent = V3N_Library
    ContentArea.Active = true
    ContentArea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ContentArea.BackgroundTransparency = 1.000
    ContentArea.BorderSizePixel = 0
    ContentArea.Position = UDim2.new(0.303664923, 0, 0.0236686394, 0)
    ContentArea.Size = UDim2.new(0.696335077, 0, 0.976331353, 0)
    ContentArea.Visible = false
    ContentArea.BottomImage = ""
    ContentArea.MidImage = ""
    ContentArea.ScrollBarThickness = 0
    ContentArea.TopImage = ""

    UIListLayout_2.Parent = ContentArea
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0.00499999989, 0)

    SectionTitle.Name = "SectionTitle"
    SectionTitle.Parent = ContentArea
    SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SectionTitle.BackgroundTransparency = 1.000
    SectionTitle.BorderSizePixel = 0
    SectionTitle.Position = UDim2.new(0.0150375944, 0, 0, 0)
    SectionTitle.Size = UDim2.new(0, 387, 0, 33)
    SectionTitle.Font = Enum.Font.SourceSansSemibold
    SectionTitle.Text = "Section Name"
    SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    SectionTitle.TextSize = 31.000
    SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

    Label.Name = "Label"
    Label.Parent = ContentArea
    Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1.000
    Label.BorderSizePixel = 0
    Label.Position = UDim2.new(0.0150375944, 0, 0, 0)
    Label.Size = UDim2.new(0, 387, 0, 33)
    Label.Font = Enum.Font.Nunito
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextSize = 25.000
    Label.TextXAlignment = Enum.TextXAlignment.Left

    Options.Name = "Options"
    Options.Parent = ContentArea
    Options.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Options.BackgroundTransparency = 1.000
    Options.BorderSizePixel = 0
    Options.Position = UDim2.new(0.00845864695, 0, 0.221180484, 0)
    Options.Size = UDim2.new(0, 392, 0, 32)

    OptionName.Name = "OptionName"
    OptionName.Parent = Options
    OptionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    OptionName.BackgroundTransparency = 1.000
    OptionName.BorderSizePixel = 0
    OptionName.Position = UDim2.new(0.00738941645, 0, 0, 0)
    OptionName.Size = UDim2.new(0.572663784, 0, 1, 0)
    OptionName.Font = Enum.Font.SourceSansLight
    OptionName.Text = "Options"
    OptionName.TextColor3 = Color3.fromRGB(255, 255, 255)
    OptionName.TextSize = 25.000
    OptionName.TextXAlignment = Enum.TextXAlignment.Left

    MenuButton.Name = "MenuButton"
    MenuButton.Parent = Options
    MenuButton.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
    MenuButton.BorderSizePixel = 0
    MenuButton.Position = UDim2.new(0.58005321, 0, 0.0114385337, 0)
    MenuButton.Size = UDim2.new(0.413001925, 0, 0.913307071, 0)
    MenuButton.Font = Enum.Font.Ubuntu
    MenuButton.Text = "Choose"
    MenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    MenuButton.TextSize = 22.000

    UICorner_4.CornerRadius = UDim.new(0.100000001, 0)
    UICorner_4.Parent = MenuButton

    Button.Name = "Button"
    Button.Parent = ContentArea
    Button.BackgroundColor3 = Color3.fromRGB(112, 119, 255)
    Button.BorderSizePixel = 0
    Button.Position = UDim2.new(0.0601503775, 0, 0.319940835, 0)
    Button.Size = UDim2.new(0, 351, 0, 29)
    Button.Font = Enum.Font.Ubuntu
    Button.Text = "Button Name"
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextSize = 22.000

    UICorner_5.CornerRadius = UDim.new(0.150000006, 0)
    UICorner_5.Parent = Button

    Toggle.Name = "Toggle"
    Toggle.Parent = ContentArea
    Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.BackgroundTransparency = 1.000
    Toggle.BorderSizePixel = 0
    Toggle.Position = UDim2.new(0.00845864695, 0, 0.221180484, 0)
    Toggle.Size = UDim2.new(0, 392, 0, 32)

    ToggleName.Name = "ToggleName"
    ToggleName.Parent = Toggle
    ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleName.BackgroundTransparency = 1.000
    ToggleName.BorderSizePixel = 0
    ToggleName.Position = UDim2.new(0.00738941645, 0, 0, 0)
    ToggleName.Size = UDim2.new(0.572663784, 0, 1, 0)
    ToggleName.Font = Enum.Font.SourceSansLight
    ToggleName.Text = "Toggle Name: On"
    ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleName.TextSize = 25.000
    ToggleName.TextXAlignment = Enum.TextXAlignment.Left

    Toggle_1.Name = "Toggle_1"
    Toggle_1.Parent = Toggle
    Toggle_1.BackgroundColor3 = Color3.fromRGB(100, 80, 255)
    Toggle_1.BorderSizePixel = 0
    Toggle_1.Position = UDim2.new(0.603012383, 0, 0.0114383698, 0)
    Toggle_1.Size = UDim2.new(0.163001895, 0, 0.913307071, 0)
    Toggle_1.Font = Enum.Font.Ubuntu
    Toggle_1.Text = "ON"
    Toggle_1.TextColor3 = Color3.fromRGB(255, 255, 255)
    Toggle_1.TextSize = 22.000
    Toggle_1.TextWrapped = true

    UICorner_6.CornerRadius = UDim.new(0.100000001, 0)
    UICorner_6.Parent = Toggle_1

    Toggle_2.Name = "Toggle_2"
    Toggle_2.Parent = Toggle
    Toggle_2.BackgroundColor3 = Color3.fromRGB(96, 113, 158)
    Toggle_2.BorderSizePixel = 0
    Toggle_2.Position = UDim2.new(0.807094038, 0, -0.0198116302, 0)
    Toggle_2.Size = UDim2.new(0.163001895, 0, 0.913307071, 0)
    Toggle_2.Font = Enum.Font.Ubuntu
    Toggle_2.Text = "OFF"
    Toggle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Toggle_2.TextSize = 22.000
    Toggle_2.TextWrapped = true

    UICorner_7.CornerRadius = UDim.new(0.100000001, 0)
    UICorner_7.Parent = Toggle_2

    Slider.Name = "Slider"
    Slider.Parent = ContentArea
    Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider.BackgroundTransparency = 1.000
    Slider.BorderSizePixel = 0
    Slider.Position = UDim2.new(0.00877192989, 0, 0.520414293, 0)
    Slider.Size = UDim2.new(0, 392, 0, 73)

    SliderName.Name = "SliderName"
    SliderName.Parent = Slider
    SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderName.BackgroundTransparency = 1.000
    SliderName.BorderSizePixel = 0
    SliderName.Position = UDim2.new(0.0073894579, 0, 0, 0)
    SliderName.Size = UDim2.new(0.835155487, 0, 0.346347004, 0)
    SliderName.Font = Enum.Font.SourceSansLight
    SliderName.Text = "Slider Name"
    SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
    SliderName.TextSize = 25.000
    SliderName.TextXAlignment = Enum.TextXAlignment.Left

    Value.Name = "Value"
    Value.Parent = Slider
    Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Value.BackgroundTransparency = 1.000
    Value.BorderSizePixel = 0
    Value.Position = UDim2.new(0.842544854, 0, 0, 0)
    Value.Size = UDim2.new(0.148222655, 0, 0.346347004, 0)
    Value.Font = Enum.Font.SourceSansLight
    Value.Text = "0"
    Value.TextColor3 = Color3.fromRGB(255, 255, 255)
    Value.TextSize = 25.000
    Value.TextXAlignment = Enum.TextXAlignment.Right

    SliderBack.Name = "SliderBack"
    SliderBack.Parent = Slider
    SliderBack.BackgroundColor3 = Color3.fromRGB(60, 68, 95)
    SliderBack.BorderSizePixel = 0
    SliderBack.Position = UDim2.new(0.0586734712, 0, 0.534246624, 0)
    SliderBack.Size = UDim2.new(0, 345, 0, 13)

    UICorner_8.CornerRadius = UDim.new(1, 0)
    UICorner_8.Parent = SliderBack

    SliderCircle.Name = "SliderCircle"
    SliderCircle.Parent = Slider
    SliderCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderCircle.BorderSizePixel = 0
    SliderCircle.Position = UDim2.new(0.0571036823, 0, 0.465753406, 0)
    SliderCircle.Size = UDim2.new(0, 23, 0, 23)

    UICorner_9.CornerRadius = UDim.new(1, 0)
    UICorner_9.Parent = SliderCircle

    OptionsMenu.Name = "OptionsMenu"
    OptionsMenu.Parent = V3N_Library
    OptionsMenu.Active = true
    OptionsMenu.BackgroundColor3 = Color3.fromRGB(79, 83, 129)
    OptionsMenu.BorderSizePixel = 0
    OptionsMenu.Position = UDim2.new(0.187695771, 0, 0.310449809, 0)
    OptionsMenu.Size = UDim2.new(0, 369, 0, 128)
    OptionsMenu.Visible = false
    OptionsMenu.ZIndex = 101
    OptionsMenu.BottomImage = ""
    OptionsMenu.MidImage = ""
    OptionsMenu.ScrollBarThickness = 0
    OptionsMenu.TopImage = ""

    Title_2.Name = "Title"
    Title_2.Parent = OptionsMenu
    Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title_2.BackgroundTransparency = 1.000
    Title_2.BorderSizePixel = 0
    Title_2.Position = UDim2.new(0, 0, -2.38418579e-07, 0)
    Title_2.Size = UDim2.new(0, 369, 0, 21)
    Title_2.ZIndex = 101
    Title_2.Font = Enum.Font.SourceSansSemibold
    Title_2.Text = "Select Option"
    Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title_2.TextScaled = true
    Title_2.TextSize = 24.000
    Title_2.TextWrapped = true

    UIListLayout_3.Parent = OptionsMenu
    UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0.00499999989, 0)

    Option.Name = "Option"
    Option.Parent = OptionsMenu
    Option.BackgroundColor3 = Color3.fromRGB(100, 104, 153)
    Option.BorderSizePixel = 0
    Option.Position = UDim2.new(0.22899729, 0, 0.19046855, 0)
    Option.Size = UDim2.new(0, 297, 0, 26)
    Option.ZIndex = 101
    Option.Font = Enum.Font.SourceSansLight
    Option.Text = "Option"
    Option.TextColor3 = Color3.fromRGB(255, 255, 255)
    Option.TextScaled = true
    Option.TextSize = 14.000
    Option.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Option.TextWrapped = true

    UICorner_10.CornerRadius = UDim.new(0.200000003, 0)
    UICorner_10.Parent = Option

    BackBlur.Name = "BackBlur"
    BackBlur.Parent = V3N_Library
    BackBlur.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    BackBlur.BackgroundTransparency = 0.200
    BackBlur.BorderSizePixel = 0
    BackBlur.Position = UDim2.new(0.5, -286, 0.5, -169)
    BackBlur.Size = UDim2.new(0, 573, 0, 338)
    BackBlur.Visible = false
    BackBlur.ZIndex = 100

    UICorner_11.CornerRadius = UDim.new(0.0199999996, 0)
    UICorner_11.Parent = BackBlur
end

return V3N
