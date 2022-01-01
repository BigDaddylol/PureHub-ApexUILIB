print("Loading Version 2.2")
local ApexUITable = {GameName = "NameHere",flags={},hidded=false,hidekey=Enum.KeyCode.Semicolon}
local selectdcategory = ""
local ts = game:GetService("TweenService")
local ApexUI = Instance.new("ScreenGui")
ApexUI.Name = "ApexUI"
ApexUI.Parent = game.CoreGui 
ApexUI.ResetOnSpawn = false
local Container = Instance.new("ImageLabel")
Container.Name = "Container"
Container.Parent = ApexUI
Container.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Container.BackgroundTransparency = 1.000
Container.ClipsDescendants = true
Container.Position = UDim2.new(0.38730365, 0, 0.477463871, 0)
Container.Size = UDim2.new(0, 500, 0, 285)
Container.Image = "rbxassetid://3570695787"
Container.ImageColor3 = Color3.fromRGB(35, 35, 35)
Container.ScaleType = Enum.ScaleType.Slice
Container.SliceCenter = Rect.new(100, 100, 100, 100)
Container.SliceScale = 0.100
local Title = Instance.new("TextLabel")
local Background = Instance.new("ImageLabel")
local hider = Instance.new("Frame")
Title.Name = "Title"
Title.Parent = Container
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 3, 0, 0)
Title.Size = UDim2.new(0, 376, 0, 18)
Title.ZIndex = 2
Title.Font = Enum.Font.SourceSansSemibold
spawn(function() while wait() do
		Title.Text = "Apex Hub | "..ApexUITable.GameName
end end)
Title.TextColor3 = Color3.fromRGB(235, 235, 235)
Title.TextSize = 20.000
Title.TextXAlignment = Enum.TextXAlignment.Left
Background.Name = "Background"
Background.Parent = Title
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.Position = UDim2.new(-0.00797872338, 0, 0, 0)
Background.Size = UDim2.new(1.32978725, 0, 1, 0)
Background.Image = "rbxassetid://3570695787"
Background.ImageColor3 = Color3.fromRGB(30, 30, 30)
Background.ScaleType = Enum.ScaleType.Slice
Background.SliceCenter = Rect.new(100, 100, 100, 100)
Background.SliceScale = 0.050
hider.Name = "hider"
hider.Parent = Title
hider.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
hider.BorderSizePixel = 0
hider.Position = UDim2.new(-0.00797872338, 0, 0.444444448, 0)
hider.Size = UDim2.new(1.32978725, 0, 0, 9)
local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Parent = Container
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.958500028, 0, 0, 0)
Close.Size = UDim2.new(0, 20, 0, 18)
Close.AutoButtonColor = false
Close.Font = Enum.Font.SourceSansSemibold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(235, 235, 235)
Close.TextSize = 20.000
local CategoryList = Instance.new("ImageLabel")
local Categories = Instance.new("ScrollingFrame")
local CategoriesList = Instance.new("UIListLayout")
local CategoriesPadding = Instance.new("UIPadding")
CategoryList.Name = "CategoryList"
CategoryList.Parent = Container
CategoryList.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CategoryList.BackgroundTransparency = 1.000
CategoryList.BorderSizePixel = 0
CategoryList.Position = UDim2.new(0, 0, 0.0771929771, 0)
CategoryList.Size = UDim2.new(0, 135, 0, 263)
CategoryList.Image = "rbxassetid://3570695787"
CategoryList.ImageColor3 = Color3.fromRGB(30, 30, 30)
CategoryList.ScaleType = Enum.ScaleType.Slice
CategoryList.SliceCenter = Rect.new(100, 100, 100, 100)
CategoryList.SliceScale = 0.050
Categories.Name = "Categories"
Categories.Parent = CategoryList
Categories.Active = true
Categories.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Categories.BackgroundTransparency = 1.000
Categories.BorderSizePixel = 0
Categories.Size = UDim2.new(1, 0, 1, 0)
Categories.ZIndex = 2
Categories.ScrollBarThickness = 0
CategoriesList.Name = "CategoriesList"
CategoriesList.Parent = Categories
CategoriesList.HorizontalAlignment = Enum.HorizontalAlignment.Center
CategoriesList.SortOrder = Enum.SortOrder.LayoutOrder
CategoriesList.Padding = UDim.new(0, 4)
CategoriesPadding.Name = "CategoriesPadding"
CategoriesPadding.Parent = Categories
local top = Instance.new("Frame")
local bottom = Instance.new("Frame")
top.Name = "top"
top.Parent = CategoryList
top.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
top.BorderSizePixel = 0
top.Size = UDim2.new(0, 100, 0, 13)
bottom.Name = "bottom"
bottom.Parent = CategoryList
function ApexUITable:Category(name)
	local Category = Instance.new("TextButton")
	for i,v in pairs(Container:GetChildren()) do
		if v:IsA("ImageLabel") and v.Name ~= "CategoryList" then
			ts:Create(v,TweenInfo.new(0.3),{Position=UDim2.new(0.277999997, 0,1.0771929845, 0)}):Play()
			v.Visible = false
		end 
	end
	selectdcategory = name
	CategoriesPadding.PaddingTop = UDim.new(0, 2)
	local Category_2 = Instance.new("ImageLabel")
	Category_2.Name = name
	Category_2.Parent = Container
	Category_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Category_2.BackgroundTransparency = 1.000
	Category_2.BorderSizePixel = 0
	Category_2.Position = UDim2.new(0.277999997, 0, 0.0771929845, 0)
	Category_2.Size = UDim2.new(0, 360, 0, 263)
	Category_2.Image = "rbxassetid://3570695787"
	Category_2.ImageColor3 = Color3.fromRGB(30, 30, 30)
	Category_2.ScaleType = Enum.ScaleType.Slice
	Category_2.SliceCenter = Rect.new(100, 100, 100, 100)
	Category_2.SliceScale = 0.050
	local top_2 = Instance.new("Frame")
	local bottom_2 = Instance.new("Frame")
	top_2.Name = "top"
	top_2.Parent = Category_2
	top_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	top_2.BorderSizePixel = 0
	top_2.Position = UDim2.new(0.719101131, 0, 0, 0)
	top_2.Size = UDim2.new(0, 100, 0, 13)
	bottom_2.Name = "bottom"
	bottom_2.Parent = Category_2
	bottom_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	bottom_2.BorderSizePixel = 0
	bottom_2.Position = UDim2.new(-0.00197669864, 0, 0.949999988, 0)
	bottom_2.Size = UDim2.new(0, 100, 0, 13)
	Category.Name = name
	Category.Parent = Categories
	Category.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Category.BorderSizePixel = 0
	Category.Size = UDim2.new(1, -6, 0, 32)
	Category.ZIndex = 3
	Category.AutoButtonColor = false
	Category.Font = Enum.Font.SourceSansSemibold
	Category.Text = name
	Category.TextColor3 = Color3.fromRGB(235, 235, 235)
	Category.TextSize = 18.000
	local corner = Instance.new("UICorner")
	corner.CornerRadius=UDim.new(0,5)
	corner.Parent = Category
	corner.Name = "Corner"
	bottom.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	bottom.BorderSizePixel = 0
	bottom.Position = UDim2.new(0.259259254, 0, 0.949999988, 0)
	bottom.Size = UDim2.new(0, 100, 0, 13)
	local CategoryHolder = Instance.new("ScrollingFrame")
	local CatPadding = Instance.new("UIPadding")
	local CatList = Instance.new("UIListLayout")
	CategoryHolder.Name = "CategoryHolder"
	CategoryHolder.Parent = Category_2
	CategoryHolder.Active = true
	CategoryHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	CategoryHolder.BackgroundTransparency = 1.000
	CategoryHolder.BorderSizePixel = 0
	CategoryHolder.Size = UDim2.new(1, 0, 1, 0)
	CategoryHolder.CanvasSize = UDim2.new(0,0,0,4)
	CategoryHolder.ZIndex = 2
	CategoryHolder.ScrollBarThickness = 0
	CatPadding.Name = "CatPadding"
	CatPadding.Parent = CategoryHolder
	CatPadding.PaddingTop = UDim.new(0, 2)
	CatList.Name = "CatList"
	CatList.Parent = CategoryHolder
	CatList.HorizontalAlignment = Enum.HorizontalAlignment.Center
	CatList.SortOrder = Enum.SortOrder.LayoutOrder
	CatList.Padding = UDim.new(0, 2)
	local cat = {}
	function cat:Toggle(name,default,callback)
		name = name or "Toggle"
		default = default or false
		callback = callback or function() end
		local Toggle = Instance.new("ImageButton")
		local Name = Instance.new("TextLabel")
		local ToggleBorder = Instance.new("Frame")
		local ToggleBtn = Instance.new("Frame")
		local ImageLabel = Instance.new("ImageLabel")
		Toggle.Name = name
		Toggle.Parent = CategoryHolder
		Toggle.Active = false
		Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Toggle.BorderSizePixel = 0
		Toggle.Selectable = false
		Toggle.Size = UDim2.new(1, -4, 0, 24)
		CategoryHolder.CanvasSize = CategoryHolder.CanvasSize + UDim2.new(0,0,0,26)
		Toggle.ZIndex = 2
		Toggle.AutoButtonColor = false 
		local corner = Instance.new("UICorner")
		corner.CornerRadius=UDim.new(0,5)
		corner.Parent = Toggle
		corner.Name = "Corner"
		Name.Name = "Name"
		Name.Parent = Toggle
		Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Name.BackgroundTransparency = 1.000
		Name.BorderSizePixel = 0
		Name.Position = UDim2.new(0.0168539323, 0, 0.09375, 0)
		Name.Size = UDim2.new(0, 250, 0.800000012, 0)
		Name.ZIndex = 3
		Name.Font = Enum.Font.SourceSansSemibold
		Name.Text = name
		Name.TextColor3 = Color3.fromRGB(235, 235, 235)
		Name.TextSize = 18.000
		Name.TextXAlignment = Enum.TextXAlignment.Left
		ToggleBorder.Name = "ToggleBorder"
		ToggleBorder.Parent = Toggle
		ToggleBorder.AnchorPoint = Vector2.new(0, 0.5)
		ToggleBorder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		ToggleBorder.Position = UDim2.new(0, 286, 0, 12)
		ToggleBorder.Size = UDim2.new(0, 55, 1, -5)
		ToggleBorder.ZIndex = 4
		local corner1 = Instance.new("UICorner")
		corner1.CornerRadius=UDim.new(0,5)
		corner1.Parent = ToggleBorder
		corner1.Name = "Corner"
		ToggleBtn.Name = "ToggleBtn"
		ToggleBtn.Parent = ToggleBorder
		ToggleBtn.AnchorPoint = Vector2.new(0, 0.5)
		ToggleBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		ToggleBtn.Position = UDim2.new(0.0649999976, 0, 0.5, 0)
		ToggleBtn.Size = UDim2.new(0, 26, 1, -5)
		ToggleBtn.ZIndex = 5
		local corner2 = Instance.new("UICorner")
		corner2.CornerRadius=UDim.new(0,5)
		corner2.Parent = ToggleBtn
		corner2.Name = "Corner"
		ImageLabel.Parent = ToggleBtn
		ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.BorderSizePixel = 0
		ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
		ImageLabel.Rotation = 45.000
		ImageLabel.Size = UDim2.new(0.9, 0, 0.9, 0)
		ImageLabel.ZIndex = 6
		ImageLabel.ScaleType= Enum.ScaleType.Fit
		ImageLabel.Image = "rbxassetid://8421839073"
		ImageLabel.ImageColor3 = Color3.fromRGB(25, 25, 25)
		local toggled = false
		local ts = game:GetService("TweenService")
		if default == false then toggled = false
			ts:Create(ToggleBtn,TweenInfo.new(0.3),{Position=UDim2.new(0.065,0,0.5,0)}):Play()
			ts:Create(Toggle,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()
			ts:Create(ToggleBorder,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(30,30,30)}):Play()
			ts:Create(ToggleBtn,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(45,45,45)}):Play()
			ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(45,45,45)}):Play()
			ImageLabel.Image = "rbxassetid://8421839073"
			ImageLabel.Rotation = 45
			wait(0.15)
			ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(25,25,25)}):Play()
		else toggled = true
			ts:Create(ToggleBtn,TweenInfo.new(0.3),{Position=UDim2.new(0.465,0,0.5,0)}):Play()
			ts:Create(Toggle,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(40,40,40)}):Play()
			ts:Create(ToggleBorder,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()
			ts:Create(ToggleBtn,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(50,50,50)}):Play()
			ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(45,45,45)}):Play()
			ImageLabel.Image = "rbxassetid://6290039376"
			ImageLabel.Rotation = 0
			wait(0.15)
			ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(25,25,25)}):Play()
		end 
		callback(default)
		ApexUITable.flags[name] = default
		Toggle.MouseButton1Click:Connect(function()
			if toggled then toggled = false
				ts:Create(ToggleBtn,TweenInfo.new(0.3),{Position=UDim2.new(0.065,0,0.5,0)}):Play()
				ts:Create(Toggle,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()
				ts:Create(ToggleBorder,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(30,30,30)}):Play()
				ts:Create(ToggleBtn,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(45,45,45)}):Play()
				ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(45,45,45)}):Play()
				ImageLabel.Image = "rbxassetid://8421839073"
				ImageLabel.Rotation = 45
				wait(0.15)
				ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(25,25,25)}):Play()
			else toggled = true
				ts:Create(ToggleBtn,TweenInfo.new(0.3),{Position=UDim2.new(0.465,0,0.5,0)}):Play()
				ts:Create(Toggle,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(40,40,40)}):Play()
				ts:Create(ToggleBorder,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()
				ts:Create(ToggleBtn,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(50,50,50)}):Play()
				ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(45,45,45)}):Play()
				ImageLabel.Image = "rbxassetid://6290039376"
				ImageLabel.Rotation = 0
				wait(0.15)
				ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(25,25,25)}):Play()
				
			end
			callback(toggled)
			ApexUITable.flags[name] = toggled
		end)
		local tgl = {}
		function tgl:Rename(txt)
			Name.Text = txt
		end
		function tgl:Set(thing)
			callback(thing)
			ApexUITable.flags[name] = thing
			if thing == false then toggled = false
				ts:Create(ToggleBtn,TweenInfo.new(0.3),{Position=UDim2.new(0.065,0,0.5,0)}):Play()
				ts:Create(Toggle,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()
				ts:Create(ToggleBorder,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(30,30,30)}):Play()
				ts:Create(ToggleBtn,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(45,45,45)}):Play()
				ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(45,45,45)}):Play()
				ImageLabel.Image = "rbxassetid://8421839073"
				ImageLabel.Rotation = 45
				wait(0.15)
				ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(25,25,25)}):Play()
			else toggled = true
				ts:Create(ToggleBtn,TweenInfo.new(0.3),{Position=UDim2.new(0.465,0,0.5,0)}):Play()
				ts:Create(Toggle,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(40,40,40)}):Play()
				ts:Create(ToggleBorder,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(35,35,35)}):Play()
				ts:Create(ToggleBtn,TweenInfo.new(0.3),{BackgroundColor3=Color3.fromRGB(50,50,50)}):Play()
				ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(45,45,45)}):Play()
				ImageLabel.Image = "rbxassetid://6290039376"
				ImageLabel.Rotation = 0
				wait(0.15)
				ts:Create(ImageLabel,TweenInfo.new(0.15),{ImageColor3=Color3.fromRGB(25,25,25)}):Play()
			end 
		end
		return tgl;
	end
	function cat:Slider(name,numtable,callback)
		name = name or "Slider"
		numtable = numtable or {0,10,100} -- min,default,max
		callback = callback or function() end
		local Slider = Instance.new("ImageButton")
		local Name_2 = Instance.new("TextLabel")
		local ImageButton = Instance.new("ImageButton")
		local ImageButton_2 = Instance.new("ImageButton")
		local Value = Instance.new("TextBox")
		Slider.Name = name
		Slider.Parent = CategoryHolder
		Slider.Active = false
		Slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Slider.BorderSizePixel = 0
		Slider.Selectable = false
		Slider.Size = UDim2.new(1, -4, 0, 40)
		CategoryHolder.CanvasSize = CategoryHolder.CanvasSize + UDim2.new(0,0,0,42)
		Slider.ZIndex = 2
		Slider.AutoButtonColor = false
		local corner = Instance.new("UICorner")
		corner.CornerRadius=UDim.new(0,5)
		corner.Parent = Slider
		corner.Name = "Corner"
		Name_2.Name = "Name"
		Name_2.Parent = Slider
		Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Name_2.BackgroundTransparency = 1.000
		Name_2.BorderSizePixel = 0
		Name_2.Position = UDim2.new(0, 5, 0, 4)
		Name_2.Size = UDim2.new(0, 250, 0, 16)
		Name_2.ZIndex = 3
		Name_2.Font = Enum.Font.SourceSansSemibold
		Name_2.Text = name
		Name_2.TextColor3 = Color3.fromRGB(235, 235, 235)
		Name_2.TextSize = 18.000
		Name_2.TextXAlignment = Enum.TextXAlignment.Left
		ImageButton.Parent = Slider
		ImageButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		ImageButton.Position = UDim2.new(0, 10, 0, 22)
		ImageButton.Size = UDim2.new(0, 335, 0, 13)
		ImageButton.ZIndex = 5
		ImageButton.AutoButtonColor = false
		ImageButton_2.Parent = ImageButton
		ImageButton_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		ImageButton_2.BorderColor3 = Color3.fromRGB(45, 45, 45)
		ImageButton_2.BorderSizePixel = 0
		ImageButton_2.Size = UDim2.new(0, 0, 1, 0)
		ImageButton_2.ZIndex = 6
		ImageButton_2.AutoButtonColor = false
		local corner1 = Instance.new("UICorner")
		corner1.CornerRadius=UDim.new(0,5)
		corner1.Parent = ImageButton_2
		corner1.Name = "Corner"
		Value.Name = "Value"
		Value.Parent = Slider
		Value.Active = false
		Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Value.BackgroundTransparency = 1.000
		Value.BorderSizePixel = 0
		Value.Position = UDim2.new(0, 265, 0, 4)
		Value.Selectable = false
		Value.Size = UDim2.new(0, 75, 0, 16)
		Value.ZIndex = 3
		Value.Font = Enum.Font.SourceSansSemibold
		Value.Text = numtable[2]
		Value.TextColor3 = Color3.fromRGB(235, 235, 235)
		Value.TextSize = 18.000
		Value.TextXAlignment = Enum.TextXAlignment.Right
		local corner2 = Instance.new("UICorner")
		corner2.CornerRadius=UDim.new(0,5)
		corner2.Parent = ImageButton
		corner2.Name = "Corner"
		ApexUITable.flags[name] = numtable[2]
		local Number = Value
		local default = numtable[2]
		local min = numtable[1]
		local max = numtable[3]
		local Inner = ImageButton_2
		local mouse = game.Players.LocalPlayer:GetMouse()
		local old = Number.Text .. ": "
		local uis = game:GetService("UserInputService")
		local Value1;
		local down = false
		Number.Text = default
		game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(default/max, 0, 0, 13)}):Play()
		local function Activate()
			spawn(function()
				down = true
				Value1 = math.floor((((tonumber(max) - tonumber(min)) / 333) * Inner.AbsoluteSize.X) +tonumber(min)) or 0

				Number.Text = Value1  
				ApexUITable.flags[name] = Value1
				callback(Value1)
				game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(0, math.clamp(mouse.X - Inner.AbsolutePosition.X, 0, 335), 0, 13)}):Play()

				while game:GetService("RunService").RenderStepped:wait() and down do
					Value1 = math.floor((((tonumber(max) - tonumber(min)) / 333) * Inner.AbsoluteSize.X) +tonumber(min)) or 0
					Number.Text = Value1              
					ApexUITable.flags[name] = Value1
					callback(Value1)
					game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(0, math.clamp(mouse.X - Inner.AbsolutePosition.X, 0, 335), 0, 13)}):Play()
				end
			end)
		end
		Inner.MouseButton1Down:Connect(function()
			Activate()
		end)
		Slider.MouseButton1Down:Connect(function()
			Activate()
		end)
		uis.InputEnded:connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 and down then
				down = false
				Value1 = math.floor((((tonumber(max) - tonumber(min)) / 333) * Inner.AbsoluteSize.X) +tonumber(min)) or 0
				Number.Text = Value1  
				ApexUITable.flags[name] = Value1
				game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(0, math.clamp(mouse.X - Inner.AbsolutePosition.X, 0, 335), 0, 13)}):Play()
			end        
		end)
		Value.FocusLost:connect(function()
			local whatthefuck = Value.Text
			local h = ""
			for w in string.gmatch(whatthefuck, "%d") do
				h = h..w
			end
			if h == "" then
				h = min
			end
			Value.Text = h
			local insert = tonumber(Value.Text)
			if insert > max then
				Value.Text = max
			end

			if insert < min then
				Value.Text = min
			end

			Value1 = tonumber(Value.Text)
			ApexUITable.flags[name] = Value1
			callback(Value1)
			game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(Value1 / max, 0, 0, 13)}):Play()
		end)
		local sld = {}
		function sld:Rename(txt)
			Name_2.Text = txt
		end
		function sld:Set(val) if val > max then val = max elseif val<min then val = min end
			game:GetService("TweenService"):Create(Inner, TweenInfo.new(0.05), {Size = UDim2.new(val/max, 0, 0, 13)}):Play()
			Value1 = val 
			Number.Text = val
			ApexUITable.flags[name] = val
			callback(val)
		end
		return sld;
	end
	function cat:Label(name)
		name = name or "Label"
		local Label = Instance.new("ImageButton")
		local Name_3 = Instance.new("TextLabel")
		Label.Name = name
		Label.Parent = CategoryHolder
		Label.Active = false
		Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Label.BorderSizePixel = 0
		Label.Position = UDim2.new(0.00555555569, 0, 0.326996207, 0)
		Label.Selectable = false
		Label.Size = UDim2.new(1, -4, 0, 14)
		CategoryHolder.CanvasSize = CategoryHolder.CanvasSize + UDim2.new(0,0,0,16)
		Label.ZIndex = 2
		Label.AutoButtonColor = false
		local corner = Instance.new("UICorner")
		corner.CornerRadius=UDim.new(0,5)
		corner.Parent = Label
		corner.Name = "Corner"
		Name_3.Name = "Name"
		Name_3.Parent = Label
		Name_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Name_3.BackgroundTransparency = 1.000
		Name_3.BorderSizePixel = 0
		Name_3.Position = UDim2.new(0.0168541037, 0, 0.09375, 0)
		Name_3.Size = UDim2.new(0.280899137, 250, 0.800000012, 0)
		Name_3.ZIndex = 3
		Name_3.Text = name
		Name_3.Font = Enum.Font.SourceSansSemibold
		Name_3.TextColor3 = Color3.fromRGB(235, 235, 235)
		Name_3.TextSize = 14.000
		local lbl = {}
		function lbl:Rename(txt)
			Name_3.Text = txt
		end
		return lbl;
	end
	function cat:Button(name,callback)
		name = name or "Button"
		callback = callback or function() end
		local Button = Instance.new("ImageButton")
		local Name_4 = Instance.new("TextLabel")
		Button.Name = name
		Button.Parent = CategoryHolder
		Button.Active = false
		Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		Button.BorderSizePixel = 0
		Button.ClipsDescendants = true
		Button.Selectable = false
		Button.Size = UDim2.new(1, -4, 0, 24)
		CategoryHolder.CanvasSize = CategoryHolder.CanvasSize + UDim2.new(0,0,0,26)
		Button.ZIndex = 2
		Button.AutoButtonColor = false
		local corner = Instance.new("UICorner")
		corner.CornerRadius=UDim.new(0,5)
		corner.Parent = Button
		corner.Name = "Corner"
		Name_4.Name = "Name"
		Name_4.Parent = Button
		Name_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Name_4.BackgroundTransparency = 1.000
		Name_4.BorderSizePixel = 0
		Name_4.Position = UDim2.new(0.0168541037, 0, 0.09375, 0)
		Name_4.Size = UDim2.new(0.280899137, 250, 0.800000012, 0)
		Name_4.ZIndex = 4
		Name_4.Font = Enum.Font.SourceSansSemibold
		Name_4.Text = name
		Name_4.TextColor3 = Color3.fromRGB(235, 235, 235)
		Name_4.TextSize = 18.000
		local m=game.Players.LocalPlayer:GetMouse()
		local function CircleClick(Button_2,X, Y)
			coroutine.resume(coroutine.create(function()
				Button_2.ClipsDescendants = true
				local Circle = Instance.new("ImageLabel",Button_2) Circle.BackgroundTransparency=1;Circle.Visible=true;Circle.Name="Circle";Circle.Image="rbxassetid://266543268";Circle.ImageColor3=Color3.fromRGB(30, 30, 30)
				Circle.Parent = Button_2
				Circle.ZIndex=16
				local NewX = X - Circle.AbsolutePosition.X
				local NewY = Y - Circle.AbsolutePosition.Y
				Circle.Position = UDim2.new(0, NewX, 0, NewY)
				local Size = 0
				if Button_2.AbsoluteSize.X > Button_2.AbsoluteSize.Y then
					Size = Button_2.AbsoluteSize.X*1
				elseif Button_2.AbsoluteSize.X < Button_2.AbsoluteSize.Y then
					Size = Button_2.AbsoluteSize.Y*1
				elseif Button_2.AbsoluteSize.X == Button_2.AbsoluteSize.Y then																																																																													
					Size = Button_2.AbsoluteSize.X*1
				end
				local Time = 0.6
				Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
				for i=1,10 do
					Circle.ImageTransparency = Circle.ImageTransparency + 0.13
					wait(Time/10)
				end
				Circle:Destroy()
			end))
		end
		local ts = game:GetService("TweenService")
		local function bubblefx(obj) spawn(function() pcall(function()
			ts:Create(obj,TweenInfo.new(0.12),{Size=obj.Size + UDim2.new(0,24,0,6)}):Play(); 
			wait(0.24)
				ts:Create(obj,TweenInfo.new(0.12),{Size=obj.Size - UDim2.new(0,30,0,8)}):Play();
			wait(0.24)
				ts:Create(obj,TweenInfo.new(0.12),{Size=obj.Size + UDim2.new(0,6,0,2)}):Play();
			end) end)
		end
		Button.MouseButton1Click:Connect(function()
			CircleClick(Button,m.X,m.Y)
			bubblefx(Button)
			callback()
		end)
		local btn = {}
		function btn:Rename(txt)
			Name_4.Text = txt
		end
		return btn;
	end
	function cat:Box(name,default,callback)
		name = name or "Box"
		default = default or "TXT HERE"
		callback = callback or function() end
		ApexUITable.flags[name] = default
		local Box = Instance.new("ImageButton")
		local Name_5 = Instance.new("TextLabel")
		local ToggleBorder_2 = Instance.new("TextBox")
		Box.Name = name
		Box.Parent = CategoryHolder
		Box.Active = false
		Box.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Box.BorderSizePixel = 0
		Box.Selectable = false
		Box.Size = UDim2.new(1, -4, 0, 24)
		CategoryHolder.CanvasSize = CategoryHolder.CanvasSize + UDim2.new(0,0,0,26)
		Box.ZIndex = 2
		Box.AutoButtonColor = false
		local corner = Instance.new("UICorner")
		corner.CornerRadius=UDim.new(0,5)
		corner.Parent = Box
		corner.Name = "Corner"
		Name_5.Name = "Name"
		Name_5.Parent = Box
		Name_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Name_5.BackgroundTransparency = 1.000
		Name_5.BorderSizePixel = 0
		Name_5.Position = UDim2.new(0.0168539323, 0, 0.09375, 0)
		Name_5.Size = UDim2.new(0, 250, 0.800000012, 0)
		Name_5.ZIndex = 3
		Name_5.Font = Enum.Font.SourceSansSemibold
		Name_5.Text = name
		Name_5.TextColor3 = Color3.fromRGB(235, 235, 235)
		Name_5.TextSize = 18.000
		Name_5.TextXAlignment = Enum.TextXAlignment.Left
		ToggleBorder_2.Name = "ToggleBorder"
		ToggleBorder_2.Parent = Box
		ToggleBorder_2.Active = false
		ToggleBorder_2.AnchorPoint = Vector2.new(0, 0.5)
		ToggleBorder_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		ToggleBorder_2.Position = UDim2.new(0.804325759, 0, 0.5, 0)
		ToggleBorder_2.Selectable = false
		ToggleBorder_2.Size = UDim2.new(0, 55, 1, -5)
		ToggleBorder_2.ZIndex = 4
		ToggleBorder_2.Text = default
		local corner1 = Instance.new("UICorner")
		corner1.CornerRadius=UDim.new(0,5)
		corner1.Parent = ToggleBorder_2
		corner1.Name = "Corner"
		callback(default)
		ToggleBorder_2.TextColor3 = Color3.fromRGB(235, 235, 235)
		local TextBox = ToggleBorder_2
		TextBox.Focused:Connect(function()
			game.TweenService:Create(TextBox, TweenInfo.new(0.3), {Size = UDim2.new(0, 112,1, -5)}):Play()
			game.TweenService:Create(TextBox, TweenInfo.new(0.3), {Position = UDim2.new(0.644, 0,0.5, 0)}):Play()
		end)
		TextBox.FocusLost:Connect(function()
			game.TweenService:Create(TextBox, TweenInfo.new(0.3), {Size = UDim2.new(0, 55,1, -5)}):Play()
			game.TweenService:Create(TextBox, TweenInfo.new(0.3), {Position = UDim2.new(0.804, 0,0.5, 0)}):Play()
			ApexUITable.flags[name] = ToggleBorder_2.Text
			callback(ToggleBorder_2.Text)
		end)
		
		local bx = {}
		function bx:Rename(txt)
			Name_5.Text = txt
		end
		function bx:Set(setto)
			ToggleBorder_2.Text = setto
			ApexUITable.flags[name] = ToggleBorder_2.Text
			callback(setto)
		end
		return bx;
	end
	function cat:Dropdown(name,default,list,callback)
		name = name or "Dropdown"
		default = default or nil
		list = list or {"Opt1","Opt2","Opt3"}
		callback = callback or function() end
		ApexUITable.flags[name] = default
		local Dropdown = Instance.new("ImageButton")
		local DD_Text = Instance.new("TextLabel")
		local Dropout = Instance.new("ImageLabel")
		local Inner = Instance.new("ImageLabel")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")
		local Drop_Round = Instance.new("ImageLabel")
		local Arrow = Instance.new("TextLabel")
		Dropdown.Name = name
		Dropdown.Parent = CategoryHolder
		Dropdown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Dropdown.BorderSizePixel = 0
		Dropdown.Position = UDim2.new(0.0462962948, 0, 0.270270258, 0)
		Dropdown.Size = UDim2.new(1, -4, 0, 24)
		CategoryHolder.CanvasSize = CategoryHolder.CanvasSize + UDim2.new(0,0,0,26)
		Dropdown.ZIndex = 5
		Dropdown.AutoButtonColor = false
		local corner = Instance.new("UICorner")
		corner.CornerRadius=UDim.new(0,5)
		corner.Parent = Dropdown
		corner.Name = "Corner"
		DD_Text.Name = "DD_Text"
		DD_Text.Parent = Dropdown
		DD_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DD_Text.BackgroundTransparency = 1.000
		DD_Text.Position = UDim2.new(0, 6, 0, 1)
		DD_Text.Size = UDim2.new(0, 250, 0, 25)
		DD_Text.ZIndex = 6
		DD_Text.Font = Enum.Font.SourceSansSemibold
		DD_Text.Text = name
		DD_Text.TextColor3 = Color3.fromRGB(255, 255, 255)
		DD_Text.TextSize = 18.000
		DD_Text.TextXAlignment = Enum.TextXAlignment.Left
		Dropout.Name = "Dropout"
		Dropout.Parent = Dropdown
		Dropout.AnchorPoint = Vector2.new(0.5, 0)
		Dropout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Dropout.BackgroundTransparency = 1.000
		Dropout.ClipsDescendants = true
		Dropout.Position = UDim2.new(0, 178,0,24)
		Dropout.Size = UDim2.new(1, -10, 0, 0)
		Dropout.ZIndex = 3
		Dropout.Image = "rbxassetid://3570695787"
		Dropout.ImageColor3 = Color3.fromRGB(40, 40, 40)
		Dropout.ScaleType = Enum.ScaleType.Slice
		Dropout.SliceCenter = Rect.new(100, 100, 100, 100)
		Dropout.SliceScale = 0.060
		Inner.Name = "Inner"
		Inner.Parent = Dropout
		Inner.AnchorPoint = Vector2.new(0.5, 0.5)
		Inner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Inner.BackgroundTransparency = 1.000
		Inner.Position = UDim2.new(0.5, 0, 0.5, 0)
		Inner.Size = UDim2.new(1, -2, 1, -2)
		Inner.ZIndex = 3
		Inner.Image = "rbxassetid://3570695787"
		Inner.ImageColor3 = Color3.fromRGB(50, 50, 50)
		Inner.ScaleType = Enum.ScaleType.Slice
		Inner.SliceCenter = Rect.new(100, 100, 100, 100)
		Inner.SliceScale = 0.060
		UIListLayout.Parent = Inner
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 4)
		UIPadding.Parent = Inner
		UIPadding.PaddingTop = UDim.new(0, 2)
		Drop_Round.Name = "Drop_Round"
		Drop_Round.Parent = Dropdown
		Drop_Round.Active = true
		Drop_Round.AnchorPoint = Vector2.new(0, 0.5)
		Drop_Round.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Drop_Round.BackgroundTransparency = 1.000
		Drop_Round.Position = UDim2.new(0, 322, 0, 12)
		Drop_Round.Selectable = true
		Drop_Round.Size = UDim2.new(0, 15, 0, 19)
		Drop_Round.ZIndex = 5
		Drop_Round.Image = "rbxassetid://3570695787"
		Drop_Round.ImageColor3 = Color3.fromRGB(30, 30, 30)
		Drop_Round.ScaleType = Enum.ScaleType.Slice
		Drop_Round.SliceCenter = Rect.new(100, 100, 100, 100)
		Drop_Round.SliceScale = 0.060
		Arrow.Name = "Arrow"
		Arrow.Parent = Drop_Round
		Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Arrow.BackgroundTransparency = 1.000
		Arrow.BorderSizePixel = 0
		Arrow.Size = UDim2.new(1, 0, 1, 0)
		Arrow.ZIndex = 5
		Arrow.Font = Enum.Font.SourceSansSemibold
		Arrow.Text = "V"
		Arrow.TextColor3 = Color3.fromRGB(255, 255, 255)
		Arrow.TextSize = 14.000
		for i,v in pairs(list) do
			local Button_2 = Instance.new("ImageButton")
			local Title_2 = Instance.new("TextLabel")
			local corner = Instance.new("UICorner")
			corner.CornerRadius=UDim.new(0,5)
			Button_2.Name = v
			Button_2.Parent = Inner
			Button_2.Active = false
			Button_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Button_2.BorderSizePixel = 0
			Button_2.ClipsDescendants = true
			Button_2.Selectable = false
			Button_2.Size = UDim2.new(1, -4, 0, 24)
			Button_2.ZIndex = 5
			Button_2.AutoButtonColor = false
			local corner = Instance.new("UICorner")
			corner.CornerRadius=UDim.new(0,5)
			corner.Parent = Button_2
			corner.Name = "Corner"
			Title_2.Name = "Title"
			Title_2.Parent = Button_2
			Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_2.BackgroundTransparency = 1.000
			Title_2.BorderSizePixel = 0
			Title_2.Position = UDim2.new(0.0168541037, 0, 0.09375, 0)
			Title_2.Size = UDim2.new(0.280899137, 250, 0.800000012, 0)
			Title_2.ZIndex = 5
			Title_2.Font = Enum.Font.SourceSansSemibold
			Title_2.Text = v
			Title_2.TextColor3 = Color3.fromRGB(235, 235, 235)
			Title_2.TextSize = 18.000
			local m=game.Players.LocalPlayer:GetMouse()
			local Button = Button_2
			local function CircleClick(Button_2,X, Y)
				coroutine.resume(coroutine.create(function()
					Button_2.ClipsDescendants = true
					local Circle = Instance.new("ImageLabel",Button_2) Circle.BackgroundTransparency=1;Circle.Visible=true;Circle.Name="Circle";Circle.Image="rbxassetid://266543268";Circle.ImageColor3=Color3.fromRGB(30, 30, 30)
					Circle.Parent = Button_2
					Circle.ZIndex=16
					local NewX = X - Circle.AbsolutePosition.X
					local NewY = Y - Circle.AbsolutePosition.Y
					Circle.Position = UDim2.new(0, NewX, 0, NewY)
					local Size = 0
					if Button_2.AbsoluteSize.X > Button_2.AbsoluteSize.Y then
						Size = Button_2.AbsoluteSize.X*1
					elseif Button_2.AbsoluteSize.X < Button_2.AbsoluteSize.Y then
						Size = Button_2.AbsoluteSize.Y*1
					elseif Button_2.AbsoluteSize.X == Button_2.AbsoluteSize.Y then																																																																													
						Size = Button_2.AbsoluteSize.X*1
					end
					local Time = 0.6
					Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
					for i=1,10 do
						Circle.ImageTransparency = Circle.ImageTransparency + 0.13
						wait(Time/10)
					end
					Circle:Destroy()
				end))
			end
			Button.MouseButton1Click:Connect(function()
				CircleClick(Button_2,m.X,m.Y)
				callback(Title_2.Text)
				ApexUITable.flags[name] = Title_2.Text
			end)
		end
		local tog = false
		local old = DD_Text.Text
		if default ~= nil then
			DD_Text.Text = old .. ": "..default
		end
		local on = Color3.fromRGB(255, 170, 255)
		local off = Color3.fromRGB(255, 255, 255)
		local m=game.Players.LocalPlayer:GetMouse()
		local function CircleClick(Button_2,X, Y)
			coroutine.resume(coroutine.create(function()
				Button_2.ClipsDescendants = true
				local Circle = Instance.new("ImageLabel",Button_2) Circle.BackgroundTransparency=1;Circle.Visible=true;Circle.Name="Circle";Circle.Image="rbxassetid://266543268";Circle.ImageColor3=Color3.fromRGB(30, 30, 30)
				Circle.Parent = Button_2
				Circle.ZIndex=16
				local NewX = X - Circle.AbsolutePosition.X
				local NewY = Y - Circle.AbsolutePosition.Y
				Circle.Position = UDim2.new(0, NewX, 0, NewY)
				local Size = 0
				if Button_2.AbsoluteSize.X > Button_2.AbsoluteSize.Y then
					Size = Button_2.AbsoluteSize.X*1
				elseif Button_2.AbsoluteSize.X < Button_2.AbsoluteSize.Y then
					Size = Button_2.AbsoluteSize.Y*1
				elseif Button_2.AbsoluteSize.X == Button_2.AbsoluteSize.Y then																																																																													
					Size = Button_2.AbsoluteSize.X*1
				end
				local Time = 0.6
				Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
				for i=1,10 do
					Circle.ImageTransparency = Circle.ImageTransparency + 0.13
					wait(Time/10)
				end
				Circle:Destroy()
			end))
		end
		local y = 6
		local h = ""
		local function fix() y=6
			for i,v in pairs(Inner:GetChildren()) do 
				if v:IsA("ImageButton") and v.Visible == true then
					y = y + 28
					v.MouseButton1Click:Connect(function()
						tog = false
						DD_Text.Text = old .. ": "..v.Title.Text
						h = v.Title.Text
						game:GetService("TweenService"):Create(Arrow,TweenInfo.new(0.5),{Rotation = 0}):Play()
						game:GetService("TweenService"):Create(Dropout,TweenInfo.new(0.5),{Size = UDim2.new(1,-10,0,0)}):Play()
						game:GetService("TweenService"):Create(Dropdown,TweenInfo.new(0.5),{Size = Dropdown.Size - UDim2.new(0,0,0,y)}):Play()
						--game:GetService("TweenService"):Create(Category_2,TweenInfo.new(0.5),{Size = Category_2.Size - UDim2.new(0,0,0,y)}):Play()
						CategoryHolder.CanvasSize = CategoryHolder.CanvasSize - UDim2.new(0,0,0,y)
					end)
				end
			end
		end		
		Dropdown.MouseButton1Click:Connect(function()
			CircleClick(Dropdown,m.X,m.Y)
			if tog == false then
				tog = true
				fix()
				game:GetService("TweenService"):Create(Arrow,TweenInfo.new(0.5),{Rotation = 90}):Play()
				game:GetService("TweenService"):Create(Dropout,TweenInfo.new(0.5),{Size = UDim2.new(1,-10,0,y)}):Play()
				game:GetService("TweenService"):Create(Dropdown,TweenInfo.new(0.5),{Size = Dropdown.Size + UDim2.new(0,0,0,y)}):Play()
				--game:GetService("TweenService"):Create(Category_2,TweenInfo.new(0.5),{Size = Category_2.Size + UDim2.new(0,0,0,y)}):Play()
				CategoryHolder.CanvasSize = CategoryHolder.CanvasSize + UDim2.new(0,0,0,y)
				print(y)
			else tog = false
				local x = Dropout.Size.Y.Offset
				game:GetService("TweenService"):Create(Arrow,TweenInfo.new(0.5),{Rotation = 0}):Play()
				game:GetService("TweenService"):Create(Dropout,TweenInfo.new(0.5),{Size = UDim2.new(1,-10,0,0)}):Play()
				game:GetService("TweenService"):Create(Dropdown,TweenInfo.new(0.5),{Size = Dropdown.Size - UDim2.new(0,0,0,x-4)}):Play()
				--game:GetService("TweenService"):Create(Category_2,TweenInfo.new(0.5),{Size = Category_2.Size - UDim2.new(0,0,0,x-4)}):Play()
				CategoryHolder.CanvasSize = CategoryHolder.CanvasSize - UDim2.new(0,0,0,y)
			end
		end)
		local bx = {}
		function bx:Rename(txt)
			DD_Text.Text = txt
		end
		function bx:Set(setto)
			DD_Text.Text = old .. ": "..setto
			ApexUITable.flags[name] = setto
			callback(setto)
		end
		return bx;
	end
	local ts = game:GetService("TweenService")
	local function bubblefx(obj) spawn(function() pcall(function()
		ts:Create(obj,TweenInfo.new(0.12),{Size=obj.Size + UDim2.new(0,24,0,6)}):Play(); 
		wait(0.24)
			ts:Create(obj,TweenInfo.new(0.12),{Size=obj.Size - UDim2.new(0,30,0,8)}):Play();
		wait(0.24)
			ts:Create(obj,TweenInfo.new(0.12),{Size=obj.Size + UDim2.new(0,6,0,2)}):Play();
		end) end)
	end
	local function hoverfx(obj)
		ts:Create(obj,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(40,40,40)}):Play(); 
	end
	local function leftfx(obj)
		ts:Create(obj,TweenInfo.new(0.3),{BackgroundColor3 = Color3.fromRGB(35,35,35)}):Play();
	end
	local function movecategory(category)
		if category ~= selectdcategory then
			for i,v in pairs(Container:GetChildren()) do
				if v.Name == category and v.ClassName == "ImageLabel" and v.Visible == false then
					v.Visible = true
					ts:Create(v,TweenInfo.new(0.3),{Position=UDim2.new(0.277999997, 0,0.0771929845, 0)}):Play()
					selectdcategory = category
				elseif v.Name ~= category and v.Name ~= "CategoryList" and v:IsA("ImageLabel") and v.Visible == true then
					ts:Create(v,TweenInfo.new(0.3),{Position=UDim2.new(0.277999997, 0,1.0771929845, 0)}):Play()
					v.Visible = false
				end
			end
			for i,v in pairs(Categories:GetChildren()) do
				if v:IsA("TextButton") and v.Name ~= category then
					leftfx(v)
				end
			end
		end
	end
	for i,v in pairs(Categories:GetChildren()) do
		if v:IsA("TextButton") then
			local cat = v
			cat.MouseEnter:Connect(function()
				if selectdcategory ~= cat.Name then
					hoverfx(cat)
				end
			end)
			cat.MouseLeave:Connect(function()
				if selectdcategory ~= cat.Name then
					leftfx(cat)
				end
			end)
			cat.MouseButton1Click:Connect(function()
				bubblefx(v)
				ts:Create(v,TweenInfo.new(0.04),{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play(); wait(0.04)
				movecategory(v.Name)
			end)
		end
	end
	return cat;
end
local scripts = Instance.new("Folder",ApexUI)
	local script = Instance.new('LocalScript', scripts)
	local ts = game:GetService("TweenService")
	local hovertable = {}
	
	-- // FX \\ --
	
	local function bubblefx(obj)
		local oldtxt = obj.TextSize
		ts:Create(obj,TweenInfo.new(0.08),{TextSize=oldtxt+2,TextStrokeTransparency=0.4}):Play(); wait(0.08)
		ts:Create(obj,TweenInfo.new(0.12),{TextSize=oldtxt+1,TextStrokeTransparency=0}):Play(); wait(0.12)
		ts:Create(obj,TweenInfo.new(0.06),{TextSize=oldtxt-4,TextStrokeTransparency=0.8}):Play(); wait(0.06)
		ts:Create(obj,TweenInfo.new(0.04),{TextSize=oldtxt+1,TextStrokeTransparency=1}):Play(); wait(0.04)
	
	end
	-- Main
	local function hoverfx(obj)
		local oldtxt = 18
		ts:Create(obj,TweenInfo.new(0.08),{BackgroundColor3 = Color3.fromRGB(35,35,35),TextSize=oldtxt+1,TextStrokeTransparency=0.4}):Play(); wait(0.10)
		ts:Create(obj,TweenInfo.new(0.12),{TextSize=oldtxt+1,TextStrokeTransparency=0}):Play(); wait(0.15)
		ts:Create(obj,TweenInfo.new(0.06),{TextSize=oldtxt-3,TextStrokeTransparency=0.8}):Play(); wait(0.09)
		ts:Create(obj,TweenInfo.new(0.04),{BackgroundColor3 = Color3.fromRGB(35,35,35),TextSize=oldtxt+1,TextStrokeTransparency=1}):Play() wait(0.04)
	end
	
	
	local function leftfx(obj)
		--if obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" then
		local oldtxt = 18
		ts:Create(obj,TweenInfo.new(0.08),{BackgroundColor3 = Color3.fromRGB(35,35,35),TextSize=oldtxt+1,TextStrokeTransparency=0.4}):Play(); wait(0.08)
		ts:Create(obj,TweenInfo.new(0.12),{TextSize=oldtxt+1,TextStrokeTransparency=0}):Play(); wait(0.12)
		ts:Create(obj,TweenInfo.new(0.06),{TextSize=oldtxt-3,TextStrokeTransparency=0.8}):Play(); wait(0.06)
		ts:Create(obj,TweenInfo.new(0.04),{BackgroundColor3 = Color3.fromRGB(35,35,35),TextSize=oldtxt+1,TextStrokeTransparency=1}):Play(); wait(0.04)
	
	end
	
	local function movecategory(category)
		if category == not selectdcategory then
			for i,v in pairs(Container:GetChildren()) do
				if v.Name == category and v.ClassName == "ImageLabel" and v.Visible == false then
					v.Position=UDim2.new(1,0,0.077,0)
					v.Visible = true
				ts:Create(v,TweenInfo.new(0.3),{Position=UDim2.new(0.277999997, 0,0.0771929845, 0)}):Play()
					selectdcategory = category
				elseif v.Name ~= category and v.Name ~= "CategoryList" and v.Visible == true then
				ts:Create(v,TweenInfo.new(0.3),{Position=UDim2.new(0.277999997, 0,1.0771929845, 0)}):Play()
					v.Visible = false
				end
			end
		end
	end
	
Close.MouseButton1Click:Connect(function()
	bubblefx(Close); -- PO`P EFFECT
	print('closing')
	-- Minimize
	--hidemenus();
end)
	local Frame = script.Parent.Parent.Container
	local top_2 = script.Parent.Parent.Container
	local mouse        = game:GetService("Players").LocalPlayer:GetMouse();
	local inputService = game:GetService('UserInputService');
	local heartbeat    = game:GetService("RunService").Heartbeat;
	-- // credits to Ririchi / Inori for drag function
	local s, event = pcall(function()
		return top_2.MouseEnter
	end)
	if s then
		top_2.Active = true;
	
		event:connect(function()
			local input = top_2.InputBegan:connect(function(key)
				if key.UserInputType == Enum.UserInputType.MouseButton1 then
					local objectPosition = Vector2.new(mouse.X - Frame.AbsolutePosition.X, mouse.Y - Frame.AbsolutePosition.Y);
					while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						pcall(function()
							Frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X, 0, mouse.Y - objectPosition.Y), 'Out', 'Linear', 0.1, true);
						end)
					end
				end
			end)
	
			local leave;
			leave = top_2.MouseLeave:connect(function()
				input:disconnect();
				leave:disconnect();
			end)
		end)
	end
local function NOTSBZM_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	local button = script.Parent
	button.MouseEnter:connect(function()
		game:GetService("TweenService"):Create(button, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(255, 0, 4)}):Play()
	end)
	
	button.MouseLeave:connect(function()
		game:GetService("TweenService"):Create(button, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	end)
	local gui = script.Parent.Parent
	local pos = gui.Position
	local size = gui.Size
	button.MouseButton1Down:connect(function()
		game:GetService("TweenService"):Create(gui, TweenInfo.new(0.5), {Size = UDim2.new(0, 0,0, 285)}):Play()
		wait(0.4)
		ApexUI:Destroy()
		script.Disabled=true
	end)
	
	local uis = game:GetService("UserInputService")
	uis.InputBegan:Connect(function(e,_)
		if e.UserInputType == Enum.UserInputType.Keyboard then
			if e.KeyCode == ApexUITable.hidekey then
				ApexUITable.hidded = not ApexUITable.hidded
				if ApexUITable.hidded then
					size = gui.Size
					pos = gui.Position
					if gui.Size ~= UDim2.new(0, 0,0, 285) then
						game:GetService("TweenService"):Create(gui, TweenInfo.new(0.5), {Position = UDim2.new(pos.X.Scale +0.25,pos.X.Offset,pos.Y.Scale,pos.Y.Offset),Size = UDim2.new(0, 0,0, 285)}):Play()
						wait(0.6)
					end
				else
					if gui.Size ~= UDim2.new(0, 500, 0, 285) then
						game:GetService("TweenService"):Create(gui, TweenInfo.new(0.5), {Position = UDim2.new(pos.X.Scale,pos.X.Offset,pos.Y.Scale,pos.Y.Offset),Size = UDim2.new(0, 500, 0, 285)}):Play()
						wait(0.6)
					end
				end
			end
		end
	end)
end
coroutine.wrap(NOTSBZM_fake_script)()
return ApexUITable;
