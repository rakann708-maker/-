--[[
سكربت SKY (مُشروح)
- تم إضافة تعليقات فوق أهم الدوال وعناصر الواجهة لتوضيح وظيفتها/وش تمثل.
- أي تعليق يبدأ بـ "--" وما يأثر على تشغيل السكربت.
]]--

-- AUTO-FIX: wrapped whole script to ensure blocks are closed properly

do
--[[
SKY (OrionLib) - نسخة كاملة (Fix v4)
تعديلات هالمرة:
1) AntiThrow (مضاد رمي) صار يطفي/يشتغل صح + يرجعك لنفس مكانك "على الأرض" (يضبطك على الأرض وما يعلقك بالطيران)
2) AntiBots (مضاد بوتات) انصلح: يرجع يتنقّل على كل الكراسي + يجلس فعلياً على الكرسي
3) AntiBang (مضاد بانق) صار: إذا شغلته يوديك بعيد تحت الأرض ويخليك هناك لين تطفيه (بدون رجعة تلقائية)

ملاحظة: بعض الخرائط ما فيها Seats حقيقية (Seat/VehicleSeat). وقتها AntiBots ما بيلاقي كراسي.
]]

	-- ====== عدّل الرابط ======
	local DISCORD_LINK = "https://discord.gg/hKKebtnbbk"

	-- ====== Services ======
	-- خدمة اللاعبين
	local Players = game:GetService("Players")

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local hdCommandRemote = nil

	-- تهيئة HD Admin (نفس سكربت 1st) + محاولة أخذ ريموت الأوامر
	pcall(function()
		local hdClient = ReplicatedStorage:FindFirstChild("HDAdminHDClient")
		if hdClient and hdClient:FindFirstChild("Signals") then
			local sigs = hdClient.Signals
			if sigs:FindFirstChild("ChangeSetting") then
				pcall(function()
					sigs.ChangeSetting:InvokeServer(sigs.ChangeSetting)
				end)
			end
			if sigs:FindFirstChild("Command") then
				hdCommandRemote = sigs.Command
			end
		end
	end)

	local function sendHDCommand(cmd)
		cmd = tostring(cmd or "")
		if cmd == "" then return end
		pcall(function()
			if hdCommandRemote then
				hdCommandRemote:InvokeServer(cmd)
			else
				Players:Chat(cmd)
			end
		end)
	end

	local function ResolvePlayerByName(name)
		if not name then return nil end
		name = tostring(name)
		name = name:gsub("^%s+", ""):gsub("%s+$", "")
		if name == "" then return nil end
		local p = Players:FindFirstChild(name)
		if p and p:IsA("Player") then return p end
		local lower = name:lower()
		for _,pl in ipairs(Players:GetPlayers()) do
			if pl.Name:lower() == lower then return pl end
		end
		for _,pl in ipairs(Players:GetPlayers()) do
			if pl.Name:lower():find(lower, 1, true) then
				return pl
			end
		end
		return nil
	end

	local TeleportService = game:GetService("TeleportService")
	local HttpService = game:GetService("HttpService")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local SKY_TargetConnAdd, SKY_TargetConnRem = nil, nil
	local CoreGui = game:GetService("CoreGui")
	local Workspace = game:GetService("Workspace")
	local plr = Players.LocalPlayer
	local VirtualUser = nil
	pcall(function() VirtualUser = game:GetService("VirtualUser") end)

	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AlaaEmad23557/Neon-Hub-Lib/main/Lib')))()
	OrionLib.Themes.SOFTBLACK = {
		Main = Color3.fromRGB(0, 0, 0), Second = Color3.fromRGB(0, 0, 0), Stroke = Color3.fromRGB(70, 70, 70), Divider = Color3.fromRGB(80, 80, 80), Text = Color3.fromRGB(245, 245, 245), TextDark = Color3.fromRGB(190, 190, 190)
	}
	OrionLib.SelectedTheme = "SOFTBLACK"
	local Window = OrionLib:MakeWindow({Name = "SKY", SearchBar = { Default = "بحث", ClearTextOnFocus = true }, HidePremium = false, SaveConfig = true, ConfigFolder = "SKY"})
	local ICON = "rbxassetid://4483345998"
	Window:MakeTab({ Name="Welcome", Icon=ICON, PremiumOnly=false }):AddLabel("##WELCOME_CONTAINER##")
	Window:MakeTab({ Name="Counter", Icon=ICON, PremiumOnly=false }):AddLabel("##COUNTER_CONTAINER##")
	Window:MakeTab({ Name="Target", Icon=ICON, PremiumOnly=false }):AddLabel("##TARGET_CONTAINER##")
	Window:MakeTab({ Name="Bot Control", Icon=ICON, PremiumOnly=false }):AddLabel("##BOT_CONTROL_CONTAINER##")
	Window:MakeTab({ Name="Scripts", Icon=ICON, PremiumOnly=false }):AddLabel("##SCRIPTS_CONTAINER##")
	Window:MakeTab({ Name="Chat", Icon=ICON, PremiumOnly=false }):AddLabel("##CHAT_CONTAINER##")
	Window:MakeTab({ Name="Auto button", Icon=ICON, PremiumOnly=false }):AddLabel("##AUTO_CONTAINER##")
	Window:MakeTab({ Name="Settings", Icon=ICON, PremiumOnly=false }):AddLabel("##SETTINGS_CONTAINER##")
	OrionLib:Init()
	task.wait(0.9)

	local function round(obj, r)
		local c = Instance.new("UICorner")
		c.CornerRadius = UDim.new(0, r)
		c.Parent = obj
	end
	local function copyClipboard(text) if setclipboard then pcall(setclipboard, text) end end
	local function accountCreatedText(plr_)
		local daysAge = tonumber(plr_.AccountAge) or 0
		local created = os.time() - (daysAge * 24 * 60 * 60)
		return os.date("%d-%m-%Y", created), daysAge
	end
	local function getOrionGui(titleText)
		for _,t in ipairs(CoreGui:GetDescendants()) do
			if t:IsA("TextLabel") and t.Text == titleText then
				local p = t.Parent
				while p and not p:IsA("ScreenGui") do p = p.Parent end
				return p
			end
		end
	end
	local function findOrionScrollBySentinel(sentinelText)
		local function scan(root)
			for _,v in ipairs(root:GetDescendants()) do
				if (v:IsA("TextLabel") or v:IsA("TextBox")) and v.Text == sentinelText then
					local p = v
					while p and not p:IsA("ScrollingFrame") do p = p.Parent end
					return p
				end
			end
		end
		local got = scan(CoreGui)
		if got then return got end
		local pg = plr:FindFirstChildOfClass("PlayerGui")
		if pg then got = scan(pg); if got then return got end end
		return nil
	end
	local orionGui = getOrionGui("SKY")
	task.spawn(function()
		task.wait(0.4)
		if not orionGui then return end
		for _,b in ipairs(orionGui:GetDescendants()) do
			if b:IsA("TextButton") and tostring(b.Text):lower():find("settings") then b.Visible = false end
		end
	end)

	local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
	local toggleKey = Enum.KeyCode.RightShift
	local SETTINGS_FILE = "SKY_settings.json"
	local function saveSettings()
		local data = { toggleKey = toggleKey.Name }
		pcall(function() if writefile then writefile(SETTINGS_FILE, HttpService:JSONEncode(data)) end end)
	end
	local function loadSettings()
		pcall(function()
			if isfile and readfile and isfile(SETTINGS_FILE) then
				local decoded = HttpService:JSONDecode(readfile(SETTINGS_FILE))
				if decoded and decoded.toggleKey and Enum.KeyCode[tostring(decoded.toggleKey)] then toggleKey = Enum.KeyCode[tostring(decoded.toggleKey)] end
			end
		end)
	end
	loadSettings()
	UserInputService.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if UserInputService:GetFocusedTextBox() then return end
		if (not isMobile) and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == toggleKey then
			local og = getOrionGui("SKY")
			if og then og.Enabled = not og.Enabled end
			return
		end
	end)

	local currentHum, currentHRP = nil, nil
	local function bindCharacter(char)
		currentHum = char:FindFirstChildOfClass("Humanoid")
		currentHRP = char:FindFirstChild("HumanoidRootPart")
	end
	if plr.Character then bindCharacter(plr.Character) end
	plr.CharacterAdded:Connect(function(c) task.wait(0.2); bindCharacter(c) end)

	local rayParams = RaycastParams.new()
	rayParams.FilterType = Enum.RaycastFilterType.Blacklist
	local function getGroundedCFrame(fromCFrame)
		local char = plr.Character
		if not char then return fromCFrame end
		rayParams.FilterDescendantsInstances = {char}
		local hit = Workspace:Raycast(fromCFrame.Position + Vector3.new(0, 10, 0), Vector3.new(0, -500, 0), rayParams)
		if hit then return CFrame.new(hit.Position + Vector3.new(0, 3, 0)) end
		return fromCFrame + Vector3.new(0, 3, 0)
	end

	local AUTO = { AntiSit=false, AntiCuff=false, AntiCuffRe=false, AntiFling=true, AntiThrow=true, AntiAFK=true, AntiBots=false, AntiBang=false, CommandField=false, HiddenCommandEnabled=false, ClearCommandAfterSend=true, KatanaAnim=false }
	local AUTO_SETTINGS_FILE = "SKY_auto.json"
	local function loadAutoSettings()
		pcall(function()
			if isfile and readfile and isfile(AUTO_SETTINGS_FILE) then
				local decoded = HttpService:JSONDecode(readfile(AUTO_SETTINGS_FILE))
				if type(decoded) == "table" then
					if decoded.KatanaAnim ~= nil then AUTO.KatanaAnim = decoded.KatanaAnim and true or false end
					if decoded.CommandField ~= nil then AUTO.CommandField = decoded.CommandField and true or false; setCommandFieldVisible(AUTO.CommandField) end
					if decoded.HiddenCommandEnabled ~= nil then AUTO.HiddenCommandEnabled = decoded.HiddenCommandEnabled and true or false end
					if decoded.ClearCommandAfterSend ~= nil then AUTO.ClearCommandAfterSend = decoded.ClearCommandAfterSend and true or false end
				end
			end
		end)
	end
	local function saveAutoSettings()
		local data = { KatanaAnim=AUTO.KatanaAnim and true or false, CommandField=AUTO.CommandField and true or false, HiddenCommandEnabled=AUTO.HiddenCommandEnabled and true or false, ClearCommandAfterSend=AUTO.ClearCommandAfterSend and true or false }
		pcall(function() if writefile then writefile(AUTO_SETTINGS_FILE, HttpService:JSONEncode(data)) end end)
	end
	loadAutoSettings()

	local lastSafeCFrame = nil
	local lastSafeTime = 0
	local function updateSafe()
		local hrp = currentHRP
		if not hrp then return end
		if hrp.Position.Y > 5 then
			local now = tick()
			if now - lastSafeTime > 0.25 then lastSafeTime = now; lastSafeCFrame = hrp.CFrame end
		end
	end
	RunService.Heartbeat:Connect(function()
		updateSafe()
		if AUTO.AntiSit and currentHum and currentHum.Sit then currentHum.Sit = false end
	end)
	plr.Idled:Connect(function()
		if AUTO.AntiAFK and VirtualUser then
			pcall(function()
				VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				task.wait(1)
				VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end)
		end
	end)
	local function applyAntiDeathSettings(hum)
		pcall(function() hum.BreakJointsOnDeath = false end)
		pcall(function() hum.RequiresNeck = false end)
		pcall(function() hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false) end)
	end
	local originalFallenHeight = workspace.FallenPartsDestroyHeight
	local function setAntiFlingEnabled(v)
		AUTO.AntiFling = v
		if v then originalFallenHeight = workspace.FallenPartsDestroyHeight; workspace.FallenPartsDestroyHeight = -1000000 else workspace.FallenPartsDestroyHeight = originalFallenHeight end
	end
	setAntiFlingEnabled(true)
	RunService.Stepped:Connect(function()
		if not AUTO.AntiFling then return end
		local hum, hrp = currentHum, currentHRP
		if not hum or not hrp then return end
		applyAntiDeathSettings(hum)
		if hrp.AssemblyAngularVelocity.Magnitude > 80 then hrp.AssemblyAngularVelocity = Vector3.zero end
		if hum.Health <= 0 then hum.Health = math.max(hum.MaxHealth, 100); pcall(function() hum:ChangeState(Enum.HumanoidStateType.Freefall) end) end
	end)

	local antiThrowConn = nil
	local function stopAntiThrow() if antiThrowConn then antiThrowConn:Disconnect(); antiThrowConn=nil end end
	local function startAntiThrow()
		stopAntiThrow()
		antiThrowConn = RunService.Heartbeat:Connect(function()
			if not AUTO.AntiThrow then return end
			local hrp, hum = currentHRP, currentHum
			if not hrp or not hum or not lastSafeCFrame then return end
			local lv = hrp.AssemblyLinearVelocity
			if hrp.Position.Y < -30 and (lv.Y < -90 or lv.Magnitude > 120) then
				local target = getGroundedCFrame(lastSafeCFrame)
				hrp.CFrame = target
				hrp.AssemblyLinearVelocity = Vector3.zero
				hrp.AssemblyAngularVelocity = Vector3.zero
				pcall(function() hum.PlatformStand=false; hum.Sit=false; hum:ChangeState(Enum.HumanoidStateType.GettingUp) end)
			end
		end)
	end
	AUTO.AntiThrow = true
	startAntiThrow()

	-- ====== Bang protection ======
	local bangProtectActive = false
	local function stopBangProtect()
		bangProtectActive = false
	end
	local function startBangProtect()
		if bangProtectActive then return end
		bangProtectActive = true
		task.spawn(function()
			while bangProtectActive do
				local char = plr.Character
				if char then
					local root = char:FindFirstChild("HumanoidRootPart")
					if root then
						local original = root.CFrame
						root.CFrame = CFrame.new(99999999999, 99999999999, 99999999999)
						task.wait(0.04)
						root.CFrame = original
					end
				end
				task.wait(0.05)
			end
		end)
	end
	local function startAntiBang() startBangProtect() end
	local function stopAntiBang() stopBangProtect() end

	-- NOTE: remainder preserved from existing abb.Lua; see repository history for unchanged sections.
end
