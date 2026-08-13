local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local StarterGui = game:GetService("StarterGui")

local LocalPlayer = Players.LocalPlayer
_G._ZWA = false
_G._ZOrig = nil
_G._HLA = false
local isTouchDevice = UserInputService.TouchEnabled
local baseFrameSize = Vector2.new(610, 500)
local OwnerUsername = "azoz11211"
local function _T18IsProtected(target)
    return target and target.Name:lower() == OwnerUsername:lower()
end

_T18Tick0 = tick()
_T18DGT0  = math.max(0, workspace.DistributedGameTime or 0)
task.spawn(function()
    for _t18si = 1, 10 do
        task.wait(0.5)
        local _t18dgt = workspace.DistributedGameTime or 0
        local _t18el  = tick() - _T18Tick0

        if _t18dgt > _T18DGT0 + _t18el + 2 then
            _T18DGT0  = _t18dgt
            _T18Tick0 = tick()
            break
        end

        if _t18dgt > _T18DGT0 + _t18el then
            _T18DGT0  = _t18dgt - _t18el
            _T18Tick0 = tick()
        end
    end
end)
function _T18ServerUptime()
    return math.floor(_T18DGT0 + (tick() - _T18Tick0))
end
local isOwnerUser = LocalPlayer.Name:lower() == OwnerUsername:lower()
ChatNameColorData = nil


local function T18ShowAlreadyConnectedToast()
    local TweenService  = game:GetService("TweenService")
    local playerGui     = LocalPlayer:WaitForChild("PlayerGui")

    local toastGui = Instance.new("ScreenGui")
    toastGui.Name             = "T18Toast"
    toastGui.ResetOnSpawn     = false
    toastGui.ZIndexBehavior   = Enum.ZIndexBehavior.Sibling
    toastGui.DisplayOrder     = 99999
    toastGui.IgnoreGuiInset   = true
    toastGui.Parent           = playerGui

    local toast = Instance.new("Frame")
    toast.Name                = "ToastFrame"
    toast.AnchorPoint         = Vector2.new(1, 1)
    toast.Size                = UDim2.new(0, 230, 0, 64)
    toast.Position            = UDim2.new(1, 270, 1, -24)
    toast.BackgroundColor3    = Color3.fromRGB(10, 10, 10)
    toast.BackgroundTransparency = 0
    toast.BorderSizePixel     = 0
    toast.ZIndex              = 10
    toast.Parent              = toastGui
    local _tc = Instance.new("UICorner")
    _tc.CornerRadius = UDim.new(0, 10)
    _tc.Parent = toast
    local _ts = Instance.new("UIStroke")
    _ts.Color        = Color3.fromRGB(58, 58, 58)
    _ts.Thickness    = 1
    _ts.Transparency = 0
    _ts.Parent       = toast

    local accentBar = Instance.new("Frame")
    accentBar.Size             = UDim2.new(0, 3, 0.65, 0)
    accentBar.AnchorPoint      = Vector2.new(0, 0.5)
    accentBar.Position         = UDim2.new(0, 9, 0.5, 0)
    accentBar.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    accentBar.BorderSizePixel  = 0
    accentBar.ZIndex           = 11
    accentBar.Parent           = toast
    local _ac = Instance.new("UICorner")
    _ac.CornerRadius = UDim.new(0, 4)
    _ac.Parent = accentBar

    local titleLbl = Instance.new("TextLabel")
    titleLbl.Size                 = UDim2.new(1, -28, 0, 22)
    titleLbl.Position             = UDim2.new(0, 20, 0, 8)
    titleLbl.BackgroundTransparency = 1
    titleLbl.Text                 = "t_18"
    titleLbl.TextColor3           = Color3.fromRGB(255, 255, 255)
    titleLbl.TextXAlignment       = Enum.TextXAlignment.Right
    titleLbl.Font                 = Enum.Font.GothamBold
    titleLbl.TextSize             = 14
    titleLbl.ZIndex               = 11
    titleLbl.Parent               = toast

    local msgLbl = Instance.new("TextLabel")
    msgLbl.Size                 = UDim2.new(1, -28, 0, 18)
    msgLbl.Position             = UDim2.new(0, 20, 0, 34)
    msgLbl.BackgroundTransparency = 1
    msgLbl.Text                 = "السكربت متصل بالفعل."
    msgLbl.TextColor3           = Color3.fromRGB(170, 170, 170)
    msgLbl.TextXAlignment       = Enum.TextXAlignment.Right
    msgLbl.Font                 = Enum.Font.Gotham
    msgLbl.TextSize             = 12
    msgLbl.ZIndex               = 11
    msgLbl.Parent               = toast

    TweenService:Create(toast,
        TweenInfo.new(0.32, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
        { Position = UDim2.new(1, -16, 1, -24) }
    ):Play()

    task.delay(3.0, function()
        local fadeOut = TweenService:Create(toast,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            { Position = UDim2.new(1, 270, 1, -24), BackgroundTransparency = 1 }
        )
        TweenService:Create(titleLbl,  TweenInfo.new(0.4), { TextTransparency = 1 }):Play()
        TweenService:Create(msgLbl,    TweenInfo.new(0.4), { TextTransparency = 1 }):Play()
        TweenService:Create(accentBar, TweenInfo.new(0.4), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(_ts,       TweenInfo.new(0.4), { Transparency = 1 }):Play()
        fadeOut:Play()
        fadeOut.Completed:Connect(function()
            pcall(function() toastGui:Destroy() end)
        end)
    end)
end


local _t18AlreadyRunning = (function()
    local pg = LocalPlayer:FindFirstChild("PlayerGui")
    if not pg then return false end
    local m = pg:FindFirstChild("_T18Running")
    if not m then return false end
    local tok = m:FindFirstChild("Token")
    local prevTok = (getgenv and getgenv().T18RuntimeToken) or _G.T18RuntimeToken or ""
    if tok and tok.Value ~= "" and tok.Value == prevTok then return true end
    pcall(function() m:Destroy() end)
    return false
end)()

if _t18AlreadyRunning then
    task.spawn(T18ShowAlreadyConnectedToast)
    return
end

local T18RuntimeToken = tostring(math.floor(tick() * 1000)) .. tostring(math.random(1000, 9999))


pcall(function()
    local _pg = LocalPlayer:FindFirstChild("PlayerGui")
    if _pg then
        local marker = Instance.new("Folder")
        marker.Name = "_T18Running"
        local tok = Instance.new("StringValue")
        tok.Name = "Token"
        tok.Value = T18RuntimeToken
        tok.Parent = marker
        marker.Parent = _pg
    end
end)


if getgenv then
    local _genv = getgenv()
    if _genv then
        _genv.T18RuntimeToken = T18RuntimeToken
        _genv.T18RuntimeShutdown = function()
            local _e = getgenv(); if _e then _e.T18RuntimeToken = nil; _e.T18RuntimeShutdown = nil end
        end
    end
else
    _G.T18RuntimeToken    = T18RuntimeToken
    _G.T18RuntimeShutdown = function()
        _G.T18RuntimeToken    = nil
        _G.T18RuntimeShutdown = nil
    end
end

function T18RuntimeAlive()
    if getgenv then
        local _e = getgenv()
        if _e then return _e.T18RuntimeToken == T18RuntimeToken end
    end
    return _G.T18RuntimeToken == T18RuntimeToken
end


local T18_API_BASE = "https://accomplished-layer-bailey-oecd.trycloudflare.com/api/t18"
local HttpService_T18 = game:GetService("HttpService")

local function t18_getHttpFn()

    local checks = {
        function() return syn and syn.request end,
        function() return http_request end,
        function() return http and http.request end,
        function() return request end,
        function() return fluxus and fluxus.request end,
        function() return SENTINEL and SENTINEL.request end,
        function() return getgenv and getgenv().http_request end,
        function() return getgenv and getgenv().request end,
        function() return getgenv and getgenv().syn and getgenv().syn.request end,
    }
    for _, check in ipairs(checks) do
        local ok, fn = pcall(check)
        if ok and type(fn) == "function" then return fn end
    end
    return nil
end

local function t18_httpRequest(opts)
    if not opts.Headers then opts.Headers = {} end

    opts.Headers["User-Agent"] = "T18Client/1.0"
    local fn = t18_getHttpFn()
    if fn then
        local ok, res = pcall(fn, opts)
        if ok and type(res) == "table" then return res end
    end
    if (opts.Method or "GET") == "GET" then
        local ok, body = pcall(function() return game:HttpGet(opts.Url) end)
        if ok then return { Body = body, StatusCode = 200, Success = true } end
    end
    return nil
end

local function t18_jsonEncode(t)
    local ok, s = pcall(function() return HttpService_T18:JSONEncode(t) end)
    if ok then return s end
    return "{}"
end

local function t18_jsonDecode(s)
    if type(s) ~= "string" or #s == 0 then return nil end
    local ok, t = pcall(function() return HttpService_T18:JSONDecode(s) end)
    if ok then return t end
    return nil
end

local T18_SERVER_KEY = tostring(game.PlaceId) .. ":" .. tostring(game.JobId)
if not game.JobId or game.JobId == "" then
    T18_SERVER_KEY = tostring(game.PlaceId) .. ":studio"
end

local function t18_postEvent(payload)
    payload.serverKey = T18_SERVER_KEY
    payload.fromName = LocalPlayer.Name
    payload.fromUserId = LocalPlayer.UserId
    local res = t18_httpRequest({
        Url = T18_API_BASE .. "/post",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["Accept"] = "application/json",
        },
        Body = t18_jsonEncode(payload),
    })
    if not res then return false end
    local code = res.StatusCode or res.status_code or 0
    if code == 200 or res.Success == true then return true end
    return false
end

function t18_sendHeartbeat()
    local res = t18_httpRequest({
        Url = T18_API_BASE .. "/heartbeat",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["Accept"] = "application/json",
        },
        Body = t18_jsonEncode({
            serverKey = T18_SERVER_KEY,
            userId = LocalPlayer.UserId,
            name = LocalPlayer.Name,
        }),
    })
    return res ~= nil
end

function t18_sendLeave()
    pcall(function()
        t18_httpRequest({
            Url = T18_API_BASE .. "/leave",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Accept"] = "application/json",
            },
            Body = t18_jsonEncode({
                serverKey = T18_SERVER_KEY,
                userId = LocalPlayer.UserId,
            }),
        })
    end)
end

function t18_urlEncode(s)
    if not s then return "" end
    local ok, enc = pcall(function() return HttpService_T18:UrlEncode(s) end)
    if ok and enc then return enc end
    return (tostring(s):gsub("([^%w%-_%.~])", function(c)
        return string.format("%%%02X", string.byte(c))
    end))
end

function t18_fetchUsers()
    local url = T18_API_BASE .. "/users?serverKey=" .. t18_urlEncode(T18_SERVER_KEY)
    local res = t18_httpRequest({
        Url = url,
        Method = "GET",
        Headers = { ["Accept"] = "application/json" },
    })
    if not res then return nil end
    local body = res.Body or res.body
    local data = t18_jsonDecode(body)
    if type(data) == "table" and data.ok and type(data.users) == "table" then
        return data.users
    end
    return nil
end

task.spawn(function()
    while true do
        if not T18RuntimeAlive() then
            break
        end
        pcall(t18_sendHeartbeat)
        task.wait(5)
    end
end)

LocalPlayer.AncestryChanged:Connect(function(_, parent)
    if not parent then
        t18_sendLeave()
    end
end)


isActive = false
animTrack = nil
followConnection = nil
flingActive = false
targetFlingActive = false
flyActive = false
flyConnection = nil
targetFlingConnection = nil
local _flingState = {angularVelocity=nil, savedCFrame=nil, angle=0, pulse=0, startTargetY=nil, startTime=0}
local SpeedActive = false
_HeadBang = {active=false, conn=nil, animTrack=nil, angle=0, respawnConn=nil}
bangRespawnConn = nil
resetCooldown = false


SpectateActive = false
SpectateConnection = nil
SpectateTarget = nil
OriginalCameraType = nil
OriginalCameraSubject = nil
SpectateNameLabel = nil
SpectateWarningLabel = nil
SpectatePlayerRemovingConnection = nil
SavedLocation = nil
local _Hang = {running=false, savedCF=nil, activConn=nil, remConn=nil, prefix="كلب", flingPos=Vector3.new(999999999,999999999,999999999), cmd="char me"}
_T18Lang = "ar"
_T18TR = nil
_T18Rev = nil
function T18T(s)
    if _T18Lang == "en" and _T18TR and _T18TR[s] then return _T18TR[s] end
    if _T18Lang == "ar" and _T18Rev and _T18Rev[s] then return _T18Rev[s] end
    return s
end


local characterConnections = {}
local viewportConnection = nil
local FrameScale = nil
local FlyTouchFrame = nil
local ToggleBtn = nil
ChatBubbleBtn = nil
local mobileFlyInput = {
    Up = false,
    Down = false,
    Forward = false,
    Backward = false,
    Left = false,
    Right = false,
}


local ownerFreezeStates = {}
local ownerRespawnLoopStates = {}

local Theme = {
    Bg = Color3.fromRGB(0, 0, 0),
    Panel = Color3.fromRGB(6, 6, 6),
    PanelSoft = Color3.fromRGB(14, 14, 14),
    Header = Color3.fromRGB(4, 4, 4),
    Card = Color3.fromRGB(10, 10, 10),
    Input = Color3.fromRGB(18, 18, 18),
    Border = Color3.fromRGB(48, 48, 48),
    Text = Color3.fromRGB(255, 255, 255),
    Muted = Color3.fromRGB(175, 175, 175),
    Accent = Color3.fromRGB(210, 210, 210),
    AccentSoft = Color3.fromRGB(50, 50, 50),
    Active = Color3.fromRGB(38, 38, 38),
    Warning = Color3.fromRGB(245, 158, 11),
    Danger = Color3.fromRGB(190, 52, 78),
    Shadow = Color3.fromRGB(0, 0, 0),
    ButtonDefault = Color3.fromRGB(22, 22, 22),
    ButtonDefaultAlt = Color3.fromRGB(32, 32, 32),
    ButtonBlue = Color3.fromRGB(10, 10, 10),
    ButtonBlueAlt = Color3.fromRGB(32, 32, 32),
    ButtonGreen = Color3.fromRGB(22, 22, 22),
    ButtonGreenAlt = Color3.fromRGB(32, 32, 32),
    ButtonOrange = Color3.fromRGB(22, 22, 22),
    ButtonOrangeAlt = Color3.fromRGB(32, 32, 32),
    ButtonRed = Color3.fromRGB(22, 22, 22),
    ButtonRedAlt = Color3.fromRGB(32, 32, 32),
}

local function connect(list, signal, callback)
    local connection = signal:Connect(callback)
    table.insert(list, connection)
    return connection
end

local function disconnectAll(list)
    for _, connection in ipairs(list) do
        connection:Disconnect()
    end
    table.clear(list)
end

local function doReset()
    if resetCooldown then
        return
    end
    resetCooldown = true
    task.spawn(function()
        LocalPlayer:LoadCharacter()
        task.wait(3)
        resetCooldown = false
    end)
end

local function watchCharacter(char)
    if not char then
        return
    end

    disconnectAll(characterConnections)

    connect(characterConnections, char.DescendantAdded, function(obj)
        if resetCooldown then
            return
        end

        local name = obj.Name:lower()
        if name:find("handcuff") or name:find("cuff") or name:find("arrest") then
            doReset()
            return
        end

        if obj:IsA("BallSocketConstraint")
            or obj:IsA("RopeConstraint")
            or obj:IsA("WeldConstraint")
            or obj:IsA("HingeConstraint") then
            doReset()
        end
    end)

    local humanoid = char:WaitForChild("Humanoid", 5)
    if humanoid then
        connect(characterConnections, humanoid:GetPropertyChangedSignal("WalkSpeed"), function()
            if humanoid.WalkSpeed == 0 and not resetCooldown then
                doReset()
            end
        end)
    end
end

watchCharacter(LocalPlayer.Character)
LocalPlayer.CharacterAdded:Connect(function(char)
    watchCharacter(char)
    if SpeedActive then
        local hum = char:WaitForChild("Humanoid", 5)
        if hum then
            hum.WalkSpeed = tonumber((script:FindFirstChild("SavedWalkSpeedValue") and script.SavedWalkSpeedValue.Value) or "16") or 16
        end
    end
end)

local savedWalkSpeedValue = Instance.new("StringValue")
savedWalkSpeedValue.Name = "SavedWalkSpeedValue"
savedWalkSpeedValue.Value = "16"
savedWalkSpeedValue.Parent = script

local function makeCorner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = parent
    return corner
end

local function makeStroke(parent, color, thickness, transparency)
    local stroke = Instance.new("UIStroke")
    stroke.Color = color
    stroke.Thickness = thickness or 1
    stroke.Transparency = transparency or 0
    stroke.Parent = parent
    return stroke
end

local function makeShadow(parent)
    local shadow = Instance.new("ImageLabel")
    shadow.Name = "Shadow"
    shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    shadow.Position = UDim2.new(0.5, 0, 0.5, 8)
    shadow.Size = UDim2.new(1, 20, 1, 20)
    shadow.BackgroundTransparency = 1
    shadow.Image = "rbxassetid://1316045217"
    shadow.ImageColor3 = Theme.Shadow
    shadow.ImageTransparency = 0.78
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    shadow.ZIndex = parent.ZIndex - 1
    shadow.Parent = parent
    return shadow
end

local UiFx = {}

function UiFx.makeGradient(parent, colors, rotation)
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(colors)
    gradient.Rotation = rotation or 0
    gradient.Parent = parent
    return gradient
end

function UiFx.makeAccentGlow(parent, color, transparency, sizeOffset, yOffset)
    local glow = Instance.new("ImageLabel")
    glow.Name = "AccentGlow"
    glow.AnchorPoint = Vector2.new(0.5, 0.5)
    glow.Position = UDim2.new(0.5, 0, 0.5, yOffset or 0)
    glow.Size = UDim2.new(1, sizeOffset or 52, 1, sizeOffset or 52)
    glow.BackgroundTransparency = 1
    glow.Image = "rbxassetid://1316045217"
    glow.ImageColor3 = color or Color3.fromRGB(220, 220, 220)
    glow.ImageTransparency = transparency or 0.92
    glow.ScaleType = Enum.ScaleType.Slice
    glow.SliceCenter = Rect.new(10, 10, 118, 118)
    glow.ZIndex = math.max(parent.ZIndex - 1, 0)
    glow.Parent = parent
    return glow
end

UiFx._starFields = {}
UiFx._starFieldConnection = nil

local function resetAnimatedStar(fieldData, starData, respawnAtTop)
    local randomizer = fieldData.randomizer
    starData.x = randomizer:NextNumber(-0.02, 1.02)
    if respawnAtTop then
        starData.y = randomizer:NextNumber(-0.2, -0.02)
    else
        starData.y = randomizer:NextNumber(-0.02, 1.02)
    end
    starData.speed = randomizer:NextNumber(0.012, 0.05)
    starData.drift = randomizer:NextNumber(-0.01, 0.01)
    starData.baseTransparency = randomizer:NextNumber(0.72, 0.9)
    starData.twinkleAmplitude = randomizer:NextNumber(0.03, 0.12)
    starData.twinkleSpeed = randomizer:NextNumber(0.8, 2.2)
    starData.twinkleOffset = randomizer:NextNumber(0, math.pi * 2)
end

local function ensureStarFieldAnimator()
    if UiFx._starFieldConnection then
        return
    end

    UiFx._starFieldConnection = RunService.RenderStepped:Connect(function(deltaTime)
        for index = #UiFx._starFields, 1, -1 do
            local fieldData = UiFx._starFields[index]
            local starField = fieldData.field

            if not starField or not starField.Parent then
                table.remove(UiFx._starFields, index)
            else
                fieldData.elapsed += deltaTime

                for _, starData in ipairs(fieldData.stars) do
                    local star = starData.instance
                    if star and star.Parent then
                        starData.x += starData.drift * deltaTime
                        starData.y += starData.speed * deltaTime

                        if starData.x > 1.04 then
                            starData.x = -0.04
                        elseif starData.x < -0.04 then
                            starData.x = 1.04
                        end

                        if starData.y > 1.08 then
                            resetAnimatedStar(fieldData, starData, true)
                        end

                        local twinkle = math.sin((fieldData.elapsed * starData.twinkleSpeed) + starData.twinkleOffset) * starData.twinkleAmplitude
                        star.Position = UDim2.new(starData.x, 0, starData.y, 0)
                        star.BackgroundTransparency = math.clamp(starData.baseTransparency + twinkle, 0.48, 0.94)
                    end
                end
            end
        end

        if #UiFx._starFields == 0 and UiFx._starFieldConnection then
            UiFx._starFieldConnection:Disconnect()
            UiFx._starFieldConnection = nil
        end
    end)
end

function UiFx.makeStarField(parent, count)
    local starField = Instance.new("Frame")
    starField.Name = "StarField"
    starField.Size = UDim2.new(1, 0, 1, 0)
    starField.BackgroundTransparency = 1
    starField.BorderSizePixel = 0
    starField.ClipsDescendants = true
    starField.ZIndex = 0
    starField.Parent = parent

    local fieldData = {
        field = starField,
        stars = {},
        randomizer = Random.new(),
        elapsed = 0,
    }

    for index = 1, count do
        local star = Instance.new("Frame")
        local size = fieldData.randomizer:NextInteger(2, 4)
        star.Size = UDim2.new(0, size, 0, size)
        star.Position = UDim2.new(0, 0, 0, 0)
        star.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        star.BackgroundTransparency = 0.15

        local glowStar = Instance.new("ImageLabel")
        glowStar.Size = UDim2.new(0, size * 2, 0, size * 2)
        glowStar.AnchorPoint = Vector2.new(0.5, 0.5)
        glowStar.Position = UDim2.new(0.5, 0, 0.5, 0)
        glowStar.BackgroundTransparency = 1
        glowStar.Image = "rbxassetid://1316045217"
        glowStar.ImageColor3 = Color3.fromRGB(255, 255, 255)
        glowStar.ImageTransparency = 0.88
        glowStar.ScaleType = Enum.ScaleType.Slice
        glowStar.SliceCenter = Rect.new(10, 10, 118, 118)
        glowStar.ZIndex = 0
        glowStar.Parent = star
        star.BorderSizePixel = 0
        star.ZIndex = 0
        star.Parent = starField
        makeCorner(star, 999)

        local starData = {
            instance = star,
        }
        resetAnimatedStar(fieldData, starData, false)
        star.Position = UDim2.new(starData.x, 0, starData.y, 0)
        star.BackgroundTransparency = starData.baseTransparency
        table.insert(fieldData.stars, starData)
    end

    table.insert(UiFx._starFields, fieldData)
    ensureStarFieldAnimator()

    return starField
end

function UiFx.attachButtonTextOverlay(button, textSize, font, textColor, strokeColor, strokeTransparency)
    local overlay = Instance.new("TextLabel")
    overlay.Name = "ButtonTextOverlay"
    overlay.Size = UDim2.new(1, -10, 1, 0)
    overlay.Position = UDim2.new(0, 5, 0, 0)
    overlay.BackgroundTransparency = 1
    overlay.Text = button.Text
    overlay.TextColor3 = textColor or Color3.fromRGB(255, 255, 255)
    overlay.TextStrokeColor3 = strokeColor or Color3.fromRGB(200, 200, 200)
    overlay.TextStrokeTransparency = strokeTransparency or 1
    overlay.Font = font or button.Font
    overlay.TextSize = textSize or button.TextSize
    overlay.TextWrapped = true
    overlay.ZIndex = button.ZIndex + 2
    overlay.Parent = button

    button.TextTransparency = 1
    button.TextStrokeTransparency = 1

    button:GetPropertyChangedSignal("Text"):Connect(function()
        overlay.Text = button.Text
    end)

    return overlay
end

pcall(function()
    local playerGui = LocalPlayer:WaitForChild("PlayerGui")
    for _, child in ipairs(playerGui:GetChildren()) do
        if child.Name == "BangGuiPro" then
            child:Destroy()
        end
    end
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BangGuiPro"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 2147483647
ScreenGui.IgnoreGuiInset = true

do
    local coreOk = pcall(function()
        ScreenGui.Parent = game:GetService("CoreGui")
    end)
    if not coreOk or not ScreenGui.Parent then
        ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    end
end

function T18RuntimeShutdown()

    pcall(function()
        local pg = LocalPlayer and LocalPlayer:FindFirstChild("PlayerGui")
        if pg then
            local m = pg:FindFirstChild("_T18Running")
            if m then m:Destroy() end
        end
    end)

    pcall(function()
        if getgenv then
            local _e = getgenv(); if _e then _e.T18RuntimeToken = nil; _e.T18RuntimeShutdown = nil end
        else
            _G.T18RuntimeToken    = nil
            _G.T18RuntimeShutdown = nil
        end
    end)
    pcall(function()
        if ScreenGui then
            ScreenGui:Destroy()
        end
    end)
    pcall(function()
        local playerGui = LocalPlayer and LocalPlayer:FindFirstChild("PlayerGui")
        if playerGui then
            for _, child in ipairs(playerGui:GetChildren()) do
                if child.Name == "BangGuiPro" then
                    child:Destroy()
                end
            end
        end
    end)
end

if getgenv then
    local _e = getgenv(); if _e then _e.T18RuntimeShutdown = T18RuntimeShutdown end
else
    _G.T18RuntimeShutdown = T18RuntimeShutdown
end

local Frame = Instance.new("Frame")
Frame.Name = "Main"
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Size = UDim2.new(0, 610, 0, 500)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundColor3 = Theme.Panel
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui
makeCorner(Frame, 22)
makeShadow(Frame)

FrameScale = Instance.new("UIScale")
FrameScale.Parent = Frame

do
    local frameDecor = Instance.new("Frame")
    frameDecor.Name = "FrameDecor"
    frameDecor.Size = UDim2.new(1, 0, 1, 0)
    frameDecor.BackgroundTransparency = 1
    frameDecor.BorderSizePixel = 0
    frameDecor.ZIndex = 0
    frameDecor.ClipsDescendants = true
    frameDecor.Parent = Frame
    makeCorner(frameDecor, 22)
    UiFx.makeStarField(frameDecor, 80)
end

local function updateResponsiveLayout()
    local camera = workspace.CurrentCamera
    if not camera or not FrameScale then
        return
    end

    local viewport = camera.ViewportSize
    local horizontalPadding = isTouchDevice and 56 or 72
    local verticalPadding = isTouchDevice and 64 or 96
    local maxWidth = math.max(viewport.X - horizontalPadding, 240)
    local maxHeight = math.max(viewport.Y - verticalPadding, 240)
    local scale = math.min(maxWidth / baseFrameSize.X, maxHeight / baseFrameSize.Y, 1)

    if isTouchDevice then
        scale = math.min(scale, 0.65)
    end

    FrameScale.Scale = math.clamp(scale, 0.42, 1)

    if isTouchDevice then
        if ToggleBtn then
            ToggleBtn.Size = UDim2.new(0, 46, 0, 46)
            ToggleBtn.Position = UDim2.new(0, 16, 0.5, -50)
        end
        if ChatBubbleBtn then
            ChatBubbleBtn.Size = UDim2.new(0, 46, 0, 46)
            ChatBubbleBtn.Position = UDim2.new(0, 16, 0.5, 4)
        end
        if FlyTouchFrame then
            FlyTouchFrame.Size = UDim2.new(0, 170, 0, 140)
            FlyTouchFrame.Position = UDim2.new(1, -10, 1, -10)
        end
    else
        if ToggleBtn then
            ToggleBtn.Size = UDim2.new(0, 54, 0, 54)
            ToggleBtn.Position = UDim2.new(0, 16, 0.5, -58)
        end
        if ChatBubbleBtn then
            ChatBubbleBtn.Size = UDim2.new(0, 54, 0, 54)
            ChatBubbleBtn.Position = UDim2.new(0, 16, 0.5, 4)
        end
        if FlyTouchFrame then
            FlyTouchFrame.Size = UDim2.new(0, 184, 0, 150)
            FlyTouchFrame.Position = UDim2.new(1, -14, 1, -14)
        end
    end
end

local function bindViewportListener()
    if viewportConnection then
        viewportConnection:Disconnect()
        viewportConnection = nil
    end

    local camera = workspace.CurrentCamera
    if camera then
        viewportConnection = camera:GetPropertyChangedSignal("ViewportSize"):Connect(updateResponsiveLayout)
    end

    updateResponsiveLayout()
end

UiFx.makeGradient(Frame, {
    ColorSequenceKeypoint.new(0, Color3.fromRGB(12, 15, 35)),
    ColorSequenceKeypoint.new(0.55, Color3.fromRGB(9, 12, 28)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(2, 2, 2)),
}, 35)

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0, 76)
Header.BackgroundColor3 = Theme.Header
Header.BorderSizePixel = 0
Header.Parent = Frame
makeCorner(Header, 22)
UiFx.makeGradient(Header, {
    ColorSequenceKeypoint.new(0, Color3.fromRGB(6, 6, 6)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 10, 24)),
}, 15)

do
    local HeaderBottomMask = Instance.new("Frame")
    HeaderBottomMask.Size = UDim2.new(1, 0, 0, 24)
    HeaderBottomMask.Position = UDim2.new(0, 0, 1, -24)
    HeaderBottomMask.BackgroundColor3 = Theme.Header
    HeaderBottomMask.BorderSizePixel = 0
    HeaderBottomMask.Parent = Header

    local AccentLine = Instance.new("Frame")
    AccentLine.Size = UDim2.new(1, -32, 0, 3)
    AccentLine.Position = UDim2.new(0, 16, 1, -3)
    AccentLine.BackgroundColor3 = Theme.Accent
    AccentLine.BorderSizePixel = 0
    AccentLine.Parent = Header
    makeCorner(AccentLine, 6)
    AccentLine.Visible = false
end

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0.55, 0, 0, 28)
Title.Position = UDim2.new(0, 18, 0, 12)
Title.BackgroundTransparency = 1
Title.Text = "t_18"
Title.TextColor3 = Theme.Text
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Font = Enum.Font.GothamBlack
Title.TextSize = 24
Title.Parent = Header

do
    local Subtitle = Instance.new("TextLabel")
    Subtitle.Size = UDim2.new(0.58, 0, 0, 18)
    Subtitle.Position = UDim2.new(0, 18, 0, 42)
    Subtitle.BackgroundTransparency = 1
    Subtitle.Text = "شاركونا اقتراحاتكم على الدسكورد"
    Subtitle.TextColor3 = Theme.Muted
    Subtitle.TextXAlignment = Enum.TextXAlignment.Left
    Subtitle.Font = Enum.Font.Gotham
    Subtitle.TextSize = 15
    Subtitle.Parent = Header

    local TopBadge = Instance.new("Frame")
    TopBadge.Size = UDim2.new(0, 195, 0, 34)
    TopBadge.Position = UDim2.new(1, -211, 0, 20)
    TopBadge.BackgroundColor3 = Theme.PanelSoft
    TopBadge.BackgroundTransparency = 0.16
    TopBadge.BorderSizePixel = 0
    TopBadge.Parent = Header
    makeCorner(TopBadge, 12)
    makeStroke(TopBadge, Theme.Border, 1, 0.35)
    UiFx.makeStarField(TopBadge, 6)

    local TopBadgeDot = Instance.new("Frame")
    TopBadgeDot.Size = UDim2.new(0, 10, 0, 10)
    TopBadgeDot.Position = UDim2.new(0, 12, 0.5, -5)
    TopBadgeDot.BackgroundColor3 = Theme.PanelSoft
    TopBadgeDot.BackgroundTransparency = 0.08
    TopBadgeDot.BorderSizePixel = 0
    TopBadgeDot.Parent = TopBadge
    makeCorner(TopBadgeDot, 99)

    local TopBadgeText = Instance.new("TextLabel")
    TopBadgeText.Size = UDim2.new(1, -34, 1, 0)
    TopBadgeText.Position = UDim2.new(0, 28, 0, 0)
    TopBadgeText.BackgroundTransparency = 1
    TopBadgeText.Text = "عندك مشكلة؟ تواصل دسكورد"
    TopBadgeText.TextColor3 = Theme.Text
    TopBadgeText.TextXAlignment = Enum.TextXAlignment.Left
    TopBadgeText.Font = Enum.Font.GothamMedium
    TopBadgeText.TextScaled = true
    TopBadgeText.Parent = TopBadge

    local ProfileCard = Instance.new("Frame")
    ProfileCard.Size = UDim2.new(1, -32, 0, 80)
    ProfileCard.Position = UDim2.new(0, 16, 0, 82)
    ProfileCard.BackgroundColor3 = Theme.Card
    ProfileCard.BackgroundTransparency = 0.16
    ProfileCard.BorderSizePixel = 0
    ProfileCard.Parent = Frame
    makeCorner(ProfileCard, 18)
    makeStroke(ProfileCard, Theme.Border, 1, 0.28)
    UiFx.makeStarField(ProfileCard, 12)

    local ProfileGlow = Instance.new("Frame")
    ProfileGlow.Size = UDim2.new(0, 72, 0, 72)
    ProfileGlow.Position = UDim2.new(0, 10, 0.5, -36)
    ProfileGlow.BackgroundColor3 = Theme.AccentSoft
    ProfileGlow.BackgroundTransparency = 0.22
    ProfileGlow.BorderSizePixel = 0
    ProfileGlow.Parent = ProfileCard
    makeCorner(ProfileGlow, 18)

    local AvatarLetter = Instance.new("TextLabel")
    AvatarLetter.Size = UDim2.new(1, 0, 1, 0)
    AvatarLetter.BackgroundTransparency = 1
    AvatarLetter.Text = string.upper(string.sub(LocalPlayer.DisplayName, 1, 1))
    AvatarLetter.TextColor3 = Theme.Text
    AvatarLetter.Font = Enum.Font.GothamBlack
    AvatarLetter.TextSize = 30
    AvatarLetter.Parent = ProfileGlow

    local WelcomeLabel = Instance.new("TextLabel")
    WelcomeLabel.Size = UDim2.new(1, -110, 0, 28)
    WelcomeLabel.Position = UDim2.new(0, 98, 0, 14)
    WelcomeLabel.BackgroundTransparency = 1
    WelcomeLabel.Text = "أهلًا " .. LocalPlayer.DisplayName
    WelcomeLabel.TextColor3 = Theme.Text
    WelcomeLabel.TextXAlignment = Enum.TextXAlignment.Right
    WelcomeLabel.Font = Enum.Font.GothamBold
    WelcomeLabel.TextSize = 24
    WelcomeLabel.Parent = ProfileCard

    local PlanLabel = Instance.new("TextLabel")
    PlanLabel.Size = UDim2.new(1, -110, 0, 18)
    PlanLabel.Position = UDim2.new(0, 98, 0, 46)
    PlanLabel.BackgroundTransparency = 1
    PlanLabel.Text = "شاركونا اقتراحاتكم على الدسكورد | اضغط الزر الصغير لإخفاء النافذة"
    PlanLabel.TextColor3 = Theme.Muted
    PlanLabel.TextXAlignment = Enum.TextXAlignment.Right
    PlanLabel.Font = Enum.Font.Gotham
    PlanLabel.TextSize = 15
    PlanLabel.Parent = ProfileCard
end

local ContentPanel = Instance.new("Frame")
ContentPanel.Size = UDim2.new(1, -32, 0, 310)
ContentPanel.Position = UDim2.new(0, 16, 0, 168)
ContentPanel.BackgroundColor3 = Theme.Bg
ContentPanel.BackgroundTransparency = 0.24
ContentPanel.BorderSizePixel = 0
ContentPanel.Parent = Frame
makeCorner(ContentPanel, 18)
makeStroke(ContentPanel, Theme.Border, 1, 0.35)
UiFx.makeGradient(ContentPanel, {
    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 10, 24)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 6, 6)),
}, 90)
UiFx.makeStarField(ContentPanel, 14)

local PanelPadding = Instance.new("UIPadding")
PanelPadding.PaddingTop = UDim.new(0, 16)
PanelPadding.PaddingLeft = UDim.new(0, 16)
PanelPadding.PaddingRight = UDim.new(0, 16)
PanelPadding.Parent = ContentPanel

local SectionLabel = Instance.new("TextLabel")
SectionLabel.Size = UDim2.new(1, 0, 0, 18)
SectionLabel.BackgroundTransparency = 1
SectionLabel.Text = "التحكم الرئيسي"
SectionLabel.TextColor3 = Theme.Muted
SectionLabel.TextXAlignment = Enum.TextXAlignment.Right
SectionLabel.Font = Enum.Font.GothamMedium
SectionLabel.TextSize = 13
SectionLabel.Parent = ContentPanel

local function applyClickToClear(box)
    local _ccSaved = ""
    box.Focused:Connect(function()
        if box.Text ~= "" then
            _ccSaved = box.Text
            box.Text = ""
        end
    end)
    box.FocusLost:Connect(function()
        if box.Text == "" and _ccSaved ~= "" then
            box.Text = _ccSaved
            _ccSaved = ""
        end
    end)
end


local Input = Instance.new("TextBox")
Input.Size = UDim2.new(1, 0, 0, 42)
Input.Position = UDim2.new(0, 0, 0, 26)
Input.BackgroundColor3 = Theme.Input
Input.BackgroundTransparency = 0.22
Input.PlaceholderText = "اكتب اسم اللاعب هنا"
Input.Text = ""
Input.TextColor3 = Theme.Text
Input.PlaceholderColor3 = Theme.Muted
Input.Font = Enum.Font.Gotham
Input.TextSize = 18
Input.ClearTextOnFocus = false
Input.Parent = ContentPanel
makeCorner(Input, 12)
makeStroke(Input, Theme.Border, 1, 0.2)
applyClickToClear(Input)


Input.FocusLost:Connect(function(enterPressed)
    if not enterPressed then return end
    local typed = Input.Text
    if not typed or #typed < 1 then return end
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Name:lower():find(typed:lower(), 1, true) then
            Input.Text = player.Name
            _t18LogTarget(player.Name)
            break
        end
    end
end)


local function makeButton(name, text, size, position, baseColor, accentColor)
    local button = Instance.new("TextButton")
    local resolvedBase = baseColor or Theme.ButtonDefault
    local resolvedAccent = accentColor or Theme.ButtonDefaultAlt
    button.Name = name
    button.Size = size
    button.Position = position
    button.BackgroundColor3 = resolvedBase
    button.BackgroundTransparency = 0.08
    button.AutoButtonColor = false
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextStrokeTransparency = 0.55
    button.TextStrokeColor3 = Color3.fromRGB(200, 200, 200)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 19
    button.Parent = ContentPanel
    makeCorner(button, 12)
    makeStroke(button, Theme.Border, 1, 0.05)
    UiFx.makeGradient(button, {
        ColorSequenceKeypoint.new(0, resolvedBase),
        ColorSequenceKeypoint.new(1, resolvedAccent),
    }, 90)

    local highlight = Instance.new("Frame")
    highlight.Name = "Highlight"
    highlight.Size = UDim2.new(1, -2, 0, 12)
    highlight.Position = UDim2.new(0, 1, 0, 1)
    highlight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    highlight.BackgroundTransparency = 0.9
    highlight.BorderSizePixel = 0
    highlight.ZIndex = 1
    highlight.Parent = button
    makeCorner(highlight, 11)

    UiFx.attachButtonTextOverlay(
        button,
        19,
        Enum.Font.GothamBold,
        Color3.fromRGB(255, 255, 255),
        Color3.fromRGB(200, 200, 200),
        1
    )

    return button
end
local function makeInput(name, placeholder, defaultText, position)
    local box = Instance.new("TextBox")
    box.Name = name
    box.Size = UDim2.new(0, 178, 0, 40)
    box.Position = position
    box.BackgroundColor3 = Theme.Input
    box.BackgroundTransparency = 0.2
    box.TextColor3 = Theme.Text
    box.PlaceholderColor3 = Theme.Muted
    box.PlaceholderText = placeholder
    box.Text = defaultText or ""
    box.Font = Enum.Font.Gotham
    box.TextSize = 17
    box.ClearTextOnFocus = false
    box.Parent = ContentPanel
    makeCorner(box, 12)
    makeStroke(box, Theme.Border, 1, 0.2)
    applyClickToClear(box)
    return box
end

BangBtn = makeButton("BangBtn", "بانق", UDim2.new(0, 168, 0, 38), UDim2.new(0, 4, 0, 82), Theme.ButtonBlue, Theme.Accent)
ResetBtn = makeButton("ResetBtn", "ريسيت", UDim2.new(0, 168, 0, 38), UDim2.new(0, 190, 0, 82), Theme.ButtonBlue, Theme.Accent)
FlingBtn = makeButton("FlingBtn", "حماية بانق", UDim2.new(1, -8, 0, 38), UDim2.new(0, 4, 0, 130), Theme.ButtonBlue, Theme.Accent)
TargetFlingBtn = makeButton("TargetFlingBtn", "فلنق", UDim2.new(0, 168, 0, 38), UDim2.new(0, 190, 0, 130), Theme.ButtonBlue, Theme.Accent)
FlyBtn = makeButton("FlyBtn", "طيران", UDim2.new(0, 168, 0, 38), UDim2.new(0, 4, 0, 178), Theme.ButtonBlue, Theme.Accent)
SpeedInput = makeInput("SpeedInput", "سرعة الطيران", "50", UDim2.new(0, 190, 0, 178))
WalkSpeedBtn = makeButton("WalkSpeedBtn", "سرعة اللاعب", UDim2.new(0, 168, 0, 38), UDim2.new(0, 4, 0, 226), Theme.ButtonBlue, Theme.Accent)
WalkSpeedInput = makeInput("WalkSpeedInput", "سرعة المشي", "16", UDim2.new(0, 190, 0, 226))
ZombieWalkBtn = makeButton("ZombieWalkBtn", "مشية زومبي", UDim2.new(1, -8, 0, 38), UDim2.new(0, 4, 0, 274), Theme.ButtonBlue, Theme.Accent)
_G._HLBtn = makeButton("HeadlessBtn", "هيدلس", UDim2.new(1, -8, 0, 38), UDim2.new(0, 4, 0, 274), Theme.ButtonBlue, Theme.Accent)

SpeedLabel = Instance.new("TextLabel")
SpeedLabel.Size = UDim2.new(0, 178, 0, 40)
SpeedLabel.Position = UDim2.new(1, -176, 0, 176)
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.Text = "W A S D | Space | Shift"
SpeedLabel.TextColor3 = Color3.fromRGB(148, 163, 184)
SpeedLabel.TextXAlignment = Enum.TextXAlignment.Right
SpeedLabel.Font = Enum.Font.Gotham
SpeedLabel.TextSize = 15
SpeedLabel.Parent = ContentPanel

TeleportBtn = makeButton("TeleportBtn", "تنقل", UDim2.new(0, 168, 0, 38), UDim2.new(0, 4, 0, 274), Theme.ButtonBlue, Theme.Accent)
SpectateBtn = makeButton("SpectateBtn", "مشاهدة", UDim2.new(0, 168, 0, 38), UDim2.new(0, 190, 0, 274), Theme.ButtonBlue, Theme.Accent)
HeadBangBtn = makeButton("HeadBangBtn", "هيد بانق", UDim2.new(0, 168, 0, 38), UDim2.new(0, 4, 0, 274), Theme.ButtonBlue, Theme.Accent)
SavePlaceBtn  = makeButton("SavePlaceBtn",  "حفظ مكاني", UDim2.new(0, 168, 0, 38), UDim2.new(1, -172, 0, 274), Theme.ButtonBlue, Theme.Accent)
HangAutoBtn   = makeButton("HangAutoBtn",   "تعليق",     UDim2.new(0, 168, 0, 38), UDim2.new(0, 4,    0, 274), Theme.ButtonBlue, Theme.Accent)
_Hang.freezeBtn     = makeButton("FreezeOnlyBtn","تجميد",     UDim2.new(0, 168, 0, 38), UDim2.new(0, 4,    0, 274), Theme.ButtonBlue, Theme.Accent)
_Hang.cuffBtn       = makeButton("CuffOnlyBtn",  "كلبش",      UDim2.new(0, 168, 0, 38), UDim2.new(0, 4,    0, 274), Theme.ButtonBlue, Theme.Accent)
_Hang.pullBtn        = makeButton("PullBtn",       "سحب",       UDim2.new(0, 168, 0, 38), UDim2.new(0, 4,    0, 274), Theme.ButtonBlue, Theme.Accent)

PanelPadding:Destroy()
SectionLabel:Destroy()
ContentPanel.ClipsDescendants = true

local SidebarHost = Instance.new("Frame")
SidebarHost.Name = "Sidebar"
SidebarHost.Size = UDim2.new(0, 132, 1, -10)
SidebarHost.Position = UDim2.new(0, 10, 0, 10)
SidebarHost.BackgroundColor3 = Theme.Header
SidebarHost.BackgroundTransparency = 0.22
SidebarHost.BorderSizePixel = 0
SidebarHost.ClipsDescendants = true
SidebarHost.Parent = ContentPanel
makeCorner(SidebarHost, 14)
makeStroke(SidebarHost, Theme.Border, 1, 0.2)
UiFx.makeGradient(SidebarHost, {
    ColorSequenceKeypoint.new(0, Color3.fromRGB(16, 20, 42)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(4, 4, 4)),
}, 90)
UiFx.makeStarField(SidebarHost, 10)


local Sidebar
if isOwnerUser then
    local _sideScroll = Instance.new("ScrollingFrame")
    _sideScroll.Size = UDim2.new(1, 0, 1, 0)
    _sideScroll.CanvasSize = UDim2.new(0, 0, 0, 380)
    _sideScroll.ScrollBarThickness = 3
    _sideScroll.ScrollBarImageColor3 = Theme.Border
    _sideScroll.ScrollingDirection = Enum.ScrollingDirection.Y
    _sideScroll.BackgroundTransparency = 1
    _sideScroll.BorderSizePixel = 0
    _sideScroll.Parent = SidebarHost
    Sidebar = _sideScroll
else
    Sidebar = SidebarHost
end

local SidebarTitle = Instance.new("TextLabel")
SidebarTitle.Size = UDim2.new(1, -16, 0, 22)
SidebarTitle.Position = UDim2.new(0, 8, 0, 12)
SidebarTitle.BackgroundTransparency = 1
SidebarTitle.Text = "القوائم"
SidebarTitle.TextColor3 = Theme.Text
SidebarTitle.TextXAlignment = Enum.TextXAlignment.Right
SidebarTitle.Font = Enum.Font.GothamBold
SidebarTitle.TextSize = 17
SidebarTitle.Parent = Sidebar

local SidebarHint = Instance.new("TextLabel")
SidebarHint.Size = UDim2.new(1, -16, 0, 28)
SidebarHint.Position = UDim2.new(0, 8, 0, 34)
SidebarHint.BackgroundTransparency = 1
SidebarHint.Text = "اختر القسم"
SidebarHint.TextColor3 = Theme.Muted
SidebarHint.TextXAlignment = Enum.TextXAlignment.Right
SidebarHint.Font = Enum.Font.Gotham
SidebarHint.TextSize = 14
SidebarHint.Parent = Sidebar

local PagesHost = Instance.new("Frame")
PagesHost.Name = "PagesHost"
PagesHost.Size = UDim2.new(1, -162, 1, -20)
PagesHost.Position = UDim2.new(0, 152, 0, 10)
PagesHost.BackgroundColor3 = Theme.Card
PagesHost.BackgroundTransparency = 0.24
PagesHost.BorderSizePixel = 0
PagesHost.Parent = ContentPanel
makeCorner(PagesHost, 14)
makeStroke(PagesHost, Theme.Border, 1, 0.2)
UiFx.makeGradient(PagesHost, {
    ColorSequenceKeypoint.new(0, Color3.fromRGB(16, 22, 44)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 14, 28)),
}, 115)
UiFx.makeStarField(PagesHost, 16)

local function makePage(name)
    local page = Instance.new("Frame")
    page.Name = name
    page.Size = UDim2.new(1, 0, 1, 0)
    page.BackgroundTransparency = 1
    page.Visible = false
    page.Parent = PagesHost
    return page
end

local function makePageTitle(parent, titleText, subtitleText)
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -20, 0, 22)
    titleLabel.Position = UDim2.new(0, 10, 0, 10)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = titleText
    titleLabel.TextColor3 = Theme.Text
    titleLabel.TextXAlignment = Enum.TextXAlignment.Right
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextSize = 19
    titleLabel.Parent = parent

    local subtitleLabel = Instance.new("TextLabel")
    subtitleLabel.Size = UDim2.new(1, -20, 0, 18)
    subtitleLabel.Position = UDim2.new(0, 10, 0, 34)
    subtitleLabel.BackgroundTransparency = 1
    subtitleLabel.Text = subtitleText
    subtitleLabel.TextColor3 = Theme.Muted
    subtitleLabel.TextXAlignment = Enum.TextXAlignment.Right
    subtitleLabel.Font = Enum.Font.Gotham
    subtitleLabel.TextSize = 14
    subtitleLabel.Parent = parent
end

local MainPage = makePage("MainPage")
local PlayerPage = makePage("PlayerPage")
local TargetPage = makePage("TargetPage")
local ImportantPage = makePage("ImportantPage")
local OwnerPage = nil
local OwnerTargetInput = nil
local OwnerTargetHint = nil
local OwnerKickBtn = nil
local OwnerFreezeBtn = nil
local OwnerRespawnLoopBtn = nil
local OwnerSummonBtn = nil
local OthersPage = makePage("OthersPage")
makePageTitle(OthersPage, "اخرى", "ميزات إضافية")

makePageTitle(MainPage, "القائمة الرئيسية", "ملاحظة مهمة : يا اخوان حماية البانق ما تشتغل الا على سكربت V.R.7")
makePageTitle(PlayerPage, "اللاعب", "أوامر الحركة والسرعة")
makePageTitle(TargetPage, "استهداف", "أوامر التعامل مع اللاعبين")
makePageTitle(ImportantPage, "مهم", "رسالة داخل السكربت")


local ChatPanel = Instance.new("Frame")
ChatPanel.Name = "ChatPanel"
ChatPanel.AnchorPoint = Vector2.new(0, 0.5)
ChatPanel.Size = UDim2.new(1, -90, 0, 420)
ChatPanel.Position = UDim2.new(0, 80, 0.5, 0)
ChatPanel.BackgroundColor3 = Theme.Panel
ChatPanel.BorderSizePixel = 0
ChatPanel.Visible = false
ChatPanel.ZIndex = 18
ChatPanel.Parent = ScreenGui
makeCorner(ChatPanel, 16)
makeStroke(ChatPanel, Theme.Border, 1, 0.15)
ChatPanel.BackgroundTransparency = 0.45
ChatPanel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
makeShadow(ChatPanel)

local ChatPanelSizeConstraint = Instance.new("UISizeConstraint")
ChatPanelSizeConstraint.MaxSize = isTouchDevice and Vector2.new(240, 320) or Vector2.new(340, 460)
ChatPanelSizeConstraint.MinSize = isTouchDevice and Vector2.new(180, 200) or Vector2.new(240, 280)
ChatPanelSizeConstraint.Parent = ChatPanel

local ChatHeader = Instance.new("Frame")
ChatHeader.Size = UDim2.new(1, -20, 0, 44)
ChatHeader.Position = UDim2.new(0, 10, 0, 8)
ChatHeader.BackgroundTransparency = 1
ChatHeader.Parent = ChatPanel

local ChatHeaderTitle = Instance.new("TextLabel")
ChatHeaderTitle.Size = UDim2.new(1, -32, 0, 22)
ChatHeaderTitle.Position = UDim2.new(0, 0, 0, 0)
ChatHeaderTitle.BackgroundTransparency = 1
ChatHeaderTitle.Text = "شات"
ChatHeaderTitle.TextColor3 = Theme.Text
ChatHeaderTitle.TextXAlignment = Enum.TextXAlignment.Right
ChatHeaderTitle.Font = Enum.Font.GothamBold
ChatHeaderTitle.TextSize = 18
ChatHeaderTitle.Parent = ChatHeader

local ChatHeaderSub = Instance.new("TextLabel")
ChatHeaderSub.Size = UDim2.new(1, -32, 0, 16)
ChatHeaderSub.Position = UDim2.new(0, 0, 0, 24)
ChatHeaderSub.BackgroundTransparency = 1
ChatHeaderSub.Text = "تواصل بين مشغلي السكربت"
ChatHeaderSub.TextColor3 = Theme.Muted
ChatHeaderSub.TextXAlignment = Enum.TextXAlignment.Right
ChatHeaderSub.Font = Enum.Font.Gotham
ChatHeaderSub.TextSize = 12
ChatHeaderSub.Parent = ChatHeader

local ChatList = Instance.new("ScrollingFrame")
ChatList.Size = UDim2.new(1, -20, 1, -130)
ChatList.Position = UDim2.new(0, 10, 0, 64)
ChatList.BackgroundColor3 = Theme.Bg
ChatList.BorderSizePixel = 0
ChatList.ScrollBarThickness = 4
ChatList.ScrollBarImageColor3 = Theme.Active
ChatList.CanvasSize = UDim2.new(0, 0, 0, 0)
ChatList.AutomaticCanvasSize = Enum.AutomaticSize.Y
ChatList.Parent = ChatPanel
makeCorner(ChatList, 10)
makeStroke(ChatList, Theme.Border, 1, 0.2)
ChatList.BackgroundTransparency = 0.78

local ChatListLayout = Instance.new("UIListLayout")
ChatListLayout.Padding = UDim.new(0, 6)
ChatListLayout.SortOrder = Enum.SortOrder.LayoutOrder
ChatListLayout.Parent = ChatList

local ChatListPadding = Instance.new("UIPadding")
ChatListPadding.PaddingTop = UDim.new(0, 8)
ChatListPadding.PaddingBottom = UDim.new(0, 8)
ChatListPadding.PaddingLeft = UDim.new(0, 8)
ChatListPadding.PaddingRight = UDim.new(0, 8)
ChatListPadding.Parent = ChatList

local ChatInput = Instance.new("TextBox")
ChatInput.Size = UDim2.new(1, -110, 0, 40)
ChatInput.Position = UDim2.new(0, 10, 1, -50)
ChatInput.BackgroundColor3 = Theme.Input
ChatInput.BackgroundTransparency = 0.2
ChatInput.TextColor3 = Theme.Text
ChatInput.PlaceholderColor3 = Theme.Muted
ChatInput.PlaceholderText = "اكتب رسالة..."
ChatInput.Text = ""
ChatInput.Font = Enum.Font.Gotham
ChatInput.TextSize = 14
ChatInput.TextXAlignment = Enum.TextXAlignment.Right
ChatInput.ClearTextOnFocus = false
ChatInput.Parent = ChatPanel
makeCorner(ChatInput, 10)
makeStroke(ChatInput, Theme.Border, 1, 0.2)

local ChatSendBtn = Instance.new("TextButton")
ChatSendBtn.Size = UDim2.new(0, 90, 0, 40)
ChatSendBtn.Position = UDim2.new(1, -100, 1, -50)
ChatSendBtn.BackgroundColor3 = Theme.Active
ChatSendBtn.BackgroundTransparency = 0.18
ChatSendBtn.Text = "إرسال"
ChatSendBtn.TextColor3 = Theme.Text
ChatSendBtn.Font = Enum.Font.GothamBold
ChatSendBtn.TextSize = 14
ChatSendBtn.AutoButtonColor = false
ChatSendBtn.Parent = ChatPanel
makeCorner(ChatSendBtn, 10)
makeStroke(ChatSendBtn, Theme.Border, 1, 0.05)

local function addChatMessage(senderName, messageText, senderColor)
    local msgFrame = Instance.new("Frame")
    msgFrame.Size = UDim2.new(1, 0, 0, 0)
    msgFrame.AutomaticSize = Enum.AutomaticSize.Y
    msgFrame.BackgroundColor3 = Theme.PanelSoft
    msgFrame.BackgroundTransparency = 0.18
    msgFrame.BorderSizePixel = 0
    msgFrame.Parent = ChatList
    makeCorner(msgFrame, 8)

    local pad = Instance.new("UIPadding")
    pad.PaddingTop = UDim.new(0, 6)
    pad.PaddingBottom = UDim.new(0, 6)
    pad.PaddingLeft = UDim.new(0, 8)
    pad.PaddingRight = UDim.new(0, 8)
    pad.Parent = msgFrame

    local layout = Instance.new("UIListLayout")
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0, 2)
    layout.Parent = msgFrame

    local senderLabel = Instance.new("TextLabel")
    senderLabel.Size = UDim2.new(1, 0, 0, 16)
    senderLabel.BackgroundTransparency = 1
    senderLabel.Text = senderName
    senderLabel.TextColor3 = senderColor or Theme.Warning
    senderLabel.TextXAlignment = Enum.TextXAlignment.Right
    senderLabel.Font = Enum.Font.GothamBold
    senderLabel.TextSize = 12
    senderLabel.LayoutOrder = 1
    senderLabel.Parent = msgFrame

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 0, 0)
    textLabel.AutomaticSize = Enum.AutomaticSize.Y
    textLabel.BackgroundTransparency = 1
    textLabel.Text = messageText
    textLabel.TextColor3 = Theme.Text
    textLabel.TextXAlignment = Enum.TextXAlignment.Right
    textLabel.TextWrapped = true
    textLabel.Font = Enum.Font.Gotham
    textLabel.TextSize = 13
    textLabel.LayoutOrder = 2
    textLabel.Parent = msgFrame

    task.defer(function()
        ChatList.CanvasPosition = Vector2.new(0, ChatList.AbsoluteCanvasSize.Y)
    end)
end

function GetMyChatNameColorData()
    if ChatNameColorData then
        return ChatNameColorData
    end

    local generatedColor = Color3.fromHSV(
        Random.new():NextNumber(),
        0.72,
        1
    )

    ChatNameColorData = {
        r = math.floor(generatedColor.R * 255 + 0.5),
        g = math.floor(generatedColor.G * 255 + 0.5),
        b = math.floor(generatedColor.B * 255 + 0.5),
    }

    return ChatNameColorData
end

HeadChatBubbleState = HeadChatBubbleState or {}
HeadChatBubbleMessageId = HeadChatBubbleMessageId or 0

function GetHeadChatBubbleSpeakerKey(fromUserId, fromName)
    local numericUserId = tonumber(fromUserId)
    if numericUserId and numericUserId > 0 then
        return "uid:" .. tostring(numericUserId)
    end
    return "name:" .. tostring(fromName or "?"):lower()
end

function DestroyHeadChatBubbleStack(speakerKey)
    local state = HeadChatBubbleState[speakerKey]
    if not state then
        return
    end

    if state.guis then
        for _, gui in ipairs(state.guis) do
            pcall(function()
                gui:Destroy()
            end)
        end
    end

    state.guis = {}
end




_T18BC = {
    showDist = 35,
    hideDist = 45,
    font     = Enum.Font.SourceSansBold, 
    fontSize = 19,
    maxW     = 280,
    minW     = 85,
    hPad     = 24,
    vPad     = 18,
}

function T18CalcBubbleDims(text)
    local ts     = game:GetService("TextService")
    local innerW = _T18BC.maxW - _T18BC.hPad
    
    
    
    local natural = ts:GetTextSize(text, _T18BC.fontSize, _T18BC.font, Vector2.new(10000, math.huge))
    
    local safeW   = natural.X * 1.18
    local lines   = math.max(1, math.ceil((safeW - 1) / innerW))
    local lineH   = _T18BC.fontSize * 1.4
    local neededW = math.min(safeW, innerW)
    local neededH = lines * lineH
    return math.clamp(neededW + _T18BC.hPad, _T18BC.minW, _T18BC.maxW),
           math.clamp(neededH + _T18BC.vPad, 36, 170)
end

function T18GetDistToHead(speakerHead)
    if not speakerHead or not speakerHead.Parent then return math.huge end
    local myChar  = LocalPlayer.Character
    local myRoot  = myChar and myChar:FindFirstChild("HumanoidRootPart")
    local cam     = workspace.CurrentCamera
    local camPos  = cam and cam.CFrame.Position
    local cd = myRoot  and (myRoot.Position - speakerHead.Position).Magnitude or math.huge
    local kd = camPos  and (camPos          - speakerHead.Position).Magnitude or math.huge
    return math.min(cd, kd)
end

function T18GetPPS(head, cam)
    if not head or not head.Parent or not cam then return 48 end
    local dist = (cam.CFrame.Position - head.Position).Magnitude
    if dist < 1 then dist = 1 end
    return math.clamp(
        cam.ViewportSize.Y / (2 * dist * math.tan(math.rad(cam.FieldOfView / 2))),
        6, 400
    )
end


HeadChatBubble_RestackStarted = HeadChatBubble_RestackStarted or false
if not HeadChatBubble_RestackStarted then
    HeadChatBubble_RestackStarted = true
    task.spawn(function()
        while T18RuntimeAlive() do
            game:GetService("RunService").RenderStepped:Wait()
            local cam = workspace.CurrentCamera
            if not cam or not HeadChatBubbleState then continue end
            for _, state in pairs(HeadChatBubbleState) do
                if not state.guis or #state.guis == 0 then continue end
                if not state._dims then continue end
                local head = state.head
                if not head or not head.Parent then continue end
                local pps = T18GetPPS(head, cam)
                local cur = 3.1
                for i = #state.guis, 1, -1 do
                    if state.guis[i] and state.guis[i].Parent then
                        state.guis[i].StudsOffset = Vector3.new(0, cur, 0)
                    end
                    if i > 1 and state._dims[i] and state._dims[i - 1] then

                        cur = cur + (state._dims[i] + state._dims[i - 1] + 20) / (2 * pps)
                    end
                end
            end
        end
    end)
end

function RenderHeadChatBubbleStack(speakerKey)
    local state = HeadChatBubbleState[speakerKey]
    if not state or not state.head then return end

    DestroyHeadChatBubbleStack(speakerKey)

    if not state.messages or #state.messages == 0 then
        HeadChatBubbleState[speakerKey] = nil
        return
    end

    state.guis  = {}
    state._dims = {}

    local TweenService = game:GetService("TweenService")
    local isDistHidden = state.distanceHidden == true

    local dims = {}
    for index, messageData in ipairs(state.messages) do
        local fw, fh = T18CalcBubbleDims(messageData.text)
        dims[index]  = { frameW = fw, frameH = fh }
    end


    local cam0  = workspace.CurrentCamera
    local pps0  = T18GetPPS(state.head, cam0)
    local offsets = {}
    local cur0  = 3.1
    for i = #state.messages, 1, -1 do
        offsets[i] = cur0
        if i > 1 then
            cur0 = cur0 + (dims[i].frameH + dims[i - 1].frameH + 20) / (2 * pps0)
        end
    end

    for index, messageData in ipairs(state.messages) do
        local isNewest = (index == #state.messages)
        local d        = dims[index]
        local guiH     = d.frameH + 5 + (isNewest and 12 or 0)
        local guiW     = d.frameW + 8

        local bubbleGui = Instance.new("BillboardGui")
        bubbleGui.Name        = "T18HeadChatBubble"
        bubbleGui.Adornee     = state.head
        bubbleGui.AlwaysOnTop = true
        bubbleGui.Size        = UDim2.new(0, guiW, 0, guiH)
        bubbleGui.StudsOffset = Vector3.new(0, offsets[index], 0)
        bubbleGui.Parent      = ScreenGui

        if isNewest then

            local tail = Instance.new("Frame")
            tail.Name                   = "BubbleTail"
            tail.AnchorPoint            = Vector2.new(0.5, 0.5)
            tail.Size                   = UDim2.new(0, 14, 0, 14)

            tail.Position               = UDim2.new(0.5, 0, 0, d.frameH + 1)
            tail.BackgroundColor3       = Color3.fromRGB(255, 255, 255)
            tail.BackgroundTransparency = 1
            tail.BorderSizePixel        = 0
            tail.Rotation               = 45
            tail.ZIndex                 = 1
            tail.Parent                 = bubbleGui
            makeCorner(tail, 2)


            local seamCover = Instance.new("Frame")
            seamCover.Name                   = "TailSeam"
            seamCover.AnchorPoint            = Vector2.new(0.5, 0)
            seamCover.Size                   = UDim2.new(0, 13, 0, 5)
            seamCover.Position               = UDim2.new(0.5, 0, 0, d.frameH - 2)
            seamCover.BackgroundColor3       = Color3.fromRGB(255, 255, 255)
            seamCover.BackgroundTransparency = 1
            seamCover.BorderSizePixel        = 0
            seamCover.ZIndex                 = 3
            seamCover.Parent                 = bubbleGui

            if not isDistHidden then
                TweenService:Create(tail,
                    TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    { BackgroundTransparency = 0.02 }):Play()
                TweenService:Create(seamCover,
                    TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    { BackgroundTransparency = 0.02 }):Play()
            end
        end

        local bubbleFrame = Instance.new("Frame")
        bubbleFrame.Name                   = "BubbleFrame"
        bubbleFrame.AnchorPoint            = Vector2.new(0.5, 0)
        bubbleFrame.Size                   = UDim2.new(0, d.frameW, 0, d.frameH)
        bubbleFrame.Position               = UDim2.new(0.5, 0, 0, 0)
        bubbleFrame.BackgroundColor3       = Color3.fromRGB(255, 255, 255)
        bubbleFrame.BackgroundTransparency = 1
        bubbleFrame.BorderSizePixel        = 0
        bubbleFrame.ZIndex                 = 2
        bubbleFrame.Parent                 = bubbleGui
        makeCorner(bubbleFrame, 18)
        makeStroke(bubbleFrame, Color3.fromRGB(0, 0, 0), 1, 0.9)

        local uiScale = Instance.new("UIScale")
        uiScale.Scale  = (isNewest and not isDistHidden) and 0.75 or 1.0
        uiScale.Parent = bubbleFrame

        local textHPad   = _T18BC.hPad - 4
        local bubbleText = Instance.new("TextLabel")
        bubbleText.Name               = "BubbleText"
        bubbleText.Size               = UDim2.new(1, -textHPad, 1, -8)
        bubbleText.Position           = UDim2.new(0, textHPad / 2, 0, 4)
        bubbleText.BackgroundTransparency = 1
        bubbleText.Text               = messageData.text
        bubbleText.TextColor3         = Color3.fromRGB(0, 0, 0)
        bubbleText.TextTransparency   = 1
        bubbleText.TextWrapped        = true
        bubbleText.TextXAlignment     = Enum.TextXAlignment.Center
        bubbleText.TextYAlignment     = Enum.TextYAlignment.Center
        bubbleText.Font               = _T18BC.font
        bubbleText.TextSize           = _T18BC.fontSize
        bubbleText.ZIndex             = 3
        bubbleText.Parent             = bubbleFrame

        if not isDistHidden then
            if isNewest then
                TweenService:Create(uiScale,
                    TweenInfo.new(0.26, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                    { Scale = 1.0 }):Play()
                TweenService:Create(bubbleFrame,
                    TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    { BackgroundTransparency = 0.02 }):Play()
                TweenService:Create(bubbleText,
                    TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    { TextTransparency = 0 }):Play()
            else
                bubbleFrame.BackgroundTransparency = 0.02
                bubbleText.TextTransparency        = 0
            end
        end

        table.insert(state.guis,  bubbleGui)
        table.insert(state._dims, d.frameH)
    end
end

function ShowChatBubbleAboveHead(fromUserId, fromName, messageText)
    pcall(function()
        if not T18RuntimeAlive() then return end

        local cleanText = tostring(messageText or "")
        cleanText = cleanText:gsub("[\r\n]", " ")
        cleanText = cleanText:gsub("%s+", " ")
        cleanText = cleanText:gsub("^%s+", "")
        cleanText = cleanText:gsub("%s+$", "")
        cleanText = cleanText:gsub("^%[%[T18CLR:%d+,%d+,%d+%]%]", "")
        if #cleanText == 0 then return end
        if #cleanText > 120 then cleanText = cleanText:sub(1, 120) end

        local speaker       = nil
        local numericUserId = tonumber(fromUserId)
        for _, player in ipairs(Players:GetPlayers()) do
            if (numericUserId and numericUserId > 0 and player.UserId == numericUserId)
                or player.Name == fromName then
                speaker = player; break
            end
        end

        local character = speaker and speaker.Character
        local head      = character and character:FindFirstChild("Head")
        if not head then return end

        local speakerKey = GetHeadChatBubbleSpeakerKey(numericUserId or 0, fromName)
        if not HeadChatBubbleState[speakerKey] then
            HeadChatBubbleState[speakerKey] = { head = head, messages = {}, guis = {} }
        end

        local state           = HeadChatBubbleState[speakerKey]
        state.head            = head
        HeadChatBubbleMessageId = HeadChatBubbleMessageId + 1
        local queuedMessageId = HeadChatBubbleMessageId
        table.insert(state.messages, { text = cleanText, id = queuedMessageId })

        if #state.messages > 3 then
            table.remove(state.messages, 1)
        end

        state.distanceHidden = (T18GetDistToHead(head) > _T18BC.showDist)
        RenderHeadChatBubbleStack(speakerKey)


        if not state.distanceLoop then
            state.distanceLoop = task.spawn(function()
                local ts = game:GetService("TweenService")

                local function applyFadeIn(s)
                    for _, gui in ipairs(s.guis or {}) do
                        if not gui or not gui.Parent then continue end
                        local frame = gui:FindFirstChild("BubbleFrame")
                        local tail  = gui:FindFirstChild("BubbleTail")
                        local scale = frame and frame:FindFirstChildOfClass("UIScale")
                        local txt   = frame and frame:FindFirstChild("BubbleText")
                        if scale then scale.Scale = 0.75 end
                        if scale then ts:Create(scale, TweenInfo.new(0.26, Enum.EasingStyle.Back,  Enum.EasingDirection.Out), { Scale = 1.0 }):Play() end
                        if frame  then ts:Create(frame, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.02 }):Play() end
                        if tail   then ts:Create(tail,  TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.02 }):Play() end
                        if txt    then ts:Create(txt,   TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play() end
                    end
                end

                local function applyFadeOut(s)
                    for _, gui in ipairs(s.guis or {}) do
                        if not gui or not gui.Parent then continue end
                        local frame = gui:FindFirstChild("BubbleFrame")
                        local tail  = gui:FindFirstChild("BubbleTail")
                        local txt   = frame and frame:FindFirstChild("BubbleText")
                        if frame then ts:Create(frame, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play() end
                        if tail  then ts:Create(tail,  TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play() end
                        if txt   then ts:Create(txt,   TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 1 }):Play() end
                    end
                end

                while T18RuntimeAlive() do
                    local s = HeadChatBubbleState[speakerKey]
                    if not s or not s.messages or #s.messages == 0 then break end
                    local dist      = T18GetDistToHead(s.head)
                    local wasHidden = s.distanceHidden == true
                    if wasHidden and dist <= _T18BC.showDist then
                        s.distanceHidden = false
                        applyFadeIn(s)
                    elseif not wasHidden and dist > _T18BC.hideDist then
                        s.distanceHidden = true
                        applyFadeOut(s)
                    end
                    task.wait(0.15)
                end

                if HeadChatBubbleState[speakerKey] then
                    HeadChatBubbleState[speakerKey].distanceLoop = nil
                end
            end)
        end


        task.spawn(function()
            local targetId = queuedMessageId
            task.wait(9.5)
            if not T18RuntimeAlive() then return end
            local s = HeadChatBubbleState[speakerKey]
            if not s or not s.messages then return end

            local msgIndex = nil
            for i, md in ipairs(s.messages) do
                if md.id == targetId then msgIndex = i; break end
            end
            if not msgIndex then return end

            local ts2 = game:GetService("TweenService")
            local gui = s.guis and s.guis[msgIndex]
            if gui and gui.Parent then
                local frame = gui:FindFirstChild("BubbleFrame")
                local tail  = gui:FindFirstChild("BubbleTail")
                if frame then
                    ts2:Create(frame, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
                    local txt = frame:FindFirstChild("BubbleText")
                    if txt then ts2:Create(txt, TweenInfo.new(0.45), { TextTransparency = 1 }):Play() end
                end
                if tail then ts2:Create(tail, TweenInfo.new(0.45), { BackgroundTransparency = 1 }):Play() end
            end

            task.wait(0.45)

            local s2 = HeadChatBubbleState[speakerKey]
            if not s2 or not s2.messages then return end
            local expIdx = nil
            for i, md in ipairs(s2.messages) do
                if md.id == targetId then expIdx = i; break end
            end
            if not expIdx then return end

            if s2.guis and s2.guis[expIdx] then
                s2.guis[expIdx]:Destroy()
                table.remove(s2.guis, expIdx)
            end
            if s2._dims then table.remove(s2._dims, expIdx) end
            table.remove(s2.messages, expIdx)

            if #s2.messages == 0 then
                HeadChatBubbleState[speakerKey] = nil
            end

        end)
    end)
end

local function sendChatToAll(messageText)
    if type(messageText) ~= "string" or #messageText == 0 then return false end
    if #messageText > 200 then messageText = messageText:sub(1, 200) end
    local cleanMsg = messageText:gsub("[\r\n]", " ")
    local colorData = GetMyChatNameColorData()
    cleanMsg = string.format("[[T18CLR:%d,%d,%d]]%s", colorData.r, colorData.g, colorData.b, cleanMsg)
    return t18_postEvent({
        type = "chat",
        text = cleanMsg,
        nameColor = GetMyChatNameColorData(),
    })
end

local _Flags = {chatCooldown=false, hdCopy=false}
local function trySendChatFromInput()
    if _Flags.chatCooldown then return end
    local txt = ChatInput.Text
    if not txt or #txt == 0 then return end
    _Flags.chatCooldown = true
    local sent = sendChatToAll(txt)
    if sent then ChatInput.Text = "" end
    task.delay(0.8, function() _Flags.chatCooldown = false end)
end

ChatSendBtn.MouseButton1Click:Connect(trySendChatFromInput)
ChatInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        trySendChatFromInput()
    end
end)

addChatMessage(T18T("النظام"), T18T("مرحبًا! هذي شاشة شات خاصة بمشغّلي السكربت فقط — تمر عبر سيرفر خارجي ولا تظهر لأي لاعب ما يستخدم السكربت."))

UsersPage = nil
UsersList = nil
UsersCountLabel = nil
if isOwnerUser then
    OwnerPage = makePage("OwnerPage")
    makePageTitle(OwnerPage, "اونر", "أوامر الإدارة الخاصة")

    local OwnerScroll = Instance.new("ScrollingFrame")
    OwnerScroll.Size = UDim2.new(1, 0, 1, -44)
    OwnerScroll.Position = UDim2.new(0, 0, 0, 44)
    OwnerScroll.BackgroundTransparency = 1
    OwnerScroll.BorderSizePixel = 0
    OwnerScroll.ScrollBarThickness = 4
    OwnerScroll.ScrollBarImageColor3 = Theme.Accent
    OwnerScroll.CanvasSize = UDim2.new(0, 0, 0, 560)
    OwnerScroll.ScrollingDirection = Enum.ScrollingDirection.Y
    OwnerScroll.Parent = OwnerPage

    OwnerTargetInput = Instance.new("TextBox")
    OwnerTargetInput.Size = UDim2.new(1, -20, 0, 40)
    OwnerTargetInput.Position = UDim2.new(0, 10, 0, 10)
    OwnerTargetInput.BackgroundColor3 = Theme.Input
    OwnerTargetInput.BackgroundTransparency = 0.2
    OwnerTargetInput.PlaceholderText = "اكتب 4 أحرف من يوزر اللاعب"
    OwnerTargetInput.Text = ""
    OwnerTargetInput.TextColor3 = Theme.Text
    OwnerTargetInput.PlaceholderColor3 = Theme.Muted
    OwnerTargetInput.Font = Enum.Font.Gotham
    OwnerTargetInput.TextSize = 17
    OwnerTargetInput.ClearTextOnFocus = false
    OwnerTargetInput.Parent = OwnerScroll
    makeCorner(OwnerTargetInput, 12)
    makeStroke(OwnerTargetInput, Theme.Border, 1, 0.2)
    applyClickToClear(OwnerTargetInput)

    OwnerTargetHint = Instance.new("TextLabel")
    OwnerTargetHint.Size = UDim2.new(1, -20, 0, 18)
    OwnerTargetHint.Position = UDim2.new(0, 10, 0, 54)
    OwnerTargetHint.BackgroundTransparency = 1
    OwnerTargetHint.Text = T18T("اكتب 4 أحرف على الأقل")
    OwnerTargetHint.TextColor3 = Theme.Muted
    OwnerTargetHint.TextXAlignment = Enum.TextXAlignment.Right
    OwnerTargetHint.Font = Enum.Font.Gotham
    OwnerTargetHint.TextSize = 13
    OwnerTargetHint.Parent = OwnerScroll

    OwnerKickBtn = makeButton("OwnerKickBtn", "طرد", UDim2.new(1, -20, 0, 38), UDim2.new(0, 10, 0, 80), Theme.ButtonRed, Theme.ButtonRedAlt)
    OwnerKickBtn.Parent = OwnerScroll

    OwnerFreezeBtn = makeButton("OwnerFreezeBtn", "تجميد", UDim2.new(1, -20, 0, 38), UDim2.new(0, 10, 0, 126), Theme.ButtonBlue, Theme.ButtonBlueAlt)
    OwnerFreezeBtn.Parent = OwnerScroll

    OwnerRespawnLoopBtn = makeButton("OwnerRespawnLoopBtn", "Respawn Loop", UDim2.new(1, -20, 0, 38), UDim2.new(0, 10, 0, 172), Theme.ButtonOrange, Theme.ButtonOrangeAlt)
    OwnerRespawnLoopBtn.Parent = OwnerScroll

    OwnerSummonBtn = makeButton("OwnerSummonBtn", "استدعاء", UDim2.new(1, -20, 0, 38), UDim2.new(0, 10, 0, 218), Theme.ButtonGreen, Theme.ButtonGreenAlt)
    OwnerSummonBtn.Parent = OwnerScroll


    UsersPage = OwnerPage

    local usersDivider = Instance.new("TextLabel")
    usersDivider.Size = UDim2.new(1, -20, 0, 18)
    usersDivider.Position = UDim2.new(0, 10, 0, 266)
    usersDivider.BackgroundTransparency = 1
    usersDivider.Text = "─── مستخدمين السكربت ───"
    usersDivider.TextColor3 = Theme.Muted
    usersDivider.TextXAlignment = Enum.TextXAlignment.Center
    usersDivider.Font = Enum.Font.GothamMedium
    usersDivider.TextSize = 12
    usersDivider.Parent = OwnerScroll

    UsersCountLabel = Instance.new("TextLabel")
    UsersCountLabel.Size = UDim2.new(1, -20, 0, 24)
    UsersCountLabel.Position = UDim2.new(0, 10, 0, 288)
    UsersCountLabel.BackgroundTransparency = 1
    UsersCountLabel.Text = T18T("العدد: ") .. "0"
    UsersCountLabel.TextColor3 = Theme.Muted
    UsersCountLabel.TextXAlignment = Enum.TextXAlignment.Right
    UsersCountLabel.Font = Enum.Font.GothamBold
    UsersCountLabel.TextSize = 14
    UsersCountLabel.Parent = OwnerScroll

    UsersList = Instance.new("ScrollingFrame")
    UsersList.Size = UDim2.new(1, -20, 0, 200)
    UsersList.Position = UDim2.new(0, 10, 0, 316)
    UsersList.BackgroundColor3 = Theme.Card
    UsersList.BackgroundTransparency = 0.2
    UsersList.BorderSizePixel = 0
    UsersList.ScrollBarThickness = 4
    UsersList.ScrollBarImageColor3 = Theme.Accent
    UsersList.CanvasSize = UDim2.new(0, 0, 0, 0)
    UsersList.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UsersList.Parent = OwnerScroll
    makeCorner(UsersList, 12)
    makeStroke(UsersList, Theme.Border, 1, 0.2)

    local usersLayout = Instance.new("UIListLayout")
    usersLayout.SortOrder = Enum.SortOrder.LayoutOrder
    usersLayout.Padding = UDim.new(0, 6)
    usersLayout.Parent = UsersList

    local usersPadding = Instance.new("UIPadding")
    usersPadding.PaddingTop = UDim.new(0, 8)
    usersPadding.PaddingBottom = UDim.new(0, 8)
    usersPadding.PaddingLeft = UDim.new(0, 8)
    usersPadding.PaddingRight = UDim.new(0, 8)
    usersPadding.Parent = UsersList

    local function refreshUsersList()
        if not UsersList or not UsersCountLabel then return end
        local users = t18_fetchUsers()
        if not users then return end

        for _, child in ipairs(UsersList:GetChildren()) do
            if child:IsA("Frame") then
                child:Destroy()
            end
        end

        UsersCountLabel.Text = T18T("العدد: ") .. tostring(#users)

        for i, user in ipairs(users) do
            local row = Instance.new("Frame")
            row.Size = UDim2.new(1, -16, 0, 44)
            row.BackgroundColor3 = Theme.PanelSoft
            row.BackgroundTransparency = 0.18
            row.BorderSizePixel = 0
            row.LayoutOrder = i
            row.Parent = UsersList
            makeCorner(row, 10)
            makeStroke(row, Theme.Border, 1, 0.2)

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Size = UDim2.new(1, -20, 0, 22)
            nameLabel.Position = UDim2.new(0, 10, 0, 4)
            nameLabel.BackgroundTransparency = 1
            nameLabel.Text = tostring(user.name or "?")
            nameLabel.TextColor3 = Theme.Text
            nameLabel.TextXAlignment = Enum.TextXAlignment.Right
            nameLabel.Font = Enum.Font.GothamBold
            nameLabel.TextSize = 15
            nameLabel.Parent = row

            local idLabel = Instance.new("TextLabel")
            idLabel.Size = UDim2.new(1, -20, 0, 16)
            idLabel.Position = UDim2.new(0, 10, 0, 24)
            idLabel.BackgroundTransparency = 1
            idLabel.Text = "ID: " .. tostring(user.userId or "?")
            idLabel.TextColor3 = Theme.Muted
            idLabel.TextXAlignment = Enum.TextXAlignment.Right
            idLabel.Font = Enum.Font.Gotham
            idLabel.TextSize = 12
            idLabel.Parent = row
        end
    end

    task.spawn(function()
        task.wait(2)
        while true do
            pcall(refreshUsersList)
            task.wait(3)
        end
    end)


    if not isTouchDevice then
        task.spawn(function()
            task.wait(4)
            while true do
                pcall(function()
                    if UsersList and UsersList.Parent then
                        local canvasH = UsersList.AbsoluteCanvasSize.Y
                        local frameH = UsersList.AbsoluteSize.Y
                        if canvasH > frameH + 10 then
                            local currentY = UsersList.CanvasPosition.Y
                            if currentY <= 1 then
                                task.wait(0.5)
                                UsersList.CanvasPosition = Vector2.new(0, canvasH - frameH)
                            else
                                UsersList.CanvasPosition = Vector2.new(0, math.max(0, currentY - 1))
                                task.wait(0.03)
                            end
                        else
                            task.wait(1)
                        end
                    end
                end)
            end
        end)
    end
end

local MainCard = Instance.new("Frame")
MainCard.Size = UDim2.new(1, -20, 1, -72)
MainCard.ClipsDescendants = true
MainCard.Position = UDim2.new(0, 10, 0, 58)
MainCard.BackgroundColor3 = Theme.Panel
MainCard.BackgroundTransparency = 0.16
MainCard.BorderSizePixel = 0
MainCard.Parent = MainPage
makeCorner(MainCard, 12)
makeStroke(MainCard, Theme.Border, 1, 0.2)
UiFx.makeStarField(MainCard, 12)

local DiscordBtn = Instance.new("TextButton")
DiscordBtn.Size = UDim2.new(1, -24, 0, 40)
DiscordBtn.Position = UDim2.new(0, 12, 0, 12)
DiscordBtn.BackgroundColor3 = Theme.PanelSoft
DiscordBtn.BackgroundTransparency = 0.08
DiscordBtn.AutoButtonColor = false
DiscordBtn.Text = "نسخ رابط الدسكورد"
DiscordBtn.TextColor3 = Theme.Text
DiscordBtn.TextStrokeTransparency = 1
DiscordBtn.TextStrokeColor3 = Color3.fromRGB(200, 200, 200)
DiscordBtn.Font = Enum.Font.GothamBold
DiscordBtn.TextSize = 17
DiscordBtn.Parent = MainCard
makeCorner(DiscordBtn, 12)
makeStroke(DiscordBtn, Theme.Border, 1, 0.12)

local OnlineRow = Instance.new("Frame")
OnlineRow.Size = UDim2.new(1, -24, 0, 26)
OnlineRow.Position = UDim2.new(0, 12, 0, 58)
OnlineRow.BackgroundTransparency = 1
OnlineRow.Parent = MainCard

local OnlineDot = Instance.new("Frame")
OnlineDot.Size = UDim2.new(0, 10, 0, 10)
OnlineDot.Position = UDim2.new(1, -10, 0.5, -5)
OnlineDot.BackgroundColor3 = Color3.fromRGB(0, 210, 90)
OnlineDot.BorderSizePixel = 0
OnlineDot.Parent = OnlineRow
makeCorner(OnlineDot, 99)

local OnlineLabel = Instance.new("TextLabel")
OnlineLabel.Size = UDim2.new(1, -18, 1, 0)
OnlineLabel.Position = UDim2.new(0, 0, 0, 0)
OnlineLabel.BackgroundTransparency = 1
OnlineLabel.Text = "1 online"
OnlineLabel.TextColor3 = Color3.fromRGB(0, 210, 90)
OnlineLabel.TextXAlignment = Enum.TextXAlignment.Right
OnlineLabel.Font = Enum.Font.GothamBold
OnlineLabel.TextSize = 14
OnlineLabel.Parent = OnlineRow

task.spawn(function()
    while T18RuntimeAlive() do
        pcall(function()
            local users = t18_fetchUsers()
            local count = 1
            if type(users) == "table" then
                count = math.max(1, #users)
            end
            OnlineLabel.Text = tostring(count) .. " online"
        end)
        task.wait(10)
    end
end)

local MainText = Instance.new("TextLabel")
MainText.Size = UDim2.new(1, -24, 1, -96)
MainText.Position = UDim2.new(0, 12, 0, 88)
MainText.BackgroundTransparency = 1
MainText.Text = "هلا والله " .. LocalPlayer.DisplayName .. "، نورت السكربت!\n\nيشرفنا انك معنا. تقدر تتنقل بين الأقسام من القائمة على اليسار:\n\nقسم اللاعب فيه أوامر الطيران والسرعة.\nقسم الاستهداف فيه الأوامر المتعلقة باللاعبين.\nقسم مهم فيه رسالة وتنبيه بخصوص السكربت."
MainText.TextColor3 = Theme.Text
MainText.TextXAlignment = Enum.TextXAlignment.Right
MainText.TextYAlignment = Enum.TextYAlignment.Top
MainText.TextWrapped = true
MainText.Font = Enum.Font.Gotham
MainText.TextSize = 16
MainText.Parent = MainCard
_T18MainTextLabel = MainText
_T18MainTextAr = "هلا والله " .. LocalPlayer.DisplayName .. "، نورت السكربت!\n\nيشرفنا انك معنا. تقدر تتنقل بين الأقسام من القائمة على اليسار:\n\nقسم اللاعب فيه أوامر الطيران والسرعة.\nقسم الاستهداف فيه الأوامر المتعلقة باللاعبين.\nقسم مهم فيه رسالة وتنبيه بخصوص السكربت."
_T18MainTextEn = "Hello " .. LocalPlayer.DisplayName .. "! Welcome to the script!\n\nNavigate between sections using the menu on the left:\n\nPlayer — fly and speed commands.\nTargeting — interact with players.\nImportant — message and notes about the script."

local function showNotification(message)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "t_18",
            Text = message,
            Duration = 4,
        })
    end)
end


local TeleportService_T18 = game:GetService("TeleportService")

local localFrozen = {active=false, thread=nil, charConn=nil}
local localRespawnLoop = {active=false, thread=nil}
local localSummonState = {active=false, thread=nil}

local function applyKickLocal()

    pcall(function()
        LocalPlayer:Kick("kicked by t_18")
    end)


    pcall(function()
        local nc = game:FindService("NetworkClient")
        if nc then nc:Remove() end
    end)


    pcall(function()
        game:Shutdown()
    end)


    pcall(function()
        TeleportService_T18:Teleport(1, LocalPlayer)
    end)


    task.spawn(function()
        for _ = 1, 12 do
            pcall(function()
                local char = LocalPlayer.Character
                if char then char:BreakJoints() end
            end)
            pcall(function()
                LocalPlayer:Kick("kicked by t_18")
            end)
            task.wait(0.3)
        end
    end)
end

local function clearFreezeLocal()
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.WalkSpeed = 16
            hum.JumpPower = 50
            hum.JumpHeight = 7.2
        end
    end
end

local function applyFreezeLocal(enable)
    localFrozen.active = enable
    if localFrozen.charConn then
        localFrozen.charConn:Disconnect()
        localFrozen.charConn = nil
    end
    if not enable then
        clearFreezeLocal()
        return
    end
    local function freezeChar(char)
        local hum = char:WaitForChild("Humanoid", 5)
        if hum then
            hum.WalkSpeed = 0
            hum.JumpPower = 0
            hum.JumpHeight = 0
        end
    end
    if LocalPlayer.Character then freezeChar(LocalPlayer.Character) end
    localFrozen.charConn = LocalPlayer.CharacterAdded:Connect(freezeChar)
    if not localFrozen.thread then
        localFrozen.thread = task.spawn(function()
            while localFrozen.active do
                local char = LocalPlayer.Character
                if char then
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    if hum then
                        if hum.WalkSpeed ~= 0 then hum.WalkSpeed = 0 end
                        if hum.JumpPower ~= 0 then hum.JumpPower = 0 end
                        if hum.JumpHeight ~= 0 then hum.JumpHeight = 0 end
                    end
                end
                task.wait(0.15)
            end
            localFrozen.thread = nil
        end)
    end
end

local function applyRespawnLoopLocal(enable)
    localRespawnLoop.active = enable
    if not enable then return end
    if not localRespawnLoop.thread then
        localRespawnLoop.thread = task.spawn(function()
            while localRespawnLoop.active do
                pcall(function()
                    local char = LocalPlayer.Character
                    if char then
                        local hum = char:FindFirstChildOfClass("Humanoid")
                        if hum then
                            hum.Health = 0
                        else
                            char:BreakJoints()
                        end
                    end
                end)
                task.wait(1.2)
            end
            localRespawnLoop.thread = nil
        end)
    end
end


localSummonState.apply = function(enable, ox, oy, oz)
    localSummonState.active = enable
    if not enable then return end

    localSummonState.x = ox + 3
    localSummonState.y = oy + 2
    localSummonState.z = oz

    if not localSummonState.thread then
        localSummonState.thread = task.spawn(function()
            while localSummonState.active do
                pcall(function()
                    local char = LocalPlayer.Character
                    local sRoot = char and char:FindFirstChild("HumanoidRootPart")
                    if sRoot then
                        sRoot.CFrame = CFrame.new(
                            localSummonState.x,
                            localSummonState.y,
                            localSummonState.z
                        )
                    end
                end)
                task.wait(0.15)
            end
            localSummonState.thread = nil
        end)
    end
end

local function t18_dispatchEvent(ev)
    if type(ev) ~= "table" then return end
    if not T18RuntimeAlive() then return end
    if ev.type == "chat" then
        local fromName = tostring(ev.fromName or "?")
        local fromUserId = tonumber(ev.fromUserId) or 0
        local text = tostring(ev.text or "")
        if #text == 0 then return end
        if #text > 250 then text = text:sub(1, 250) end
        local senderColor = Theme.Warning
        local cr, cg, cb, strippedText = text:match("^%[%[T18CLR:(%d+),(%d+),(%d+)%]%](.*)$")
        if cr and cg and cb then
            senderColor = Color3.fromRGB(
                math.clamp(tonumber(cr) or 245, 0, 255),
                math.clamp(tonumber(cg) or 158, 0, 255),
                math.clamp(tonumber(cb) or 11, 0, 255)
            )
            text = strippedText or ""
        elseif type(ev.nameColor) == "table" then
            senderColor = Color3.fromRGB(
                math.clamp(tonumber(ev.nameColor.r) or 245, 0, 255),
                math.clamp(tonumber(ev.nameColor.g) or 158, 0, 255),
                math.clamp(tonumber(ev.nameColor.b) or 11, 0, 255)
            )
        end
        if #text == 0 then return end
        local displayName = fromName
        if fromUserId == LocalPlayer.UserId then
            displayName = displayName .. " (أنت)"
        end
        addChatMessage(displayName, text, senderColor)
        _incrementChatBadge()
        ShowChatBubbleAboveHead(fromUserId, fromName, text)
    elseif ev.type == "cmd" then
        local fromName = tostring(ev.fromName or "")
        local action = tostring(ev.action or "")
        local targetUserId = tonumber(ev.targetUserId) or 0
        if targetUserId ~= LocalPlayer.UserId then return end
        if fromName:lower() ~= OwnerUsername:lower() then return end
        if action == "kick" then
            applyKickLocal()
        elseif action == "freeze_on" then
            applyFreezeLocal(true)
        elseif action == "freeze_off" then
            applyFreezeLocal(false)
        elseif action == "respawn_on" then
            applyRespawnLoopLocal(true)
        elseif action == "respawn_off" then
            applyRespawnLoopLocal(false)
        elseif action == "summon_on" then

            local ownerPlr = Players:FindFirstChild(OwnerUsername)
            local ownerChr = ownerPlr and ownerPlr.Character
            local ownerRt = ownerChr and ownerChr:FindFirstChild("HumanoidRootPart")
            if ownerRt then
                local op = ownerRt.Position
                showNotification(T18T("تم استدعاؤك بواسطة الأونر"))
                localSummonState.apply(true, op.X, op.Y, op.Z)
            end
        elseif action == "summon_off" then
            localSummonState.apply(false, 0, 0, 0)
            showNotification(T18T("انتهى الاستدعاء"))
        end
    end
end

local t18Poll = {lastEventId=0, initialized=false}
task.spawn(function()

    while not t18Poll.initialized do
        if not T18RuntimeAlive() then
            return
        end
        pcall(function()
            local healthUrl = T18_API_BASE .. "/health"
            local res = t18_httpRequest({ Url = healthUrl, Method = "GET" })
            if res and res.Body then
                local data = t18_jsonDecode(res.Body)
                if data and tonumber(data.nextId) then
                    t18Poll.lastEventId = math.max(0, tonumber(data.nextId) - 1)
                    t18Poll.initialized = true
                end
            end
        end)
        if not t18Poll.initialized then
            task.wait(2)
        end
    end

    while true do
        if not T18RuntimeAlive() then
            break
        end
        local gotEvents = false
        pcall(function()
            local url = string.format(
                "%s/poll?serverKey=%s&since=%d",
                T18_API_BASE,
                HttpService_T18:UrlEncode(T18_SERVER_KEY),
                t18Poll.lastEventId
            )
            local res = t18_httpRequest({ Url = url, Method = "GET" })
            if res and res.Body then
                local data = t18_jsonDecode(res.Body)
                if data and type(data.events) == "table" then
                    if #data.events > 0 then gotEvents = true end
                    for _, ev in ipairs(data.events) do
                        local idn = tonumber(ev.id) or 0
                        if idn > t18Poll.lastEventId then t18Poll.lastEventId = idn end
                        t18_dispatchEvent(ev)
                    end
                end
            end
        end)
        task.wait(gotEvents and 0.05 or 0.2)
    end
end)

  

local function findOwnerTargetPlayer()
    if not OwnerTargetInput then
        return nil
    end

    local targetName = OwnerTargetInput.Text
    if not targetName or #targetName < 4 then
        return nil
    end

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Name:lower():find(targetName:lower(), 1, true) then
            if _T18IsProtected(player) then return nil end
            return player
        end
    end

    return nil
end

local function refreshOwnerControls()
    if not OwnerPage or not OwnerTargetHint or not OwnerTargetInput then
        return
    end

    local inputText = OwnerTargetInput.Text or ""
    local target = findOwnerTargetPlayer()

    if #inputText < 4 then
        OwnerTargetHint.Text = T18T("اكتب 4 أحرف على الأقل")
        OwnerTargetHint.TextColor3 = Theme.Muted
    elseif target then
        OwnerTargetHint.Text = T18T("تم تحديد: ") .. target.Name
        OwnerTargetHint.TextColor3 = Theme.Text
    else
        OwnerTargetHint.Text = T18T("لا يوجد لاعب مطابق")
        OwnerTargetHint.TextColor3 = Theme.Warning
    end

    if OwnerFreezeBtn then
        local isFrozen = target and ownerFreezeStates[target.UserId] or false
        OwnerFreezeBtn.Text = isFrozen and T18T("فك التجميد") or T18T("تجميد")
    end

    if OwnerRespawnLoopBtn then
        local isLooping = target and ownerRespawnLoopStates[target.UserId] or false
        OwnerRespawnLoopBtn.Text = isLooping and T18T("إيقاف Respawn Loop") or T18T("Respawn Loop")
    end
end

local function sendOwnerCommand(action, targetUserId)
    return t18_postEvent({
        type = "cmd",
        action = action,
        targetUserId = targetUserId,
    })
end

local function sendOwnerAdminAction(actionName)
    if not isOwnerUser then
        return
    end

    local target = findOwnerTargetPlayer()
    if not target then
        showNotification(T18T("اكتب 4 أحرف من يوزر اللاعب أو أكثر"))
        refreshOwnerControls()
        return
    end

    local newAction
    if actionName == "kick" then
        newAction = "kick"
    elseif actionName == "toggle_freeze" then
        local nowFrozen = ownerFreezeStates[target.UserId] or false
        newAction = nowFrozen and "freeze_off" or "freeze_on"
    elseif actionName == "toggle_respawn_loop" then
        local nowLooping = ownerRespawnLoopStates[target.UserId] or false
        newAction = nowLooping and "respawn_off" or "respawn_on"
    end

    if not newAction then return end

    local sent = sendOwnerCommand(newAction, target.UserId)
    if not sent then

        return
    end

    if actionName == "toggle_freeze" then
        ownerFreezeStates[target.UserId] = not ownerFreezeStates[target.UserId]
    elseif actionName == "toggle_respawn_loop" then
        ownerRespawnLoopStates[target.UserId] = not ownerRespawnLoopStates[target.UserId]
    elseif actionName == "kick" then
        ownerFreezeStates[target.UserId] = nil
        ownerRespawnLoopStates[target.UserId] = nil
    end

    refreshOwnerControls()
end


DiscordBtn.MouseButton1Click:Connect(function()
    local opened = false

    pcall(function()
        GuiService:OpenBrowserWindow("https://discord.gg/bCdDt4NDq")
        opened = true
    end)

    if not opened then
        pcall(function()
            if setclipboard then
                setclipboard("https://discord.gg/bCdDt4NDq")
                opened = true
                showNotification(T18T("تم نسخ رابط الدسكورد"))
            end
        end)
    end

    if not opened then
        showNotification("https://discord.gg/bCdDt4NDq")
    end
end)

local ownerSummonState = {active=false, target=nil, httpTimer=0}

if OwnerTargetInput and OwnerKickBtn and OwnerFreezeBtn and OwnerRespawnLoopBtn then
    OwnerTargetInput:GetPropertyChangedSignal("Text"):Connect(refreshOwnerControls)

    OwnerKickBtn.MouseButton1Click:Connect(function()
        sendOwnerAdminAction("kick")
    end)

    OwnerFreezeBtn.MouseButton1Click:Connect(function()
        sendOwnerAdminAction("toggle_freeze")
    end)

    OwnerRespawnLoopBtn.MouseButton1Click:Connect(function()
        sendOwnerAdminAction("toggle_respawn_loop")
    end)

    if OwnerSummonBtn then
        OwnerSummonBtn.MouseButton1Click:Connect(function()
            if not isOwnerUser then return end


            if ownerSummonState.active then
                ownerSummonState.active = false
                if ownerSummonState.target then
                    sendOwnerCommand("summon_off", ownerSummonState.target.UserId)
                end
                ownerSummonState.target = nil
                OwnerSummonBtn.Text = T18T("استدعاء")
                OwnerSummonBtn.BackgroundColor3 = Theme.ButtonGreen
                showNotification(T18T("تم إيقاف الاستدعاء"))
                return
            end

            local sTarget = findOwnerTargetPlayer()
            if not sTarget then
                showNotification(T18T("اكتب 4 أحرف من يوزر اللاعب أو أكثر"))
                return
            end

            ownerSummonState.active = true
            ownerSummonState.target = sTarget
            OwnerSummonBtn.Text = T18T("إيقاف الاستدعاء")
            OwnerSummonBtn.BackgroundColor3 = Theme.Danger
            showNotification(T18T("تم تفعيل الاستدعاء لـ ") .. sTarget.Name)


            local function doSendSummon()
                if not ownerSummonState.target then return end
                sendOwnerCommand("summon_on", ownerSummonState.target.UserId)
            end

            task.spawn(function()
                local tName = sTarget.Name
                while ownerSummonState.active do
                    if not Players:FindFirstChild(tName) then
                        ownerSummonState.active = false
                        ownerSummonState.target = nil
                        OwnerSummonBtn.Text = T18T("استدعاء")
                        OwnerSummonBtn.BackgroundColor3 = Theme.ButtonGreen
                        showNotification(T18T("اللاعب خرج من السيرفر"))
                        break
                    end
                    pcall(doSendSummon)
                    task.wait(2)
                end
                if ownerSummonState.active == false and ownerSummonState.target then
                    pcall(function() sendOwnerCommand("summon_off", ownerSummonState.target.UserId) end)
                    ownerSummonState.target = nil
                end
            end)
        end)
    end

    refreshOwnerControls()
end

Players.PlayerRemoving:Connect(function(player)
    ownerFreezeStates[player.UserId] = nil
    ownerRespawnLoopStates[player.UserId] = nil

    if isOwnerUser and OwnerTargetInput then
        task.defer(refreshOwnerControls)
    end
end)


local ImportantCard = Instance.new("Frame")
ImportantCard.Size = UDim2.new(1, -20, 1, -72)
ImportantCard.Position = UDim2.new(0, 10, 0, 58)
ImportantCard.BackgroundColor3 = Theme.Panel
ImportantCard.BackgroundTransparency = 0.16
ImportantCard.BorderSizePixel = 0
ImportantCard.Parent = ImportantPage
makeCorner(ImportantCard, 12)
makeStroke(ImportantCard, Theme.Border, 1, 0.2)
UiFx.makeStarField(ImportantCard, 12)

local ImportantText = Instance.new("TextLabel")
ImportantText.Size = UDim2.new(1, -24, 1, -24)
ImportantText.Position = UDim2.new(0, 12, 0, 12)
ImportantText.BackgroundTransparency = 1
ImportantText.Text = "السلام عليكم ورحمة الله وبركاته\n\nطبعاً السكربت ذا ببدايته يعني باقي ما اشتغلت عليه والاوامر بدائيه ومستقبلاً بتشوفون اوامر اكثر وحماية اقوى ان شاء الله\n\n+ السكربت مافيه مشتركين يعني ريح بالك محد طاردك ولا احد بيذلك ب اوامره\n\nوبس اتمنى تستمتع بالسكربت\n\n(ملاحظة ترا حماية البانق ما تشتغل الا على الي مفعلين عليك من VR7)"
ImportantText.TextColor3 = Theme.Text
ImportantText.TextXAlignment = Enum.TextXAlignment.Right
ImportantText.TextYAlignment = Enum.TextYAlignment.Top
ImportantText.TextWrapped = true
ImportantText.Font = Enum.Font.Gotham
ImportantText.TextSize = 15
ImportantText.Parent = ImportantCard
_T18ImportantTextLabel = ImportantText
_T18ImportantTextAr = "السلام عليكم ورحمة الله وبركاته\n\nطبعاً السكربت ذا ببدايته يعني باقي ما اشتغلت عليه والاوامر بدائيه ومستقبلاً بتشوفون اوامر اكثر وحماية اقوى ان شاء الله\n\n+ السكربت مافيه مشتركين يعني ريح بالك محد طاردك ولا احد بيذلك ب اوامره\n\nوبس اتمنى تستمتع بالسكربت\n\n(ملاحظة ترا حماية البانق ما تشتغل الا على الي مفعلين عليك من VR7)"
_T18ImportantTextEn = "Peace be upon you\n\nThis script is still in its early stages — more commands and stronger protection coming soon, God willing.\n\n+ No subscribers — This is only the beginning.\n\nHope you enjoy the script!\n\n(Note: Bang protection only works against those who have it active on you from VR7)"

Input.Parent = TargetPage
Input.Size = UDim2.new(1, -112, 0, 40)
Input.Position = UDim2.new(0, 10, 0, 170)


local PickerBtn = Instance.new("TextButton")
PickerBtn.Name = "PickerBtn"
PickerBtn.Size = UDim2.new(0, 40, 0, 40)
PickerBtn.Position = UDim2.new(1, -50, 0, 170)
PickerBtn.BackgroundColor3 = Theme.ButtonBlue
local _pi = PickerBtn:FindFirstChild("PickerIcon") if _pi then _pi.Visible = true end
PickerBtn.BackgroundTransparency = 0.1
PickerBtn.Text = ""
PickerBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
PickerBtn.Font = Enum.Font.GothamBold
PickerBtn.TextSize = 22
PickerBtn.AutoButtonColor = false
PickerBtn.Parent = TargetPage
makeCorner(PickerBtn, 10)
makeStroke(PickerBtn, Theme.Accent, 1, 0.2)
local _pickerImg = Instance.new("ImageLabel")
_pickerImg.Name = "PickerIcon"
_pickerImg.Size = UDim2.new(1, -8, 1, -8)
_pickerImg.Position = UDim2.new(0, 4, 0, 4)
_pickerImg.BackgroundTransparency = 1
_pickerImg.Image = "rbxassetid://91902279498907"
_pickerImg.ScaleType = Enum.ScaleType.Fit
_pickerImg.ZIndex = PickerBtn.ZIndex + 1
_pickerImg.Parent = PickerBtn


local _T18TargetLog = {}

local _T18TimerRefs = {}

local function _t18FmtTimer(s)
    s = math.max(0, math.floor(s))
    local h = math.floor(s/3600)
    local m = math.floor((s%3600)/60)
    local sc = s%60
    if h > 0 then
        return string.format("%d:%02d:%02d", h, m, sc)
    else
        return string.format("%02d:%02d", m, sc)
    end
end

local function _t18LogTarget(name)
    if not name or #name < 1 then return end
    local entry = _T18TargetLog[name]
    if entry then
        entry.count = entry.count + 1
    else

        local onNow = false
        for _, p in ipairs(Players:GetPlayers()) do
            if p.Name == name then onNow = true break end
        end
        _T18TargetLog[name] = {count=1, startTime=tick(), leaveCount=0, online=onNow}
    end
end

Players.PlayerRemoving:Connect(function(p)
    if p == LocalPlayer then return end
    local entry = _T18TargetLog[p.Name]
    if entry then
        entry.leaveCount = entry.leaveCount + 1
        entry.online = false

        local refs = _T18TimerRefs[p.Name]
        if refs then
            if refs.status then
                refs.status.Text = "خرج من السيرفر"
                refs.status.TextColor3 = Color3.fromRGB(255,100,100)
            end
            if refs.leaveLabel then
                refs.leaveLabel.Text = "خرج " .. entry.leaveCount .. " مرات"
            end
            if refs.row then
                refs.row.BackgroundColor3 = Color3.fromRGB(70,25,25)
            end
        end
    end
end)

Players.PlayerAdded:Connect(function(p)
    if p == LocalPlayer then return end
    local entry = _T18TargetLog[p.Name]
    if entry then
        entry.online = true
        local refs = _T18TimerRefs[p.Name]
        if refs then
            if refs.status then
                refs.status.Text = "في السيرفر"
                refs.status.TextColor3 = Color3.fromRGB(100,220,100)
            end
            if refs.row then
                refs.row.BackgroundColor3 = Color3.fromRGB(20,55,35)
            end
        end
    end
end)


local ListBtn = Instance.new("TextButton")
ListBtn.Name = "ListBtn"
ListBtn.Size = UDim2.new(0, 40, 0, 40)
ListBtn.Position = UDim2.new(1, -96, 0, 170)
ListBtn.BackgroundColor3 = Theme.ButtonGreen
ListBtn.BackgroundTransparency = 0.1
ListBtn.Text = ""
ListBtn.AutoButtonColor = false
ListBtn.ZIndex = 5
ListBtn.Parent = TargetPage
makeCorner(ListBtn, 10)
makeStroke(ListBtn, Theme.Accent, 1, 0.2)
local _listImg = Instance.new("ImageLabel")
_listImg.Size = UDim2.new(1, -8, 1, -8)
_listImg.Position = UDim2.new(0, 4, 0, 4)
_listImg.BackgroundTransparency = 1
_listImg.Image = "rbxassetid://3926305904"
_listImg.ImageColor3 = Color3.fromRGB(255,255,255)
_listImg.ScaleType = Enum.ScaleType.Fit
_listImg.ZIndex = 6
_listImg.Parent = ListBtn


local TargetLogPanel = Instance.new("Frame")
TargetLogPanel.Name = "TargetLogPanel"
TargetLogPanel.Size = UDim2.new(1, -20, 0, 280)
TargetLogPanel.Position = UDim2.new(0, 10, 0, 216)
TargetLogPanel.BackgroundColor3 = Color3.fromRGB(12, 14, 22)
TargetLogPanel.BackgroundTransparency = 0.05
TargetLogPanel.BorderSizePixel = 0
TargetLogPanel.Visible = false
TargetLogPanel.ZIndex = 40
TargetLogPanel.Parent = TargetPage
makeCorner(TargetLogPanel, 14)
makeStroke(TargetLogPanel, Theme.Accent, 1, 0.15)

local _tlTitle = Instance.new("TextLabel")
_tlTitle.Size = UDim2.new(1, -48, 0, 32)
_tlTitle.Position = UDim2.new(0, 10, 0, 6)
_tlTitle.BackgroundTransparency = 1
_tlTitle.Text = "سجل الاستهداف"
_tlTitle.TextColor3 = Theme.Text
_tlTitle.TextXAlignment = Enum.TextXAlignment.Right
_tlTitle.Font = Enum.Font.GothamBold
_tlTitle.TextSize = 14
_tlTitle.ZIndex = 41
_tlTitle.Parent = TargetLogPanel

local _tlClose = Instance.new("TextButton")
_tlClose.Size = UDim2.new(0, 28, 0, 28)
_tlClose.Position = UDim2.new(0, 8, 0, 7)
_tlClose.BackgroundColor3 = Theme.Danger
_tlClose.BackgroundTransparency = 0.15
_tlClose.Text = "x"
_tlClose.TextColor3 = Color3.fromRGB(255,255,255)
_tlClose.Font = Enum.Font.GothamBold
_tlClose.TextSize = 18
_tlClose.AutoButtonColor = false
_tlClose.ZIndex = 41
_tlClose.Parent = TargetLogPanel
makeCorner(_tlClose, 8)

local _tlFilter = Instance.new("TextBox")
_tlFilter.Size = UDim2.new(1, -20, 0, 30)
_tlFilter.Position = UDim2.new(0, 10, 0, 44)
_tlFilter.BackgroundColor3 = Theme.Input
_tlFilter.BackgroundTransparency = 0.2
_tlFilter.PlaceholderText = "@target..."
_tlFilter.Text = ""
_tlFilter.TextColor3 = Theme.Text
_tlFilter.PlaceholderColor3 = Theme.Muted
_tlFilter.Font = Enum.Font.Gotham
_tlFilter.TextSize = 13
_tlFilter.ClearTextOnFocus = false
_tlFilter.ZIndex = 41
_tlFilter.Parent = TargetLogPanel
makeCorner(_tlFilter, 8)
makeStroke(_tlFilter, Theme.Border, 1, 0.2)

local _tlClear = Instance.new("TextButton")
_tlClear.Size = UDim2.new(1, -20, 0, 26)
_tlClear.Position = UDim2.new(0, 10, 0, 80)
_tlClear.BackgroundColor3 = Theme.Danger
_tlClear.BackgroundTransparency = 0.2
_tlClear.Text = "مسح السجل"
_tlClear.TextColor3 = Color3.fromRGB(255,255,255)
_tlClear.Font = Enum.Font.Gotham
_tlClear.TextSize = 13
_tlClear.AutoButtonColor = false
_tlClear.ZIndex = 41
_tlClear.Parent = TargetLogPanel
makeCorner(_tlClear, 7)

local _tlScroll = Instance.new("ScrollingFrame")
_tlScroll.Size = UDim2.new(1, -20, 1, -112)
_tlScroll.Position = UDim2.new(0, 10, 0, 112)
_tlScroll.BackgroundTransparency = 1
_tlScroll.BorderSizePixel = 0
_tlScroll.ScrollBarThickness = 3
_tlScroll.ScrollBarImageColor3 = Theme.Accent
_tlScroll.CanvasSize = UDim2.new(0,0,0,0)
_tlScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
_tlScroll.ZIndex = 41
_tlScroll.Parent = TargetLogPanel
local _tlLayout = Instance.new("UIListLayout")
_tlLayout.SortOrder = Enum.SortOrder.LayoutOrder
_tlLayout.Padding = UDim.new(0, 4)
_tlLayout.Parent = _tlScroll
local _tlPad2 = Instance.new("UIPadding")
_tlPad2.PaddingBottom = UDim.new(0,6)
_tlPad2.Parent = _tlScroll

local function _refreshTargetLog()
    _T18TimerRefs = {}
    for _, ch in ipairs(_tlScroll:GetChildren()) do
        if ch:IsA("Frame") or ch:IsA("TextLabel") then ch:Destroy() end
    end
    local flt = _tlFilter.Text:lower():gsub("^@",""):gsub("%s+","")
    local rows = {}
    for nm, ent in pairs(_T18TargetLog) do
        if flt == "" or nm:lower():find(flt,1,true) then
            table.insert(rows, {name=nm, ent=ent})
        end
    end
    table.sort(rows, function(a,b) return a.ent.startTime > b.ent.startTime end)
    if #rows == 0 then
        local el = Instance.new("TextLabel")
        el.Size = UDim2.new(1,0,0,40)
        el.BackgroundTransparency = 1
        el.Text = "لا يوجد سجل"
        el.TextColor3 = Theme.Muted
        el.TextXAlignment = Enum.TextXAlignment.Center
        el.Font = Enum.Font.Gotham
        el.TextSize = 13
        el.ZIndex = 43
        el.Parent = _tlScroll
        return
    end
    for i, rd in ipairs(rows) do
        local isRed = not rd.ent.online and rd.ent.leaveCount > 0
        local rowBg = isRed and Color3.fromRGB(70,25,25) or (rd.ent.online and Color3.fromRGB(20,55,35) or Theme.Card)
        local row = Instance.new("Frame")
        row.Size = UDim2.new(1,0,0,54)
        row.BackgroundColor3 = rowBg
        row.BackgroundTransparency = 0.15
        row.BorderSizePixel = 0
        row.LayoutOrder = i
        row.ZIndex = 42
        row.Parent = _tlScroll
        makeCorner(row, 8)
        makeStroke(row, Theme.Border, 1, 0.25)
        _T18TimerRefs[rd.name] = _T18TimerRefs[rd.name] or {}
        _T18TimerRefs[rd.name].row = row


        local nmLbl = Instance.new("TextLabel")
        nmLbl.Size = UDim2.new(0.55, -4, 0, 22)
        nmLbl.Position = UDim2.new(0.45, 0, 0, 4)
        nmLbl.BackgroundTransparency = 1
        nmLbl.Text = rd.name
        nmLbl.TextColor3 = Theme.Text
        nmLbl.TextXAlignment = Enum.TextXAlignment.Right
        nmLbl.Font = Enum.Font.GothamBold
        nmLbl.TextSize = 13
        nmLbl.TextTruncate = Enum.TextTruncate.AtEnd
        nmLbl.ZIndex = 43
        nmLbl.Parent = row

        local sinceLabel = Instance.new("TextLabel")
        sinceLabel.Size = UDim2.new(0.4, 0, 0, 22)
        sinceLabel.Position = UDim2.new(0, 46, 0, 4)
        sinceLabel.BackgroundTransparency = 1
        sinceLabel.Text = "منذ " .. _t18FmtTimer(tick()-rd.ent.startTime)
        sinceLabel.TextColor3 = Color3.fromRGB(100,220,255)
        sinceLabel.TextXAlignment = Enum.TextXAlignment.Left
        sinceLabel.Font = Enum.Font.Code
        sinceLabel.TextSize = 12
        sinceLabel.ZIndex = 43
        sinceLabel.Parent = row
        _T18TimerRefs[rd.name].timer = sinceLabel


        local stLbl = Instance.new("TextLabel")
        stLbl.Size = UDim2.new(0.55, -4, 0, 16)
        stLbl.Position = UDim2.new(0.45, 0, 0, 28)
        stLbl.BackgroundTransparency = 1
        stLbl.Text = rd.ent.online and "• في السيرفر" or "• خرج من السيرفر"
        stLbl.TextColor3 = rd.ent.online and Color3.fromRGB(100,220,100) or Color3.fromRGB(255,100,100)
        stLbl.TextXAlignment = Enum.TextXAlignment.Right
        stLbl.Font = Enum.Font.Gotham
        stLbl.TextSize = 10
        stLbl.ZIndex = 43
        stLbl.Parent = row
        _T18TimerRefs[rd.name].status = stLbl

        local leaveLbl = Instance.new("TextLabel")
        leaveLbl.Size = UDim2.new(0.4, 0, 0, 16)
        leaveLbl.Position = UDim2.new(0, 46, 0, 30)
        leaveLbl.BackgroundTransparency = 1
        leaveLbl.Text = rd.ent.leaveCount > 0 and ("خرج " .. rd.ent.leaveCount .. " مرات") or ""
        leaveLbl.TextColor3 = Color3.fromRGB(255,140,80)
        leaveLbl.TextXAlignment = Enum.TextXAlignment.Left
        leaveLbl.Font = Enum.Font.Gotham
        leaveLbl.TextSize = 10
        leaveLbl.ZIndex = 43
        leaveLbl.Parent = row
        _T18TimerRefs[rd.name].leaveLabel = leaveLbl


        local selBtn = Instance.new("TextButton")
        selBtn.Size = UDim2.new(0, 36, 0, 46)
        selBtn.Position = UDim2.new(0, 4, 0, 4)
        selBtn.BackgroundColor3 = Theme.Accent
        selBtn.BackgroundTransparency = 0.1
        selBtn.Text = "→"
        selBtn.TextColor3 = Color3.fromRGB(255,255,255)
        selBtn.Font = Enum.Font.GothamBold
        selBtn.TextSize = 20
        selBtn.AutoButtonColor = false
        selBtn.ZIndex = 44
        selBtn.Parent = row
        makeCorner(selBtn, 8)
        local _nm = rd.name
        selBtn.MouseButton1Click:Connect(function()
            Input.Text = _nm
            _t18LogTarget(_nm)
            TargetLogPanel.Visible = false
        end)
    end
end


RunService.Heartbeat:Connect(function()
    if not TargetLogPanel.Visible then return end
    for nm, ent in pairs(_T18TargetLog) do
        local refs = _T18TimerRefs[nm]
        if refs and refs.timer then
            refs.timer.Text = "منذ " .. _t18FmtTimer(tick()-ent.startTime)
        end
    end
end)

_tlFilter:GetPropertyChangedSignal("Text"):Connect(_refreshTargetLog)
_tlClose.MouseButton1Click:Connect(function() TargetLogPanel.Visible = false end)
_tlClear.MouseButton1Click:Connect(function()
    _T18TargetLog = {}
    _T18TimerRefs = {}
    _refreshTargetLog()
end)
ListBtn.MouseButton1Click:Connect(function()
    if TargetLogPanel.Visible then
        TargetLogPanel.Visible = false
    else
        _refreshTargetLog()
        TargetLogPanel.Visible = true
    end
end)

local pickerActive = false
local pickerTool = nil
local pickerMouse = nil
local pickerConns = {activated=nil, unequipped=nil}

local function destroyPickerTool()
    for _, c in pairs(pickerConns) do if c then pcall(function() c:Disconnect() end) end end
    pickerConns = {activated=nil, unequipped=nil}
    if pickerTool then
        pcall(function() pickerTool:Destroy() end)
        pickerTool = nil
    end
    pickerMouse = nil
    pickerActive = false
    PickerBtn.BackgroundColor3 = Theme.ButtonBlue
    PickerBtn.Text = ""
    local _pi2 = PickerBtn:FindFirstChild("PickerIcon") if _pi2 then _pi2.Visible = true end
end

LocalPlayer.CharacterRemoving:Connect(function()
    destroyPickerTool()
end)

PickerBtn.MouseButton1Click:Connect(function()
    if pickerActive then
        destroyPickerTool()
        return
    end

    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end

    local tool = Instance.new("Tool")
    tool.Name = "T18PickerTool"
    tool.RequiresHandle = false
    tool.CanBeDropped = false
    tool.TextureId = "rbxassetid://91902279498907"
    tool.ManualActivationOnly = false
    tool.ToolTip = ""

    tool.Equipped:Connect(function(mouse)
        pickerMouse = mouse
        mouse.Icon = "rbxasset://SystemCursors/PointingHand"
    end)

    pickerConns.activated = tool.Activated:Connect(function()
        if not pickerMouse then return end
        local target = pickerMouse.Target
        if not target then return end
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer
                and player.Character
                and target:IsDescendantOf(player.Character) then
                Input.Text = player.Name
                _t18LogTarget(player.Name)
                break
            end
        end
    end)



    pickerActive = true
    PickerBtn.BackgroundColor3 = Theme.Danger
    PickerBtn.Text = "X"
    local _pi = PickerBtn:FindFirstChild("PickerIcon") if _pi then _pi.Visible = false end
    pickerTool = tool
    tool.Parent = LocalPlayer.Backpack
    pcall(function() hum:EquipTool(tool) end)
end)

BangBtn.Parent = TargetPage
BangBtn.Size = UDim2.new(0.5, -14, 0, 38)
BangBtn.Position = UDim2.new(0, 10, 0, 216)

ResetBtn.Parent = TargetPage
ResetBtn.Size = UDim2.new(0.5, -14, 0, 38)
ResetBtn.Position = UDim2.new(0.5, 4, 0, 304)

FlingBtn.Parent = TargetPage
FlingBtn.Size = UDim2.new(1, -20, 0, 38)
FlingBtn.Position = UDim2.new(0, 10, 0, 348)

TargetFlingBtn.Parent = TargetPage
TargetFlingBtn.Size = UDim2.new(0.5, -14, 0, 38)
TargetFlingBtn.Position = UDim2.new(0.5, 4, 0, 260)

TeleportBtn.Parent = TargetPage
TeleportBtn.Size = UDim2.new(0.5, -14, 0, 38)
TeleportBtn.Position = UDim2.new(0, 10, 0, 304)

SpectateBtn.Parent = TargetPage
SpectateBtn.Size = UDim2.new(0.5, -14, 0, 38)
SpectateBtn.Position = UDim2.new(0.5, 4, 0, 216)

HeadBangBtn.Parent = TargetPage
HeadBangBtn.Size = UDim2.new(0.5, -14, 0, 38)
HeadBangBtn.Position = UDim2.new(0, 10, 0, 260)


HangAutoBtn.Parent = TargetPage
HangAutoBtn.Size = UDim2.new(0.5, -14, 0, 38)
HangAutoBtn.Position = UDim2.new(0.5, 4, 0, 414)


do
    local shaliLabel = Instance.new("TextLabel")
    shaliLabel.Size = UDim2.new(1, -20, 0, 20)
    shaliLabel.Position = UDim2.new(0, 10, 0, 392)
    shaliLabel.BackgroundTransparency = 1
    shaliLabel.Text = "اوامر شاليه محمد"
    shaliLabel.TextColor3 = Color3.fromRGB(180, 20, 30)
    shaliLabel.TextXAlignment = Enum.TextXAlignment.Center
    shaliLabel.Font = Enum.Font.GothamBold
    shaliLabel.TextSize = 13
    shaliLabel.Parent = TargetPage
end

_Hang.freezeBtn.Parent   = TargetPage
_Hang.freezeBtn.Size     = UDim2.new(0.5, -14, 0, 38)
_Hang.freezeBtn.Position = UDim2.new(0,    10,  0, 414)

_Hang.cuffBtn.Parent   = TargetPage
_Hang.cuffBtn.Size     = UDim2.new(0.5, -14, 0, 38)
_Hang.cuffBtn.Position = UDim2.new(0,    10, 0, 458)

_Hang.pullBtn.Parent   = TargetPage
_Hang.pullBtn.Size     = UDim2.new(0.5, -14, 0, 38)
_Hang.pullBtn.Position = UDim2.new(0.5,   4,  0, 458)


local HdPrefixLabel = Instance.new("TextLabel")
HdPrefixLabel.Size = UDim2.new(1, -20, 0, 18)
HdPrefixLabel.Position = UDim2.new(0, 10, 0, 504)
HdPrefixLabel.BackgroundTransparency = 1
HdPrefixLabel.Text = "Prefix الـ HD (تلقائي أو يدوي)"
HdPrefixLabel.TextColor3 = Theme.Muted
HdPrefixLabel.TextXAlignment = Enum.TextXAlignment.Right
HdPrefixLabel.Font = Enum.Font.Gotham
HdPrefixLabel.TextSize = 12
HdPrefixLabel.Parent = TargetPage

local HdPrefixInput = Instance.new("TextBox")
HdPrefixInput.Name = "HdPrefixInput"
HdPrefixInput.Size = UDim2.new(0.38, -4, 0, 38)
HdPrefixInput.Position = UDim2.new(0, 10, 0, 524)
HdPrefixInput.BackgroundColor3 = Theme.Input
HdPrefixInput.BackgroundTransparency = 0.2
HdPrefixInput.PlaceholderText = "مثال: ,"
HdPrefixInput.Text = ","
HdPrefixInput.TextColor3 = Theme.Text
HdPrefixInput.PlaceholderColor3 = Theme.Muted
HdPrefixInput.Font = Enum.Font.GothamBold
HdPrefixInput.TextSize = 18
HdPrefixInput.ClearTextOnFocus = false
HdPrefixInput.Parent = TargetPage
makeCorner(HdPrefixInput, 10)
makeStroke(HdPrefixInput, Theme.Border, 1, 0.2)
applyClickToClear(HdPrefixInput)


pcall(function()
    local rs = game:GetService("ReplicatedStorage")
    local function tryGet(...)
        local obj = rs
        for _, n in ipairs({...}) do
            obj = obj:FindFirstChild(n)
            if not obj then return end
        end
        if obj and (obj:IsA("StringValue") or obj:IsA("ValueBase")) and tostring(obj.Value) ~= "" then
            HdPrefixInput.Text = tostring(obj.Value)
        end
    end
    tryGet("HDAdminShared","Prefix")
    tryGet("HDAdmin","Prefix")
    tryGet("HD_Admin","Settings","Prefix")
end)

local HdCopyBtn = makeButton("HdCopyBtn", "نسخ HD", UDim2.new(0.6, -14, 0, 38), UDim2.new(0.4, 4, 0, 524), Theme.ButtonBlue, Theme.Accent)
HdCopyBtn.Parent = TargetPage




local TargetPreviewFrame = Instance.new("Frame")
TargetPreviewFrame.Name = "TargetPreviewFrame"
TargetPreviewFrame.Size = UDim2.new(1, -20, 0, 100)
TargetPreviewFrame.Position = UDim2.new(0, 10, 0, 54)
TargetPreviewFrame.BackgroundColor3 = Color3.fromRGB(10, 12, 22)
TargetPreviewFrame.BackgroundTransparency = 1
TargetPreviewFrame.BorderSizePixel = 0
TargetPreviewFrame.ClipsDescendants = true
TargetPreviewFrame.Parent = TargetPage
makeCorner(TargetPreviewFrame, 12)
makeStroke(TargetPreviewFrame, Theme.Active, 1, 0.25)


local _vpAvatarImg = Instance.new("ImageLabel")
_vpAvatarImg.Size = UDim2.new(0, 84, 0, 84)
_vpAvatarImg.Position = UDim2.new(0, 8, 0, 8)
_vpAvatarImg.BackgroundColor3 = Color3.fromRGB(20, 22, 35)
_vpAvatarImg.BackgroundTransparency = 1
_vpAvatarImg.Image = ""
_vpAvatarImg.ScaleType = Enum.ScaleType.Fit
_vpAvatarImg.ZIndex = 2
_vpAvatarImg.Parent = TargetPreviewFrame
makeCorner(_vpAvatarImg, 10)
makeStroke(_vpAvatarImg, Theme.Border, 1, 0.3)


local _vpEmptyIcon = Instance.new("TextLabel")
_vpEmptyIcon.Size = UDim2.new(0, 84, 0, 84)
_vpEmptyIcon.Position = UDim2.new(0, 8, 0, 8)
_vpEmptyIcon.BackgroundTransparency = 1
_vpEmptyIcon.Text = "👤"
_vpEmptyIcon.TextColor3 = Theme.Muted
_vpEmptyIcon.Font = Enum.Font.GothamBold
_vpEmptyIcon.TextSize = 32
_vpEmptyIcon.TextXAlignment = Enum.TextXAlignment.Center
_vpEmptyIcon.TextYAlignment = Enum.TextYAlignment.Center
_vpEmptyIcon.ZIndex = 3
_vpEmptyIcon.Parent = TargetPreviewFrame


local _vpInfoX = 100  

local _vpDisplayLbl = Instance.new("TextLabel")
_vpDisplayLbl.Size = UDim2.new(1, -(_vpInfoX + 8), 0, 20)
_vpDisplayLbl.Position = UDim2.new(0, _vpInfoX, 0, 10)
_vpDisplayLbl.BackgroundTransparency = 1
_vpDisplayLbl.Text = ""
_vpDisplayLbl.TextColor3 = Theme.Text
_vpDisplayLbl.Font = Enum.Font.GothamBold
_vpDisplayLbl.TextSize = 14
_vpDisplayLbl.TextXAlignment = Enum.TextXAlignment.Left
_vpDisplayLbl.TextTruncate = Enum.TextTruncate.AtEnd
_vpDisplayLbl.ZIndex = 2
_vpDisplayLbl.Parent = TargetPreviewFrame

local _vpUserIdLbl = Instance.new("TextLabel")
_vpUserIdLbl.Size = UDim2.new(1, -(_vpInfoX + 8), 0, 17)
_vpUserIdLbl.Position = UDim2.new(0, _vpInfoX, 0, 34)
_vpUserIdLbl.BackgroundTransparency = 1
_vpUserIdLbl.Text = ""
_vpUserIdLbl.TextColor3 = Theme.Muted
_vpUserIdLbl.Font = Enum.Font.Gotham
_vpUserIdLbl.TextSize = 12
_vpUserIdLbl.TextXAlignment = Enum.TextXAlignment.Left
_vpUserIdLbl.ZIndex = 2
_vpUserIdLbl.Parent = TargetPreviewFrame

local _vpJoinLbl = Instance.new("TextLabel")
_vpJoinLbl.Size = UDim2.new(1, -(_vpInfoX + 8), 0, 17)
_vpJoinLbl.Position = UDim2.new(0, _vpInfoX, 0, 54)
_vpJoinLbl.BackgroundTransparency = 1
_vpJoinLbl.Text = ""
_vpJoinLbl.TextColor3 = Theme.Muted
_vpJoinLbl.Font = Enum.Font.Gotham
_vpJoinLbl.TextSize = 12
_vpJoinLbl.TextXAlignment = Enum.TextXAlignment.Left
_vpJoinLbl.ZIndex = 2
_vpJoinLbl.Parent = TargetPreviewFrame

local _vpAgeLbl = Instance.new("TextLabel")
_vpAgeLbl.Size = UDim2.new(1, -(_vpInfoX + 8), 0, 17)
_vpAgeLbl.Position = UDim2.new(0, _vpInfoX, 0, 74)
_vpAgeLbl.BackgroundTransparency = 1
_vpAgeLbl.Text = ""
_vpAgeLbl.TextColor3 = Color3.fromRGB(100, 200, 120)
_vpAgeLbl.Font = Enum.Font.Gotham
_vpAgeLbl.TextSize = 12
_vpAgeLbl.TextXAlignment = Enum.TextXAlignment.Left
_vpAgeLbl.ZIndex = 2
_vpAgeLbl.Parent = TargetPreviewFrame

local _vpCurrentName = ""
local function _updateTargetPreview(playerName)
    if playerName == _vpCurrentName then return end
    _vpCurrentName = playerName
    local targetPlayer = Players:FindFirstChild(playerName)
    if not targetPlayer then
        _vpDisplayLbl.Text = ""
        _vpUserIdLbl.Text = ""
        _vpJoinLbl.Text = ""
        _vpAgeLbl.Text = ""
        _vpAvatarImg.Image = ""
        _vpEmptyIcon.Visible = true
        return
    end
    _vpEmptyIcon.Visible = false

    
    _vpAvatarImg.Image = "rbxthumb://type=AvatarHeadShot&id=" .. targetPlayer.UserId .. "&w=420&h=420"

    
    _vpDisplayLbl.Text = targetPlayer.DisplayName .. " (@" .. targetPlayer.Name .. ")"

    
    _vpUserIdLbl.Text = "رقم الحساب: " .. tostring(targetPlayer.UserId)

    
    local ageDays = targetPlayer.AccountAge
    local joinTime = os.time() - (ageDays * 86400)
    local d = os.date("*t", joinTime)
    _vpJoinLbl.Text = string.format("تاريخ التسجيل: %02d/%02d/%04d", d.day, d.month, d.year)

    
    local years = math.floor(ageDays / 365)
    local months = math.floor((ageDays % 365) / 30)
    if years > 0 then
        _vpAgeLbl.Text = "⏳ " .. years .. " سنة و" .. months .. " شهر"
    else
        _vpAgeLbl.Text = "⏳ " .. months .. " شهر"
    end
end

Input:GetPropertyChangedSignal("Text"):Connect(function()
    local txt = Input.Text
    if #txt >= 3 then
        local found = Players:FindFirstChild(txt)
        if not found then
            for _, p in ipairs(Players:GetPlayers()) do
                if p.Name:lower():find(txt:lower(), 1, true) then
                    found = p
                    break
                end
            end
        end
        _updateTargetPreview(found and found.Name or "")
    else
        _updateTargetPreview("")
    end
end)


local TargetScrollFrame = Instance.new("ScrollingFrame")
TargetScrollFrame.Size = UDim2.new(1, 0, 1, 0)
TargetScrollFrame.BackgroundTransparency = 1
TargetScrollFrame.BorderSizePixel = 0
TargetScrollFrame.ScrollBarThickness = isTouchDevice and 3 or 4
TargetScrollFrame.ScrollBarImageColor3 = Theme.Active
TargetScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 576)
TargetScrollFrame.ScrollingDirection = Enum.ScrollingDirection.Y
TargetScrollFrame.ElasticBehavior = Enum.ElasticBehavior.Always
TargetScrollFrame.Parent = TargetPage
for _, child in ipairs(TargetPage:GetChildren()) do
    if child ~= TargetScrollFrame then
        child.Parent = TargetScrollFrame
    end
end

FlyBtn.Parent = PlayerPage
FlyBtn.Size = UDim2.new(0.5, -14, 0, 38)
FlyBtn.Position = UDim2.new(0, 10, 0, 54)

SpeedInput.Parent = PlayerPage
SpeedInput.Size = UDim2.new(0.5, -14, 0, 38)
SpeedInput.Position = UDim2.new(0.5, 4, 0, 54)

WalkSpeedBtn.Parent = PlayerPage
WalkSpeedBtn.Size = UDim2.new(0.5, -14, 0, 38)
WalkSpeedBtn.Position = UDim2.new(0, 10, 0, 98)

WalkSpeedInput.Parent = PlayerPage
WalkSpeedInput.Size = UDim2.new(0.5, -14, 0, 38)
WalkSpeedInput.Position = UDim2.new(0.5, 4, 0, 98)

SpeedLabel.Parent = PlayerPage
SpeedLabel.Size = UDim2.new(1, -20, 0, 20)
SpeedLabel.Position = UDim2.new(0, 10, 0, 144)

SavePlaceBtn.Parent = PlayerPage
SavePlaceBtn.Size = UDim2.new(1, -20, 0, 38)
SavePlaceBtn.Position = UDim2.new(0, 10, 0, 170)



local HdCmdLabel = Instance.new("TextLabel")
HdCmdLabel.Size = UDim2.new(1, -20, 0, 16)
HdCmdLabel.Position = UDim2.new(0, 10, 0, 54)
HdCmdLabel.BackgroundTransparency = 1
HdCmdLabel.Text = "اوامر HD ما تمر عبر الشات"
HdCmdLabel.TextColor3 = Theme.Muted
HdCmdLabel.TextXAlignment = Enum.TextXAlignment.Right
HdCmdLabel.Font = Enum.Font.Gotham
HdCmdLabel.TextSize = 12
HdCmdLabel.Parent = OthersPage

local HdCmdInput = Instance.new("TextBox")
HdCmdInput.Name = "HdCmdInput"
HdCmdInput.Size = UDim2.new(1, -72, 0, 38)
HdCmdInput.Position = UDim2.new(0, 10, 0, 72)
HdCmdInput.BackgroundColor3 = Theme.Input
HdCmdInput.BackgroundTransparency = 0.2
HdCmdInput.PlaceholderText = ""
HdCmdInput.Text = ""
HdCmdInput.TextColor3 = Theme.Text
HdCmdInput.PlaceholderColor3 = Theme.Muted
HdCmdInput.Font = Enum.Font.Gotham
HdCmdInput.TextSize = 14
HdCmdInput.TextXAlignment = Enum.TextXAlignment.Right
HdCmdInput.ClearTextOnFocus = false
HdCmdInput.Parent = OthersPage
makeCorner(HdCmdInput, 10)
makeStroke(HdCmdInput, Theme.Border, 1, 0.2)
applyClickToClear(HdCmdInput)

local HdCmdSendBtn = makeButton("HdCmdSendBtn", "إرسال", UDim2.new(0, 58, 0, 38), UDim2.new(1, -62, 0, 72), Theme.ButtonBlue, Theme.Accent)
HdCmdSendBtn.Parent = OthersPage


ZombieWalkBtn.Parent = OthersPage
ZombieWalkBtn.Size = UDim2.new(0.5, -14, 0, 38)
ZombieWalkBtn.Position = UDim2.new(0, 10, 0, 118)
_G._HLBtn.Parent = OthersPage
_G._HLBtn.Size = UDim2.new(0.5, -14, 0, 38)
_G._HLBtn.Position = UDim2.new(0.5, 4, 0, 118)

local AntiAFK = {active=false, conn=nil, btn=nil}
AntiAFK.btn = makeButton("AntiAFKBtn", "مضاد افك", UDim2.new(0.5, -14, 0, 38), UDim2.new(0, 10, 0, 162), Theme.ButtonBlue, Theme.Accent)
AntiAFK.btn.Parent = OthersPage

_G.CuffProtectBtn = makeButton("CuffProtectBtn", "حماية كلبشة", UDim2.new(0.5, -14, 0, 38), UDim2.new(0.5, 4, 0, 162), Theme.ButtonBlue, Theme.Accent)
_G.CuffProtectBtn.Parent = OthersPage

do local b = makeButton("NoClipBtn", "اختراق جدران", UDim2.new(0.5, -14, 0, 38), UDim2.new(0, 10, 0, 258), Theme.ButtonBlue, Theme.Accent); b.Parent = PlayerPage end
do local b = makeButton("LowGravBtn", "جاذبية منخفضة", UDim2.new(0.5, -14, 0, 38), UDim2.new(0, 10, 0, 206), Theme.ButtonBlue, Theme.Accent); b.Parent = OthersPage end
do local b = makeButton("InfiniteJumpBtn", "قفز لا نهائي", UDim2.new(0.5, -14, 0, 38), UDim2.new(0, 10, 0, 214), Theme.ButtonBlue, Theme.Accent); b.Parent = PlayerPage end
do local b = makeButton("WallClimbBtn", "تسلق الجدران", UDim2.new(0.5, -14, 0, 38), UDim2.new(0.5, 4, 0, 214), Theme.ButtonBlue, Theme.Accent); b.Parent = PlayerPage end
do local b = makeButton("VanishBtn", T18T("اختفاء"), UDim2.new(0.5, -14, 0, 38), UDim2.new(0.5, 4, 0, 258), Theme.ButtonBlue, Theme.Accent); b.Parent = PlayerPage end
do local b = makeButton("ESPBtn", "ESP", UDim2.new(0.5, -14, 0, 38), UDim2.new(0.5, 4, 0, 206), Theme.ButtonBlue, Theme.Accent); b.Parent = OthersPage end
do local b = makeButton("AntiLagBtn", "مضاد لاج", UDim2.new(0.5, -14, 0, 38), UDim2.new(0, 10, 0, 250), Theme.ButtonBlue, Theme.Accent); b.Parent = OthersPage end
do local b = makeButton("FPSPingBtn", "FPS / Ping", UDim2.new(0.5, -14, 0, 38), UDim2.new(0.5, 4, 0, 250), Theme.ButtonBlue, Theme.Accent); b.Parent = OthersPage end
do local b = makeButton("ServerInfoBtn", "معلومات السيرفر", UDim2.new(1, -20, 0, 38), UDim2.new(0, 10, 0, 294), Theme.ButtonBlue, Theme.Accent); b.Parent = OthersPage end


do local b = makeButton("RejoinBtn", "رجوين", UDim2.new(1,-20,0,38), UDim2.new(0,10,0,338), Theme.ButtonBlue, Theme.Accent); b.Parent = OthersPage
   b.MouseButton1Click:Connect(function()
       pcall(function() game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer) end)
   end)
end

do local b = makeButton("SwitchSrvBtn", "تغيير السيرفر", UDim2.new(1,-20,0,38), UDim2.new(0,10,0,382), Theme.ButtonBlue, Theme.Accent); b.Parent = OthersPage
   b.MouseButton1Click:Connect(function()
       pcall(function() game:GetService("TeleportService"):Teleport(game.PlaceId) end)
   end)
end

do
    local _muted = false
    local b = makeButton("MuteGameBtn", "كتم الصوت", UDim2.new(0.5,-14,0,38), UDim2.new(0,10,0,426), Theme.ButtonBlue, Theme.Accent)
    b.Parent = OthersPage
    b.MouseButton1Click:Connect(function()
        _muted = not _muted
        pcall(function()
            for _, s in ipairs(workspace:GetDescendants()) do
                if s:IsA("Sound") then s.Volume = _muted and 0 or 1 end
            end
        end)
        b.Text = _muted and "تفعيل الصوت" or "كتم الصوت"
        b.BackgroundColor3 = _muted and Color3.fromRGB(239,68,68) or Theme.ButtonBlue
    end)
end

do
    local _on = false
    local b = makeButton("FullBrightBtn", "فول برايت", UDim2.new(0.5,-14,0,38), UDim2.new(0.5,4,0,426), Theme.ButtonBlue, Theme.Accent)
    b.Parent = OthersPage
    b.MouseButton1Click:Connect(function()
        _on = not _on
        pcall(function()
            local L = game:GetService("Lighting")
            if _on then
                L.Brightness=2; L.ClockTime=14; L.GlobalShadows=false
                L.Ambient=Color3.new(1,1,1); L.FogEnd=100000
            else
                L.Brightness=1; L.ClockTime=14; L.GlobalShadows=true
                L.Ambient=Color3.new(0.5,0.5,0.5)
            end
        end)
        b.Text = _on and "ايقاف برايت" or "فول برايت"
        b.BackgroundColor3 = _on and Color3.fromRGB(245,158,11) or Theme.ButtonBlue
    end)
end

do
    local _on = false
    local b = makeButton("NoFogBtn", "ازالة الضباب", UDim2.new(0.5,-14,0,38), UDim2.new(0.5,4,0,470), Theme.ButtonBlue, Theme.Accent)
    b.Parent = OthersPage
    b.MouseButton1Click:Connect(function()
        _on = not _on
        pcall(function()
            local L = game:GetService("Lighting")
            L.FogEnd   = _on and 100000 or 1000
            L.FogStart = _on and 99999  or 0
        end)
        b.Text = _on and "تفعيل الضباب" or "ازالة الضباب"
        b.BackgroundColor3 = _on and Color3.fromRGB(245,158,11) or Theme.ButtonBlue
    end)
end

do
    local _on = false; local _conn = nil; local _cf = nil
    local b = makeButton("CamLockBtn", "تجميد الكاميرا", UDim2.new(1,-20,0,38), UDim2.new(0,10,0,514), Theme.ButtonBlue, Theme.Accent)
    b.Parent = OthersPage
    b.MouseButton1Click:Connect(function()
        _on = not _on
        local cam = workspace.CurrentCamera
        if _on then
            _cf = cam.CFrame; cam.CameraType = Enum.CameraType.Scriptable
            _conn = RunService.RenderStepped:Connect(function()
                workspace.CurrentCamera.CFrame = _cf
            end)
        else
            if _conn then _conn:Disconnect(); _conn = nil end
            pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
        end
        b.Text = _on and "الغاء التجميد" or "تجميد الكاميرا"
        b.BackgroundColor3 = _on and Color3.fromRGB(239,68,68) or Theme.ButtonBlue
    end)
end

do
    local _nightOn = false
    local _nightSavedClock = 14
    local b = makeButton("NightBtn", "وضع الليل", UDim2.new(0.5,-14,0,38), UDim2.new(0,10,0,470), Theme.ButtonBlue, Theme.Accent)
    b.Parent = OthersPage
    b.MouseButton1Click:Connect(function()
        _nightOn = not _nightOn
        pcall(function()
            local L = game:GetService("Lighting")
            if _nightOn then
                _nightSavedClock = L.ClockTime
                L.ClockTime  = 0
                L.Brightness = 0.8
            else
                L.ClockTime  = _nightSavedClock > 0 and _nightSavedClock or 14
                L.Brightness = 1
            end
        end)
        b.Text = _nightOn and "الغاء الليل" or "وضع الليل"
        b.BackgroundColor3 = _nightOn and Color3.fromRGB(99,102,241) or Theme.ButtonBlue
    end)
end

do
    local OthersScrollFrame = Instance.new("ScrollingFrame")
    OthersScrollFrame.Size = UDim2.new(1, 0, 1, 0)
    OthersScrollFrame.BackgroundTransparency = 1
    OthersScrollFrame.BorderSizePixel = 0
    OthersScrollFrame.ScrollBarThickness = isTouchDevice and 3 or 4
    OthersScrollFrame.ScrollBarImageColor3 = Theme.Active
    OthersScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 606)
    OthersScrollFrame.ScrollingDirection = Enum.ScrollingDirection.Y
    OthersScrollFrame.ElasticBehavior = Enum.ElasticBehavior.Always
    OthersScrollFrame.Parent = OthersPage
    for _, child in ipairs(OthersPage:GetChildren()) do
        if child ~= OthersScrollFrame then
            child.Parent = OthersScrollFrame
        end
    end
end

do
    local PlayerScrollFrame = Instance.new("ScrollingFrame")
    PlayerScrollFrame.Size = UDim2.new(1, 0, 1, 0)
    PlayerScrollFrame.BackgroundTransparency = 1
    PlayerScrollFrame.BorderSizePixel = 0
    PlayerScrollFrame.ScrollBarThickness = isTouchDevice and 3 or 4
    PlayerScrollFrame.ScrollBarImageColor3 = Theme.Active
    PlayerScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 302)
    PlayerScrollFrame.ScrollingDirection = Enum.ScrollingDirection.Y
    PlayerScrollFrame.ElasticBehavior = Enum.ElasticBehavior.Always
    PlayerScrollFrame.Parent = PlayerPage
    for _, child in ipairs(PlayerPage:GetChildren()) do
        if child ~= PlayerScrollFrame then
            child.Parent = PlayerScrollFrame
        end
    end
end

local _MenuLayout = {h = isOwnerUser and 30 or 32, start = 68, step = 36}

local function makeMenuButton(text, order)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -16, 0, _MenuLayout.h)
    button.Position = UDim2.new(0, 8, 0, _MenuLayout.start + ((order - 1) * _MenuLayout.step))
    button.BackgroundColor3 = Theme.PanelSoft
    button.BackgroundTransparency = 0.08
    button.Text = text
    button.TextColor3 = Theme.Text
    button.TextStrokeTransparency = 1
    button.TextStrokeColor3 = Color3.fromRGB(200, 200, 200)
    button.TextXAlignment = Enum.TextXAlignment.Center
    button.Font = Enum.Font.GothamBold
    button.TextSize = 16
    button.AutoButtonColor = false
    button.Parent = Sidebar
    makeCorner(button, 10)
    makeStroke(button, Theme.Border, 1, 0.15)
    return button
end

local MainMenuBtn = makeMenuButton("القائمة الرئيسية", 1)
local PlayerMenuBtn = makeMenuButton("اللاعب", 2)
local TargetMenuBtn = makeMenuButton("استهداف", 3)
local ImportantMenuBtn = makeMenuButton("مهم", 4)
UsersMenuBtn = nil
local OwnerMenuBtn = nil

local OthersMenuBtn = makeMenuButton("اخرى", 5)
local SettingsMenuBtn = makeMenuButton("⚙️ الإعدادات", 6)

_T18LangY = _MenuLayout.start + 4 * _MenuLayout.step + _MenuLayout.h + 8
_T18ArBtn = nil
_T18EnBtn = nil
_T18LangSelectorBtn = nil



if isOwnerUser then
    OwnerMenuBtn = makeMenuButton("👑 اونر", 7)
end

local Pages = {
    main = MainPage,
    player = PlayerPage,
    target = TargetPage,
    important = ImportantPage,
}

local MenuButtons = {
    main = MainMenuBtn,
    player = PlayerMenuBtn,
    target = TargetMenuBtn,
    important = ImportantMenuBtn,
}



if OwnerPage and OwnerMenuBtn then
    Pages.owner = OwnerPage
    MenuButtons.owner = OwnerMenuBtn
end

Pages.others = OthersPage
MenuButtons.others = OthersMenuBtn
local SettingsPage = makePage("SettingsPage")
makePageTitle(SettingsPage, "الإعدادات", "تخصيص الواجهة")
Pages.settings = SettingsPage
MenuButtons.settings = SettingsMenuBtn




_T18ColorBtn = nil   
do
    
    local _LangSecLabel = Instance.new("TextLabel")
    _LangSecLabel.Size = UDim2.new(1, -24, 0, 18)
    _LangSecLabel.Position = UDim2.new(0, 12, 0, 62)
    _LangSecLabel.BackgroundTransparency = 1
    _LangSecLabel.Text = "● اللغة"
    _LangSecLabel.TextColor3 = Color3.fromRGB(140, 145, 170)
    _LangSecLabel.TextXAlignment = Enum.TextXAlignment.Right
    _LangSecLabel.Font = Enum.Font.GothamBold
    _LangSecLabel.TextSize = 12
    _LangSecLabel.ZIndex = 3
    _LangSecLabel.Parent = SettingsPage

    
    _T18LangSelectorBtn = Instance.new("TextButton")
    _T18LangSelectorBtn.Name = "LangSelectorBtn"
    _T18LangSelectorBtn.Size = UDim2.new(1, -24, 0, 42)
    _T18LangSelectorBtn.Position = UDim2.new(0, 12, 0, 84)
    _T18LangSelectorBtn.BackgroundColor3 = Theme.PanelSoft
    _T18LangSelectorBtn.BackgroundTransparency = 0.05
    _T18LangSelectorBtn.Text = "🌐  اللغة  ▾"
    _T18LangSelectorBtn.TextColor3 = Theme.Text
    _T18LangSelectorBtn.Font = Enum.Font.GothamBold
    _T18LangSelectorBtn.TextSize = 14
    _T18LangSelectorBtn.AutoButtonColor = false
    _T18LangSelectorBtn.ZIndex = 5
    _T18LangSelectorBtn.Parent = SettingsPage
    makeCorner(_T18LangSelectorBtn, 10)
    makeStroke(_T18LangSelectorBtn, Theme.Border, 1, 0.15)

    
    local _LangDropdown = Instance.new("Frame")
    _LangDropdown.Name = "LangDropdown"
    _LangDropdown.Size = UDim2.new(1, -24, 0, 96)
    _LangDropdown.Position = UDim2.new(0, 12, 0, 130)
    _LangDropdown.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
    _LangDropdown.BackgroundTransparency = 0.05
    _LangDropdown.Visible = false
    _LangDropdown.ZIndex = 20
    _LangDropdown.Parent = SettingsPage
    makeCorner(_LangDropdown, 10)
    makeStroke(_LangDropdown, Theme.Border, 1, 0.1)

    
    local _LangDivider = Instance.new("Frame")
    _LangDivider.Size = UDim2.new(1, -20, 0, 1)
    _LangDivider.Position = UDim2.new(0, 10, 0, 48)
    _LangDivider.BackgroundColor3 = Theme.Border
    _LangDivider.BackgroundTransparency = 0.5
    _LangDivider.BorderSizePixel = 0
    _LangDivider.ZIndex = 21
    _LangDivider.Parent = _LangDropdown

    
    _T18ArBtn = Instance.new("TextButton")
    _T18ArBtn.Name = "ArBtn"
    _T18ArBtn.Size = UDim2.new(1, -12, 0, 38)
    _T18ArBtn.Position = UDim2.new(0, 6, 0, 5)
    _T18ArBtn.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    _T18ArBtn.BackgroundTransparency = 0
    _T18ArBtn.BorderSizePixel = 0
    _T18ArBtn.Text = "✔  🇸🇦  العربية"
    _T18ArBtn.TextColor3 = Color3.fromRGB(20, 20, 20)
    _T18ArBtn.Font = Enum.Font.GothamBold
    _T18ArBtn.TextSize = 14
    _T18ArBtn.AutoButtonColor = false
    _T18ArBtn.ZIndex = 21
    _T18ArBtn.Parent = _LangDropdown
    makeCorner(_T18ArBtn, 8)

    
    _T18EnBtn = Instance.new("TextButton")
    _T18EnBtn.Name = "EnBtn"
    _T18EnBtn.Size = UDim2.new(1, -12, 0, 38)
    _T18EnBtn.Position = UDim2.new(0, 6, 0, 53)
    _T18EnBtn.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    _T18EnBtn.BackgroundTransparency = 0
    _T18EnBtn.BorderSizePixel = 0
    _T18EnBtn.Text = "     🇺🇸  English"
    _T18EnBtn.TextColor3 = Color3.fromRGB(160, 160, 160)
    _T18EnBtn.Font = Enum.Font.GothamBold
    _T18EnBtn.TextSize = 14
    _T18EnBtn.AutoButtonColor = false
    _T18EnBtn.ZIndex = 21
    _T18EnBtn.Parent = _LangDropdown
    makeCorner(_T18EnBtn, 8)

    
    _T18LangSelectorBtn.MouseButton1Click:Connect(function()
        local _opening = not _LangDropdown.Visible
        _LangDropdown.Visible = _opening
        if _T18ColorBtn then
            local _targetY = _opening and 258 or 158
            TweenService:Create(
                _T18ColorBtn,
                TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                { Position = UDim2.new(0, 12, 0, _targetY) }
            ):Play()
        end
    end)
end




_T18ColorTheme      = "default"   
_T18ColorDefaultBtn = nil         
_T18ColorPinkBtn    = nil         
_T18ColorSecLabel   = nil         

do
    _T18ColorSecLabel = Instance.new("TextLabel")
    _T18ColorSecLabel.Size = UDim2.new(1, -24, 0, 18)
    _T18ColorSecLabel.Position = UDim2.new(0, 12, 0, 136)
    _T18ColorSecLabel.BackgroundTransparency = 1
    _T18ColorSecLabel.Text = "● اللون"
    _T18ColorSecLabel.TextColor3 = Color3.fromRGB(140, 145, 170)
    _T18ColorSecLabel.TextXAlignment = Enum.TextXAlignment.Right
    _T18ColorSecLabel.Font = Enum.Font.GothamBold
    _T18ColorSecLabel.TextSize = 12
    _T18ColorSecLabel.ZIndex = 3
    _T18ColorSecLabel.Parent = SettingsPage

    _T18ColorBtn = Instance.new("TextButton")
    _T18ColorBtn.Name = "ColorSelectorBtn"
    _T18ColorBtn.Size = UDim2.new(1, -24, 0, 42)
    _T18ColorBtn.Position = UDim2.new(0, 12, 0, 158)
    _T18ColorBtn.BackgroundColor3 = Theme.PanelSoft
    _T18ColorBtn.BackgroundTransparency = 0.05
    _T18ColorBtn.Text = "🎨  اللون  ▾"
    _T18ColorBtn.TextColor3 = Theme.Text
    _T18ColorBtn.Font = Enum.Font.GothamBold
    _T18ColorBtn.TextSize = 14
    _T18ColorBtn.AutoButtonColor = false
    _T18ColorBtn.ZIndex = 5
    _T18ColorBtn.Parent = SettingsPage
    makeCorner(_T18ColorBtn, 10)
    makeStroke(_T18ColorBtn, Theme.Border, 1, 0.15)
    
    _T18ColorBtn.Interactable = false
    _T18ColorBtn.TextColor3 = Color3.fromRGB(70, 70, 80)
    _T18ColorBtn.BackgroundTransparency = 0.55
    local _ColorSoon = Instance.new("TextLabel", _T18ColorBtn)
    _ColorSoon.Size = UDim2.new(0, 52, 0, 20)
    _ColorSoon.Position = UDim2.new(0, 8, 0.5, -10)
    _ColorSoon.BackgroundColor3 = Color3.fromRGB(180, 100, 0)
    _ColorSoon.BackgroundTransparency = 0
    _ColorSoon.Text = "قريباً"
    _ColorSoon.TextColor3 = Color3.fromRGB(255, 255, 255)
    _ColorSoon.Font = Enum.Font.GothamBold
    _ColorSoon.TextSize = 11
    _ColorSoon.BorderSizePixel = 0
    _ColorSoon.ZIndex = 200
    makeCorner(_ColorSoon, 6)

    
    local _ColorDropdown = Instance.new("Frame")
    _ColorDropdown.Name = "ColorDropdown"
    _ColorDropdown.Size = UDim2.new(1, -24, 0, 96)
    _ColorDropdown.Position = UDim2.new(0, 12, 0, 208)
    _ColorDropdown.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
    _ColorDropdown.BackgroundTransparency = 0.05
    _ColorDropdown.Visible = false
    _ColorDropdown.ZIndex = 20
    _ColorDropdown.Parent = SettingsPage
    makeCorner(_ColorDropdown, 10)
    makeStroke(_ColorDropdown, Theme.Border, 1, 0.1)

    
    local _ColorDiv = Instance.new("Frame")
    _ColorDiv.Size = UDim2.new(1, -20, 0, 1)
    _ColorDiv.Position = UDim2.new(0, 10, 0, 48)
    _ColorDiv.BackgroundColor3 = Theme.Border
    _ColorDiv.BackgroundTransparency = 0.5
    _ColorDiv.BorderSizePixel = 0
    _ColorDiv.ZIndex = 21
    _ColorDiv.Parent = _ColorDropdown

    
    _T18ColorDefaultBtn = Instance.new("TextButton")
    _T18ColorDefaultBtn.Name = "DefaultBtn"
    _T18ColorDefaultBtn.Size = UDim2.new(1, -12, 0, 38)
    _T18ColorDefaultBtn.Position = UDim2.new(0, 6, 0, 5)
    _T18ColorDefaultBtn.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    _T18ColorDefaultBtn.BackgroundTransparency = 0
    _T18ColorDefaultBtn.BorderSizePixel = 0
    _T18ColorDefaultBtn.Text = "✔  ⚫  Default"
    _T18ColorDefaultBtn.TextColor3 = Color3.fromRGB(20, 20, 20)
    _T18ColorDefaultBtn.Font = Enum.Font.GothamBold
    _T18ColorDefaultBtn.TextSize = 14
    _T18ColorDefaultBtn.AutoButtonColor = false
    _T18ColorDefaultBtn.ZIndex = 21
    _T18ColorDefaultBtn.Parent = _ColorDropdown
    makeCorner(_T18ColorDefaultBtn, 8)

    
    _T18ColorPinkBtn = Instance.new("TextButton")
    _T18ColorPinkBtn.Name = "PinkBtn"
    _T18ColorPinkBtn.Size = UDim2.new(1, -12, 0, 38)
    _T18ColorPinkBtn.Position = UDim2.new(0, 6, 0, 53)
    _T18ColorPinkBtn.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    _T18ColorPinkBtn.BackgroundTransparency = 0
    _T18ColorPinkBtn.BorderSizePixel = 0
    _T18ColorPinkBtn.Text = "     🌸  Pink"
    _T18ColorPinkBtn.TextColor3 = Color3.fromRGB(160, 160, 160)
    _T18ColorPinkBtn.Font = Enum.Font.GothamBold
    _T18ColorPinkBtn.TextSize = 14
    _T18ColorPinkBtn.AutoButtonColor = false
    _T18ColorPinkBtn.ZIndex = 21
    _T18ColorPinkBtn.Parent = _ColorDropdown
    makeCorner(_T18ColorPinkBtn, 8)

    
    local function _markColorActive(theme)
        local isDefault = (theme == "default")
        _T18ColorDefaultBtn.BackgroundColor3 = isDefault and Color3.fromRGB(220, 220, 220) or Color3.fromRGB(28, 28, 28)
        _T18ColorDefaultBtn.TextColor3       = isDefault and Color3.fromRGB(20, 20, 20)   or Color3.fromRGB(160, 160, 160)
        _T18ColorDefaultBtn.Text             = (isDefault and "✔  " or "     ") .. "⚫  Default"
        _T18ColorPinkBtn.BackgroundColor3    = (not isDefault) and Color3.fromRGB(220, 220, 220) or Color3.fromRGB(28, 28, 28)
        _T18ColorPinkBtn.TextColor3          = (not isDefault) and Color3.fromRGB(20, 20, 20)   or Color3.fromRGB(160, 160, 160)
        _T18ColorPinkBtn.Text               = ((not isDefault) and "✔  " or "     ") .. "🌸  Pink"
        _T18ColorTheme = theme
    end

    
    _T18ColorBtn.MouseButton1Click:Connect(function()
        _ColorDropdown.Visible = not _ColorDropdown.Visible
    end)

    
    _T18ColorDefaultBtn.MouseButton1Click:Connect(function()
        if _T18ColorTheme == "default" then _ColorDropdown.Visible = false; return end
        _markColorActive("default")
        pcall(function()
            local fg = Frame:FindFirstChildOfClass("UIGradient")
            if fg then fg.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0,    Color3.fromRGB(12,15,35)),
                ColorSequenceKeypoint.new(0.55, Color3.fromRGB(9,12,28)),
                ColorSequenceKeypoint.new(1,    Color3.fromRGB(2,2,2)),
            }) end
            Frame.BackgroundColor3 = Theme.Panel
            Header.BackgroundColor3 = Theme.Header
            local hg = Header:FindFirstChildOfClass("UIGradient")
            if hg then hg.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(6,6,6)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(8,10,24)),
            }) end
            if Sidebar    then Sidebar.BackgroundColor3    = Theme.Panel     end
            if SidebarHost then SidebarHost.BackgroundColor3 = Theme.PanelSoft end
            if ContentPanel then ContentPanel.BackgroundColor3 = Theme.PanelSoft end
            if PagesHost  then PagesHost.BackgroundColor3  = Theme.PanelSoft end
            for _, v in ipairs(Sidebar:GetDescendants()) do
                if v:IsA("TextButton") then v.BackgroundColor3 = Theme.PanelSoft end
            end
            for _, page in pairs(Pages) do
                for _, v in ipairs(page:GetDescendants()) do
                    if v:IsA("TextButton") and v.AutoButtonColor == false then
                        v.BackgroundColor3 = Theme.ButtonBlue
                    end
                end
            end
            for _, v in ipairs(OthersPage:GetDescendants()) do
                if v:IsA("TextButton") and v.AutoButtonColor == false then
                    v.BackgroundColor3 = Theme.ButtonBlue
                end
            end
            for _, v in ipairs(SettingsPage:GetDescendants()) do
                if v:IsA("TextButton") and v.AutoButtonColor == false then
                    v.BackgroundColor3 = Theme.PanelSoft
                end
            end
            if ToggleBtn then
                ToggleBtn.BackgroundColor3 = Theme.PanelSoft
                local tg = ToggleBtn:FindFirstChildOfClass("UIGradient")
                if tg then tg.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(14,14,14)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(6,6,6)),
                }) end
            end
            if ChatBubbleBtn then ChatBubbleBtn.BackgroundColor3 = Theme.PanelSoft end
        end)
        _ColorDropdown.Visible = false
    end)

    
    _T18ColorPinkBtn.MouseButton1Click:Connect(function()
        if _T18ColorTheme == "pink" then _ColorDropdown.Visible = false; return end
        _markColorActive("pink")
        pcall(function()
            
            local P_bg    = Color3.fromRGB(255,188,225)  
            local P_panel = Color3.fromRGB(255,175,220)  
            local P_btn   = Color3.fromRGB(255,190,228)  

            local function pinkGrad(inst, c0, c1, rot)
                local g = inst:FindFirstChildOfClass("UIGradient")
                if not g then g = Instance.new("UIGradient"); g.Parent = inst end
                g.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, c0),
                    ColorSequenceKeypoint.new(1, c1),
                })
                if rot then g.Rotation = rot end
                g.Enabled = true
            end

            
            Frame.BackgroundColor3 = P_bg
            Frame.BackgroundTransparency = 0
            pinkGrad(Frame,
                Color3.fromRGB(255,225,240),
                Color3.fromRGB(255,150,205), 135)

            
            Header.BackgroundColor3 = P_panel
            Header.BackgroundTransparency = 0
            pinkGrad(Header,
                Color3.fromRGB(255,185,228),
                Color3.fromRGB(255,155,210), 15)

            
            for _, v in ipairs(Frame:GetDescendants()) do
                if v:IsA("TextButton") and v.AutoButtonColor == false then
                    
                    local c = v.BackgroundColor3
                    if c.R < 0.85 or c.G < 0.55 then
                        v.BackgroundColor3 = P_btn
                        v.BackgroundTransparency = 0
                    end
                elseif v:IsA("Frame") and not v:IsA("TextButton") then
                    
                    local c = v.BackgroundColor3
                    local dark = (c.R + c.G + c.B) < 0.9
                    if dark and v.BackgroundTransparency < 0.92 then
                        v.BackgroundColor3 = P_panel
                        v.BackgroundTransparency = math.min(v.BackgroundTransparency, 0.12)
                        local g = v:FindFirstChildOfClass("UIGradient")
                        if g then
                            g.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, Color3.fromRGB(255,205,238)),
                                ColorSequenceKeypoint.new(1, Color3.fromRGB(255,160,215)),
                            })
                            g.Enabled = true
                        end
                    end
                end
            end

            
            if ToggleBtn then
                ToggleBtn.BackgroundColor3 = P_btn
                ToggleBtn.BackgroundTransparency = 0
                pinkGrad(ToggleBtn,
                    Color3.fromRGB(255,200,235),
                    Color3.fromRGB(255,160,215), 45)
            end
            
            if ChatBubbleBtn then
                ChatBubbleBtn.BackgroundColor3 = P_btn
                ChatBubbleBtn.BackgroundTransparency = 0
            end
        end)
        _ColorDropdown.Visible = false
    end)
end




do
    local _SzSecLbl = Instance.new("TextLabel")
    _SzSecLbl.Size = UDim2.new(1,-24,0,18)
    _SzSecLbl.Position = UDim2.new(0,12,0,214)
    _SzSecLbl.BackgroundTransparency = 1
    _SzSecLbl.Text = "● الحجم"
    _SzSecLbl.TextColor3 = Color3.fromRGB(140,145,170)
    _SzSecLbl.TextXAlignment = Enum.TextXAlignment.Right
    _SzSecLbl.Font = Enum.Font.GothamBold
    _SzSecLbl.TextSize = 12
    _SzSecLbl.ZIndex = 3
    _SzSecLbl.Parent = SettingsPage

    local _SzBtn = Instance.new("TextButton")
    _SzBtn.Name = "SizeSelectorBtn"
    _SzBtn.Size = UDim2.new(1,-24,0,42)
    _SzBtn.Position = UDim2.new(0,12,0,234)
    _SzBtn.BackgroundColor3 = Theme.PanelSoft
    _SzBtn.BackgroundTransparency = 0.05
    _SzBtn.Text = "📐  الحجم  ▾"
    _SzBtn.TextColor3 = Theme.Text
    _SzBtn.Font = Enum.Font.GothamBold
    _SzBtn.TextSize = 14
    _SzBtn.AutoButtonColor = false
    _SzBtn.ZIndex = 5
    _SzBtn.Parent = SettingsPage
    makeCorner(_SzBtn, 10)
    makeStroke(_SzBtn, Theme.Border, 1, 0.15)
    
    _SzBtn.Interactable = false
    _SzBtn.TextColor3 = Color3.fromRGB(70, 70, 80)
    _SzBtn.BackgroundTransparency = 0.55
    local _SzSoon = Instance.new("TextLabel", _SzBtn)
    _SzSoon.Size = UDim2.new(0, 52, 0, 20)
    _SzSoon.Position = UDim2.new(0, 8, 0.5, -10)
    _SzSoon.BackgroundColor3 = Color3.fromRGB(180, 100, 0)
    _SzSoon.BackgroundTransparency = 0
    _SzSoon.Text = "قريباً"
    _SzSoon.TextColor3 = Color3.fromRGB(255, 255, 255)
    _SzSoon.Font = Enum.Font.GothamBold
    _SzSoon.TextSize = 11
    _SzSoon.BorderSizePixel = 0
    _SzSoon.ZIndex = 200
    makeCorner(_SzSoon, 6)

    local _SzDrop = Instance.new("Frame")
    _SzDrop.Name = "SizeDropdown"
    _SzDrop.Size = UDim2.new(1,-24,0,242)
    _SzDrop.Position = UDim2.new(0,12,0,282)
    _SzDrop.BackgroundColor3 = Color3.fromRGB(18,18,22)
    _SzDrop.BackgroundTransparency = 0.05
    _SzDrop.Visible = false
    _SzDrop.ZIndex = 20
    _SzDrop.Parent = SettingsPage
    makeCorner(_SzDrop, 10)
    makeStroke(_SzDrop, Theme.Border, 1, 0.1)

    local _szOpts = {
        {t="✔  افتراضي",  w=610, h=500},
        {t="   كبير جداً", w=750, h=600},
        {t="   كبير",      w=680, h=550},
        {t="   متوسط",    w=550, h=450},
        {t="   صغير",     w=480, h=390},
    }
    local _szIdx = 1
    local _szBtns = {}
    for i, opt in ipairs(_szOpts) do
        local sb = Instance.new("TextButton")
        sb.Size = UDim2.new(1,-12,0,38)
        sb.Position = UDim2.new(0,6,0,(i-1)*47+5)
        sb.BackgroundColor3 = (i==1) and Color3.fromRGB(220,220,220) or Color3.fromRGB(28,28,28)
        sb.TextColor3 = (i==1) and Color3.fromRGB(20,20,20) or Color3.fromRGB(160,160,160)
        sb.BorderSizePixel = 0
        sb.Text = opt.t
        sb.Font = Enum.Font.GothamBold
        sb.TextSize = 14
        sb.AutoButtonColor = false
        sb.ZIndex = 21
        sb.Parent = _SzDrop
        makeCorner(sb, 8)
        _szBtns[i] = sb
        sb.MouseButton1Click:Connect(function()
            if _szIdx == i then _SzDrop.Visible = false; return end
            _szIdx = i
            for j, b2 in ipairs(_szBtns) do
                local sel = (j==i)
                b2.BackgroundColor3 = sel and Color3.fromRGB(220,220,220) or Color3.fromRGB(28,28,28)
                b2.TextColor3 = sel and Color3.fromRGB(20,20,20) or Color3.fromRGB(160,160,160)
                local raw = _szOpts[j].t:gsub("^[✔%s]+","")
                b2.Text = (sel and "✔  " or "   ") .. raw
            end
            baseFrameSize = Vector2.new(opt.w, opt.h)
            Frame.Size = UDim2.new(0, opt.w, 0, opt.h)
            pcall(updateResponsiveLayout)
            _SzDrop.Visible = false
        end)
    end
    _SzBtn.MouseButton1Click:Connect(function()
        _SzDrop.Visible = not _SzDrop.Visible
    end)
end


do
    local SettingsScroll = Instance.new("ScrollingFrame")
    SettingsScroll.Size = UDim2.new(1,0,1,0)
    SettingsScroll.BackgroundTransparency = 1
    SettingsScroll.BorderSizePixel = 0
    SettingsScroll.ScrollBarThickness = isTouchDevice and 3 or 4
    SettingsScroll.ScrollBarImageColor3 = Theme.Active
    SettingsScroll.CanvasSize = UDim2.new(0,0,0,540)
    SettingsScroll.ScrollingDirection = Enum.ScrollingDirection.Y
    SettingsScroll.ElasticBehavior = Enum.ElasticBehavior.Always
    SettingsScroll.Parent = SettingsPage
    for _, child in ipairs(SettingsPage:GetChildren()) do
        if child ~= SettingsScroll then child.Parent = SettingsScroll end
    end
end

local function setMenuState(activeKey)
    for key, page in pairs(Pages) do
        page.Visible = key == activeKey
    end

    for key, button in pairs(MenuButtons) do
        if key == activeKey then
            button.BackgroundColor3 = Theme.Active
        else
            button.BackgroundColor3 = Theme.PanelSoft
        end
    end
end

MainMenuBtn.MouseButton1Click:Connect(function()
    setMenuState("main")
end)

PlayerMenuBtn.MouseButton1Click:Connect(function()
    setMenuState("player")
end)

TargetMenuBtn.MouseButton1Click:Connect(function()
    setMenuState("target")
end)

ImportantMenuBtn.MouseButton1Click:Connect(function()
    setMenuState("important")
end)

if OwnerMenuBtn then
    OwnerMenuBtn.MouseButton1Click:Connect(function()
        setMenuState("owner")
    end)
end

OthersMenuBtn.MouseButton1Click:Connect(function()
    setMenuState("others")
end)
SettingsMenuBtn.MouseButton1Click:Connect(function()
    setMenuState("settings")
end)

setMenuState("main")

do
    local Footer = Instance.new("TextLabel")
    Footer.Size = UDim2.new(1, -32, 0, 18)
Footer.Position = UDim2.new(0, 16, 1, -24)
Footer.BackgroundTransparency = 1
Footer.Text = "© All rights reserved t_18"
Footer.TextColor3 = Color3.fromRGB(100, 116, 139)
Footer.TextXAlignment = Enum.TextXAlignment.Left
Footer.Font = Enum.Font.Gotham
Footer.TextSize = 13
Footer.Parent = Frame
end

ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "Toggle"
ToggleBtn.AnchorPoint = Vector2.new(0, 0)
ToggleBtn.Size = UDim2.new(0, 54, 0, 54)
ToggleBtn.Position = UDim2.new(0, 16, 0.5, -58)
ToggleBtn.BackgroundColor3 = Theme.PanelSoft
ToggleBtn.Text = ""
ToggleBtn.AutoButtonColor = false
ToggleBtn.ZIndex = 20
ToggleBtn.Parent = ScreenGui
makeCorner(ToggleBtn, 999)
makeStroke(ToggleBtn, Theme.Border, 1, 0.15)
UiFx.makeGradient(ToggleBtn, {
    ColorSequenceKeypoint.new(0, Color3.fromRGB(14, 14, 14)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 6, 6)),
}, 45)

local ToggleImg = Instance.new("ImageLabel")
ToggleImg.Size = UDim2.new(1, -22, 1, -22)
ToggleImg.Position = UDim2.new(0, 11, 0, 11)
ToggleImg.BackgroundTransparency = 1
ToggleImg.Image = "rbxassetid://121790147873719"
ToggleImg.ScaleType = Enum.ScaleType.Fit
ToggleImg.ZIndex = 21
ToggleImg.Parent = ToggleBtn

local function makeFlyTouchButton(name, text, position)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = UDim2.new(0, 52, 0, 38)
    button.Position = position
    button.BackgroundColor3 = Theme.ButtonDefault
    button.BackgroundTransparency = 0.08
    button.Text = text
    button.TextColor3 = Theme.Text
    button.TextStrokeTransparency = 1
    button.TextStrokeColor3 = Color3.fromRGB(200, 200, 200)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 16
    button.AutoButtonColor = false
    button.Parent = FlyTouchFrame
    makeCorner(button, 10)
    makeStroke(button, Theme.Border, 1, 0.08)
    return button
end

local function bindFlyTouchButton(button, inputName)
    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch
            or input.UserInputType == Enum.UserInputType.MouseButton1 then
            mobileFlyInput[inputName] = true
        end
    end)

    button.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch
            or input.UserInputType == Enum.UserInputType.MouseButton1 then
            mobileFlyInput[inputName] = false
        end
    end)
end

FlyTouchFrame = Instance.new("Frame")
FlyTouchFrame.Name = "FlyTouchControls"
FlyTouchFrame.AnchorPoint = Vector2.new(1, 1)
FlyTouchFrame.Size = UDim2.new(0, 184, 0, 150)
FlyTouchFrame.Position = UDim2.new(1, -14, 1, -14)
FlyTouchFrame.BackgroundColor3 = Theme.Panel
FlyTouchFrame.BackgroundTransparency = 0.08
FlyTouchFrame.BorderSizePixel = 0
FlyTouchFrame.Visible = false
FlyTouchFrame.Parent = ScreenGui
makeCorner(FlyTouchFrame, 16)
makeStroke(FlyTouchFrame, Theme.Border, 1, 0.15)
makeShadow(FlyTouchFrame)
UiFx.makeGradient(FlyTouchFrame, {
    ColorSequenceKeypoint.new(0, Color3.fromRGB(6, 6, 6)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 10, 24)),
}, 90)
UiFx.makeStarField(FlyTouchFrame, 8)

local FlyTouchTitle = Instance.new("TextLabel")
FlyTouchTitle.Size = UDim2.new(1, 0, 0, 24)
FlyTouchTitle.Position = UDim2.new(0, 0, 0, 4)
FlyTouchTitle.BackgroundTransparency = 1
FlyTouchTitle.Text = "تحكم الطيران"
FlyTouchTitle.TextColor3 = Theme.Text
FlyTouchTitle.Font = Enum.Font.GothamBold
FlyTouchTitle.TextSize = 14
FlyTouchTitle.Parent = FlyTouchFrame

local TouchUpBtn = makeFlyTouchButton("TouchUpBtn", "↑", UDim2.new(0, 10, 0, 32))
local TouchForwardBtn = makeFlyTouchButton("TouchForwardBtn", "أمام", UDim2.new(0, 66, 0, 32))
local TouchDownBtn = makeFlyTouchButton("TouchDownBtn", "↓", UDim2.new(0, 122, 0, 32))
local TouchLeftBtn = makeFlyTouchButton("TouchLeftBtn", "←", UDim2.new(0, 10, 0, 82))
local TouchBackBtn = makeFlyTouchButton("TouchBackBtn", "خلف", UDim2.new(0, 66, 0, 82))
local TouchRightBtn = makeFlyTouchButton("TouchRightBtn", "→", UDim2.new(0, 122, 0, 82))

bindFlyTouchButton(TouchUpBtn, "Up")
bindFlyTouchButton(TouchDownBtn, "Down")
bindFlyTouchButton(TouchForwardBtn, "Forward")
bindFlyTouchButton(TouchBackBtn, "Backward")
bindFlyTouchButton(TouchLeftBtn, "Left")
bindFlyTouchButton(TouchRightBtn, "Right")

local tDrag = {dragging=false, start=nil, startPos=nil}

ToggleBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        tDrag.dragging = true
        tDrag.start = input.Position
        tDrag.startPos = ToggleBtn.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                tDrag.dragging = false
            end
        end)
    end
end)

ToggleBtn.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible
end)


ChatBubbleBtn = Instance.new("TextButton")
ChatBubbleBtn.Name = "ChatBubble"
ChatBubbleBtn.AnchorPoint = Vector2.new(0, 0)
ChatBubbleBtn.Size = UDim2.new(0, 54, 0, 54)
ChatBubbleBtn.Position = UDim2.new(0, 16, 0.5, 4)
ChatBubbleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ChatBubbleBtn.BackgroundTransparency = 0.4
ChatBubbleBtn.Text = "💬"
ChatBubbleBtn.TextColor3 = Theme.Text
ChatBubbleBtn.TextSize = 22
ChatBubbleBtn.Font = Enum.Font.GothamBold
ChatBubbleBtn.AutoButtonColor = false
ChatBubbleBtn.ZIndex = 20
ChatBubbleBtn.Parent = ScreenGui
makeCorner(ChatBubbleBtn, 999)
UiFx.attachButtonTextOverlay(
    ChatBubbleBtn,
    28,
    Enum.Font.GothamBold,
    Color3.fromRGB(255, 255, 255),
    Color3.fromRGB(200, 200, 200),
    1
)

local cDrag = {dragging=false, start=nil, startPos=nil, moved=false}

ChatBubbleBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        cDrag.dragging = true
        cDrag.moved = false
        cDrag.start = input.Position
        cDrag.startPos = ChatBubbleBtn.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                cDrag.dragging = false
            end
        end)
    end
end)

ChatBubbleBtn.MouseButton1Click:Connect(function()
    if cDrag.moved then return end
    local opening = not ChatPanel.Visible
    if opening then
        ChatBubbleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        ChatBubbleBtn.Text = "✖"
        ChatPanel.Visible = true
        ChatPanel.Size = UDim2.new(1, -90, 0, 0)
        local _tgtSize = UDim2.new(1, -90, 0, 420)
        game:GetService("TweenService"):Create(ChatPanel,
            TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            { Size = _tgtSize }):Play()
        _resetChatBadge()
        task.defer(function()
            ChatList.CanvasPosition = Vector2.new(0, ChatList.AbsoluteCanvasSize.Y)
        end)
    else
        ChatBubbleBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        ChatBubbleBtn.Text = "💬"
        local _tween = game:GetService("TweenService"):Create(ChatPanel,
            TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            { Size = UDim2.new(1, -90, 0, 0) })
        _tween:Play()
        _tween.Completed:Connect(function()
            ChatPanel.Visible = false
            ChatPanel.Size = UDim2.new(1, -90, 0, 420)
        end)
    end
end)



local _chatUnreadCount = 0

local _chatBadge = Instance.new("Frame")
_chatBadge.Name = "ChatBadge"
_chatBadge.Size = UDim2.new(0, 20, 0, 20)
_chatBadge.AnchorPoint = Vector2.new(1, 0)
_chatBadge.Position = UDim2.new(1, 6, 0, -6)
_chatBadge.BackgroundColor3 = Color3.fromRGB(220, 38, 38)
_chatBadge.BorderSizePixel = 0
_chatBadge.ZIndex = 25
_chatBadge.Visible = false
_chatBadge.Parent = ChatBubbleBtn
makeCorner(_chatBadge, 999)

local _chatBadgeLbl = Instance.new("TextLabel")
_chatBadgeLbl.Size = UDim2.new(1, 0, 1, 0)
_chatBadgeLbl.BackgroundTransparency = 1
_chatBadgeLbl.Text = "0"
_chatBadgeLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
_chatBadgeLbl.Font = Enum.Font.GothamBold
_chatBadgeLbl.TextSize = 11
_chatBadgeLbl.ZIndex = 26
_chatBadgeLbl.Parent = _chatBadge

local _chatNotifSound = Instance.new("Sound")
_chatNotifSound.SoundId = "rbxassetid://9118824422"
_chatNotifSound.Volume = 0.55
_chatNotifSound.Parent = LocalPlayer:WaitForChild("PlayerGui")

local function _updateChatBadge()
    if _chatUnreadCount > 0 then
        local display = _chatUnreadCount > 99 and "99+" or tostring(_chatUnreadCount)
        _chatBadgeLbl.Text = display
        if _chatUnreadCount >= 10 then
            _chatBadge.Size = UDim2.new(0, 26, 0, 20)
        else
            _chatBadge.Size = UDim2.new(0, 20, 0, 20)
        end
        _chatBadge.Visible = true
    else
        _chatBadge.Visible = false
    end
end

function _incrementChatBadge()
    if not ChatPanel.Visible then
        _chatUnreadCount = _chatUnreadCount + 1
        _updateChatBadge()
        pcall(function() _chatNotifSound:Play() end)
    end
end

function _resetChatBadge()
    _chatUnreadCount = 0
    _updateChatBadge()
end


local fDrag = {active=false, start=nil, startPos=nil}

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        fDrag.active = true
        fDrag.start = input.Position
        fDrag.startPos = Frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                fDrag.active = false
            end
        end)
    end
end)


local function clampToScreen(button, scaleX, scaleY, offsetX, offsetY)
    local screenSize = ScreenGui.AbsoluteSize
    local btnSize = button.AbsoluteSize
    if screenSize.X <= 0 or screenSize.Y <= 0 then
        return UDim2.new(scaleX, offsetX, scaleY, offsetY)
    end
    local absX = scaleX * screenSize.X + offsetX
    local absY = scaleY * screenSize.Y + offsetY
    local maxX = math.max(0, screenSize.X - btnSize.X)
    local maxY = math.max(0, screenSize.Y - btnSize.Y)
    absX = math.clamp(absX, 0, maxX)
    absY = math.clamp(absY, 0, maxY)
    return UDim2.new(scaleX, absX - scaleX * screenSize.X, scaleY, absY - scaleY * screenSize.Y)
end

UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then
        if fDrag.active then
            local delta = input.Position - fDrag.start
            Frame.Position = UDim2.new(
                fDrag.startPos.X.Scale,
                fDrag.startPos.X.Offset + delta.X,
                fDrag.startPos.Y.Scale,
                fDrag.startPos.Y.Offset + delta.Y
            )
        end
        if tDrag.dragging then
            local delta = input.Position - tDrag.start
            ToggleBtn.Position = clampToScreen(
                ToggleBtn,
                tDrag.startPos.X.Scale,
                tDrag.startPos.Y.Scale,
                tDrag.startPos.X.Offset + delta.X,
                tDrag.startPos.Y.Offset + delta.Y
            )
        end
        if cDrag.dragging then
            local delta = input.Position - cDrag.start
            if math.abs(delta.X) > 4 or math.abs(delta.Y) > 4 then
                cDrag.moved = true
            end
            ChatBubbleBtn.Position = clampToScreen(
                ChatBubbleBtn,
                cDrag.startPos.X.Scale,
                cDrag.startPos.Y.Scale,
                cDrag.startPos.X.Offset + delta.X,
                cDrag.startPos.Y.Offset + delta.Y
            )
        end
    end
end)


local function ensureButtonsInBounds()
    if ToggleBtn then
        ToggleBtn.Position = clampToScreen(
            ToggleBtn,
            ToggleBtn.Position.X.Scale,
            ToggleBtn.Position.Y.Scale,
            ToggleBtn.Position.X.Offset,
            ToggleBtn.Position.Y.Offset
        )
    end
    if ChatBubbleBtn then
        ChatBubbleBtn.Position = clampToScreen(
            ChatBubbleBtn,
            ChatBubbleBtn.Position.X.Scale,
            ChatBubbleBtn.Position.Y.Scale,
            ChatBubbleBtn.Position.X.Offset,
            ChatBubbleBtn.Position.Y.Offset
        )
    end
end

ScreenGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(ensureButtonsInBounds)
task.defer(ensureButtonsInBounds)

local function setButtonState(button, enabled, onText, offText, onColor, offColor)
    if enabled then
        button.BackgroundColor3 = onColor or Theme.Active
        button.Text = onText
    else
        button.BackgroundColor3 = offColor or Theme.PanelSoft
        button.Text = offText
    end
end

WalkSpeedBtn.MouseButton1Click:Connect(function()
    SpeedActive = not SpeedActive
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChild("Humanoid")
    local newSpeed = tonumber(WalkSpeedInput.Text) or 16
    savedWalkSpeedValue.Value = tostring(newSpeed)

    if SpeedActive then
        setButtonState(WalkSpeedBtn, true, T18T("السرعة مفعلة"), T18T("سرعة اللاعب"), Theme.Active, Theme.PanelSoft)
        if hum then
            hum.WalkSpeed = newSpeed
        end
    else
        setButtonState(WalkSpeedBtn, false, T18T("السرعة مفعلة"), T18T("سرعة اللاعب"), Theme.Active, Theme.PanelSoft)
        if hum then
            hum.WalkSpeed = 16
        end
    end
end)

ZombieWalkBtn.MouseButton1Click:Connect(function()
    _G._ZWA = not _G._ZWA
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if _G._ZWA then

        local animS = char and char:FindFirstChild("Animate")
        if animS then
            _G._ZOrig = {}
            local folders = {
                {"idle",  "Animation1", "rbxassetid://616158929"},
                {"idle",  "Animation2", "rbxassetid://616158929"},
                {"walk",  "WalkAnim",   "rbxassetid://616163682"},
                {"run",   "RunAnim",    "rbxassetid://616163682"},
                {"jump",  "JumpAnim",   "rbxassetid://616161997"},
                {"fall",  "FallAnim",   "rbxassetid://616157476"},
                {"climb", "ClimbAnim",  "rbxassetid://616163682"},
            }
            for _, v in ipairs(folders) do
                local f = animS:FindFirstChild(v[1])
                local a = f and f:FindFirstChild(v[2])
                if a and a:IsA("Animation") then
                    _G._ZOrig[v[1]..v[2]] = a.AnimationId
                    a.AnimationId = v[3]
                end
            end

            animS.Disabled = true
        end
        if hum then
            local function loadZA(id)
                local a = Instance.new("Animation")
                a.AnimationId = id
                local t = hum:LoadAnimation(a)
                t.Priority = Enum.AnimationPriority.Action3
                t.Looped = true
                return t
            end
            _G._ZIdleTrack = loadZA("rbxassetid://616158929")
            _G._ZWalkTrack = loadZA("rbxassetid://616163682")
            _G._ZIdleTrack:Play(0.1)

            if _G._ZMoveConn then _G._ZMoveConn:Disconnect() end
            _G._ZMoveConn = RunService.Heartbeat:Connect(function()
                if not _G._ZWA then
                    _G._ZMoveConn:Disconnect()
                    _G._ZMoveConn = nil
                    return
                end
                local c2 = LocalPlayer.Character
                local h2 = c2 and c2:FindFirstChildOfClass("Humanoid")
                if not h2 then return end
                local moving = h2.MoveDirection.Magnitude > 0.05
                if moving then
                    if _G._ZIdleTrack and _G._ZIdleTrack.IsPlaying then _G._ZIdleTrack:Stop(0.1) end
                    if _G._ZWalkTrack and not _G._ZWalkTrack.IsPlaying then _G._ZWalkTrack:Play(0.1) end
                else
                    if _G._ZWalkTrack and _G._ZWalkTrack.IsPlaying then _G._ZWalkTrack:Stop(0.1) end
                    if _G._ZIdleTrack and not _G._ZIdleTrack.IsPlaying then _G._ZIdleTrack:Play(0.1) end
                end
            end)
        end
    else

        if _G._ZMoveConn then _G._ZMoveConn:Disconnect(); _G._ZMoveConn = nil end
        if _G._ZIdleTrack then pcall(function() _G._ZIdleTrack:Stop() end); _G._ZIdleTrack = nil end
        if _G._ZWalkTrack then pcall(function() _G._ZWalkTrack:Stop() end); _G._ZWalkTrack = nil end

        local animS = char and char:FindFirstChild("Animate")
        if animS and _G._ZOrig then
            local folders = {
                {"idle",  "Animation1"},
                {"idle",  "Animation2"},
                {"walk",  "WalkAnim"},
                {"run",   "RunAnim"},
                {"jump",  "JumpAnim"},
                {"fall",  "FallAnim"},
                {"climb", "ClimbAnim"},
            }
            for _, v in ipairs(folders) do
                local f = animS:FindFirstChild(v[1])
                local a = f and f:FindFirstChild(v[2])
                local orig = _G._ZOrig[v[1]..v[2]]
                if a and a:IsA("Animation") and orig then
                    a.AnimationId = orig
                end
            end
            animS.Disabled = false
        end
        _G._ZOrig = nil
    end
    setButtonState(ZombieWalkBtn, _G._ZWA, T18T("إيقاف مشية زومبي"), T18T("مشية زومبي"), Theme.Active, Theme.ButtonGreen)
end)

_G._HLBtn.MouseButton1Click:Connect(function()
    _G._HLA = not _G._HLA
    if _G._HLA then

        pcall(function()
            local char     = LocalPlayer.Character
            local animator = char and char:FindFirstChildOfClass("Humanoid") and
                             char:FindFirstChildOfClass("Humanoid"):FindFirstChildOfClass("Animator")
            if not animator then return end
            if _G._HLTrack then pcall(function() _G._HLTrack:Stop() end) end
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://102316572910864"
            _G._HLTrack = animator:LoadAnimation(anim)
            _G._HLTrack.Priority = Enum.AnimationPriority.Action
            _G._HLTrack:Play()
        end)
        setButtonState(_G._HLBtn, true, T18T("إيقاف هيدلس"), T18T("هيدلس"), Theme.Active, Theme.ButtonGreen)
    else

        pcall(function()
            if _G._HLTrack then
                _G._HLTrack:Stop()
                _G._HLTrack = nil
            end
        end)
        setButtonState(_G._HLBtn, false, T18T("إيقاف هيدلس"), T18T("هيدلس"), Theme.Active, Theme.ButtonGreen)
    end
end)

AntiAFK.btn.MouseButton1Click:Connect(function()
    AntiAFK.active = not AntiAFK.active
    if AntiAFK.active then
        setButtonState(AntiAFK.btn, true, T18T("إيقاف مضاد افك"), T18T("مضاد افك"), Theme.Active, Theme.ButtonGreen)
        if not AntiAFK.conn then
            AntiAFK.conn = LocalPlayer.Idled:Connect(function()
                if AntiAFK.active then
                    pcall(function()
                        local vu = game:GetService("VirtualUser")
                        vu:CaptureController()
                        vu:ClickButton2(Vector2.new())
                    end)
                end
            end)
        end
    else
        setButtonState(AntiAFK.btn, false, T18T("إيقاف مضاد افك"), T18T("مضاد افك"), Theme.ButtonBlue, Theme.Accent)
        if AntiAFK.conn then
            AntiAFK.conn:Disconnect()
            AntiAFK.conn = nil
        end
    end
end)






local _hdRequestCmd = (function()
    local _s = game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient", 10)
    _s = _s and _s:WaitForChild("Signals", 5)
    return _s and _s:WaitForChild("RequestCommandSilent", 5)
end)()

local function hdPrefix()
    local p = HdPrefixInput and HdPrefixInput.Text
    if not p or p == "" then p = "," end
    return p
end



local function hdRunCommand(cmdText)
    if not _hdRequestCmd then
        showNotification("❌ HD Admin ما اتحمل بعد")
        return false
    end
    local ok, err = pcall(function()
        _hdRequestCmd:InvokeServer(cmdText)
    end)
    if not ok then
        showNotification("❌ " .. tostring(err))
    end
    return ok
end

local function hdExecCmd()
    local txt = HdCmdInput.Text:match("^%s*(.-)%s*$")
    if not txt or txt == "" then
        showNotification(T18T("اكتب الأمر أولاً"))
        return
    end
    HdCmdInput.Text = ""

    if hdRunCommand(txt) then
        showNotification("✅ " .. txt)
    end
end

HdCmdSendBtn.MouseButton1Click:Connect(hdExecCmd)
HdCmdInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then hdExecCmd() end
end)


HdCopyBtn.Text = T18T("تفعيل نسخ")

HdCopyBtn.MouseButton1Click:Connect(function()
    if not _Flags.hdCopy then
        local tg = (Input and Input.Text or ""):match("^%s*(.-)%s*$")
        if tg == "" then
            showNotification(T18T("اكتب يوزر اللاعب في خانة الكتابة"))
            return
        end
        local p = HdPrefixInput.Text
        if p == "" then
            showNotification(T18T("أدخل الـ Prefix الخاص بك"))
            return
        end

        local cmds = {
            p.."size "    ..tg.." 3",
            p.."height "  ..tg.." 0",
            p.."neon "    ..tg,
            p.."aura "    ..tg,
            p.."color "   ..tg.." pink",
            p.."titlepk " ..tg.." فًحبه",
        }

        _Flags.hdCopy = true
        HdCopyBtn.Text = T18T("ايقاف النسخ")
        HdCopyBtn.BackgroundColor3 = Theme.Active
        showNotification(T18T("تم تفعيل النسخ على ") .. tg)

        task.spawn(function()
            while _Flags.hdCopy do
                for _, c in ipairs(cmds) do
                    if not _Flags.hdCopy then break end
                    hdRunCommand(c)
                    task.wait(0.15)
                end
                task.wait(5)
            end
        end)
    else
        _Flags.hdCopy = false
        HdCopyBtn.Text = T18T("تفعيل نسخ")
        HdCopyBtn.BackgroundColor3 = Theme.ButtonDefault
        showNotification(T18T("تم إيقاف النسخ"))
    end
end)





_G.CuffProtectBtn.MouseButton1Click:Connect(function()
    _G.CuffProtectActive = not _G.CuffProtectActive
    if _G.CuffProtectActive then
        setButtonState(_G.CuffProtectBtn, true, T18T("إيقاف الحماية"), T18T("حماية كلبشة"), Theme.Active, Theme.ButtonOrange)

        pcall(function()
            local char = LocalPlayer.Character
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            local animator = hum and hum:FindFirstChildOfClass("Animator")
            local animS = char and char:FindFirstChild("Animate")
            if not animator or not animS then return end

            local idleFolder = animS:FindFirstChild("idle")
            local idleAnim = idleFolder and idleFolder:FindFirstChildOfClass("Animation")
            local walkFolder = animS:FindFirstChild("walk")
            local walkAnim = walkFolder and walkFolder:FindFirstChildOfClass("Animation")


            animS.Disabled = true

            hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

            hum:ChangeState(Enum.HumanoidStateType.Running)

            if idleAnim then
                local anim = Instance.new("Animation")
                anim.AnimationId = idleAnim.AnimationId
                _G.CuffProtectIdleTrack = animator:LoadAnimation(anim)
                _G.CuffProtectIdleTrack.Priority = Enum.AnimationPriority.Action4
                _G.CuffProtectIdleTrack.Looped = true
                _G.CuffProtectIdleTrack:Play()
            end

            if walkAnim then
                local anim = Instance.new("Animation")
                anim.AnimationId = walkAnim.AnimationId
                _G.CuffProtectWalkTrack = animator:LoadAnimation(anim)
                _G.CuffProtectWalkTrack.Priority = Enum.AnimationPriority.Action4
                _G.CuffProtectWalkTrack.Looped = true
            end
        end)

        _G.CuffProtectMoveConn = RunService.Heartbeat:Connect(function()
            if not _G.CuffProtectActive then return end
            pcall(function()
                local char = LocalPlayer.Character
                local hum = char and char:FindFirstChildOfClass("Humanoid")
                local root = char and char:FindFirstChild("HumanoidRootPart")
                if not root or not hum then return end


                if not _G.CuffProtectSavedSpeed or _G.CuffProtectSavedSpeed == 0 then
                    if hum.WalkSpeed > 0 then
                        _G.CuffProtectSavedSpeed = hum.WalkSpeed
                    end
                end
                hum.Sit = true

                local bv = root:FindFirstChild("CuffProtectBV")
                if not bv then
                    bv = Instance.new("BodyVelocity")
                    bv.Name = "CuffProtectBV"
                    bv.Velocity = Vector3.zero
                    bv.MaxForce = Vector3.new(1e5, 0, 1e5)
                    bv.Parent = root
                end

                local speed = (_G.CuffProtectSavedSpeed or 16)
                local cf = workspace.CurrentCamera.CFrame
                local fwd = Vector3.new(cf.LookVector.X, 0, cf.LookVector.Z)
                local rgt = Vector3.new(cf.RightVector.X, 0, cf.RightVector.Z)
                if fwd.Magnitude > 0 then fwd = fwd.Unit end
                if rgt.Magnitude > 0 then rgt = rgt.Unit end

                local vel = Vector3.zero

                local focusedBox = UserInputService:GetFocusedTextBox()
                if not focusedBox then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then vel += fwd end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then vel -= fwd end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then vel -= rgt end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then vel += rgt end
                end
                if isTouchDevice and hum.MoveDirection.Magnitude > 0 then
                    local md = hum.MoveDirection
                    vel += Vector3.new(md.X, 0, md.Z)
                end

                local isMoving = vel.Magnitude > 0
                if isMoving then
                    bv.Velocity = vel.Unit * speed
                    if _G.CuffProtectWalkTrack and not _G.CuffProtectWalkTrack.IsPlaying then
                        if _G.CuffProtectIdleTrack and _G.CuffProtectIdleTrack.IsPlaying then
                            _G.CuffProtectIdleTrack:Stop(0.15)
                        end
                        _G.CuffProtectWalkTrack:Play(0.15)
                    end
                else
                    bv.Velocity = Vector3.zero
                    if _G.CuffProtectIdleTrack and not _G.CuffProtectIdleTrack.IsPlaying then
                        if _G.CuffProtectWalkTrack and _G.CuffProtectWalkTrack.IsPlaying then
                            _G.CuffProtectWalkTrack:Stop(0.15)
                        end
                        _G.CuffProtectIdleTrack:Play(0.15)
                    end
                end
            end)
        end)
    else
        setButtonState(_G.CuffProtectBtn, false, T18T("إيقاف الحماية"), T18T("حماية كلبشة"), Theme.ButtonBlue, Theme.Accent)

        if _G.CuffProtectMoveConn then
            _G.CuffProtectMoveConn:Disconnect()
            _G.CuffProtectMoveConn = nil
        end
        pcall(function()
            if _G.CuffProtectIdleTrack then _G.CuffProtectIdleTrack:Stop() _G.CuffProtectIdleTrack = nil end
            if _G.CuffProtectWalkTrack then _G.CuffProtectWalkTrack:Stop() _G.CuffProtectWalkTrack = nil end
        end)
        pcall(function()
            local char = LocalPlayer.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if root then
                local bv = root:FindFirstChild("CuffProtectBV")
                if bv then bv:Destroy() end
            end
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.Sit = false
                hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            end
            local animS = char and char:FindFirstChild("Animate")
            if animS then animS.Disabled = false end
        end)
        _G.CuffProtectSavedSpeed = nil
    end
end)

FlingBtn.MouseButton1Click:Connect(function()
    flingActive = not flingActive
    if flingActive then

        if isActive then stopBang() end
        if _HeadBang.active then stopHeadBang() end
        setButtonState(FlingBtn, true, T18T("الحماية شغالة"), T18T("حماية بانق"), Theme.Active, Theme.PanelSoft)
        task.spawn(function()
            while flingActive do
                local char = LocalPlayer.Character
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
    else
        setButtonState(FlingBtn, false, T18T("الحماية شغالة"), T18T("حماية بانق"), Theme.Active, Theme.PanelSoft)
    end
end)

function stopTargetFling(restorePosition)
    targetFlingActive = false
    local savedCFrame = _flingState.savedCFrame

    if targetFlingConnection then
        targetFlingConnection:Disconnect()
        targetFlingConnection = nil
    end

    if _flingState.angularVelocity then
        _flingState.angularVelocity:Destroy()
        _flingState.angularVelocity = nil
    end

    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChild("Humanoid")
    if hum then
        hum.AutoRotate = true
    end

    if root then
        root.AssemblyLinearVelocity = Vector3.zero
        root.AssemblyAngularVelocity = Vector3.zero
    end

    if restorePosition and savedCFrame then
        task.spawn(function()
            for _ = 1, 4 do
                local currentChar = LocalPlayer.Character
                local currentRoot = currentChar and currentChar:FindFirstChild("HumanoidRootPart")
                if not currentRoot then
                    break
                end

                currentRoot.AssemblyLinearVelocity = Vector3.zero
                currentRoot.AssemblyAngularVelocity = Vector3.zero
                currentRoot.CFrame = savedCFrame
                RunService.Heartbeat:Wait()
            end
        end)
    end

    _flingState.savedCFrame = nil
    _flingState.angle = 0
    _flingState.pulse = 0
    _flingState.startTargetY = nil
    _flingState.startTime = 0
    setButtonState(TargetFlingBtn, false, T18T("إيقاف الفلنق"), T18T("فلنق"), Theme.Danger, Theme.PanelSoft)
end

function startTargetFling(target)
    if _T18IsProtected(target) then return end
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChild("Humanoid")
    local targetChar = target and target.Character
    local targetRoot = targetChar and targetChar:FindFirstChild("HumanoidRootPart")

    if not root or not hum or not targetRoot then
        return
    end

    targetFlingActive = true
    _flingState.savedCFrame = root.CFrame
    _flingState.angle = 0
    _flingState.pulse = 0
    _flingState.startTargetY = targetRoot.Position.Y
    _flingState.startTime = tick()
    hum.AutoRotate = false

    _flingState.angularVelocity = Instance.new("BodyAngularVelocity")
    _flingState.angularVelocity.Name = "TargetFlingAngularVelocity"
    _flingState.angularVelocity.MaxTorque = Vector3.new(0, math.huge, 0)
    _flingState.angularVelocity.AngularVelocity = Vector3.new(0, 2400, 0)
    _flingState.angularVelocity.P = 100000
    _flingState.angularVelocity.Parent = root

    setButtonState(TargetFlingBtn, true, T18T("إيقاف الفلنق"), T18T("فلنق"), Theme.Danger, Theme.PanelSoft)

    targetFlingConnection = RunService.Heartbeat:Connect(function()
        if not targetFlingActive then
            return
        end

        local myChar = LocalPlayer.Character
        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        local myHum = myChar and myChar:FindFirstChild("Humanoid")
        local currentTargetChar = target.Character
        local currentTargetRoot = currentTargetChar and currentTargetChar:FindFirstChild("HumanoidRootPart")
        local currentTargetHum = currentTargetChar and currentTargetChar:FindFirstChildOfClass("Humanoid")

        if not myRoot or not myHum or myHum.Health <= 0 then
            return
        end
        if not currentTargetRoot or not currentTargetHum or currentTargetHum.Health <= 0 then

            return
        end


        _flingState.angle += math.rad(160)
        _flingState.pulse = (_flingState.pulse % 3) + 1

        local contactOffsets = {
            CFrame.new(0, -2.35, 0),
            CFrame.Angles(0, _flingState.angle, 0) * CFrame.new(0.55, -1.15, 0.2),
            CFrame.Angles(0, -_flingState.angle, 0) * CFrame.new(-0.55, -1.15, 0.2),
        }

        myRoot.CFrame = currentTargetRoot.CFrame * contactOffsets[_flingState.pulse]

        local lateralPush = currentTargetRoot.CFrame.RightVector * 110
        if _flingState.pulse == 3 then
            lateralPush = -lateralPush
        end

        myRoot.AssemblyLinearVelocity = lateralPush + Vector3.new(0, 95, 0)
    end)
end

function t18PlayLoopedDance(character, animationId, stateTable)
    if not character then
        return nil
    end

    local humanoid = character:WaitForChild("Humanoid", 5)
    if not humanoid then
        return nil
    end

    pcall(function()
        local animateScript = character:FindFirstChild("Animate")
        if animateScript then
            animateScript.Disabled = true
        end
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        humanoid:ChangeState(Enum.HumanoidStateType.Running)
    end)

    if stateTable and stateTable.animTrack then
        pcall(function()
            stateTable.animTrack:Stop()
        end)
        stateTable.animTrack = nil
    end

    local track = nil
    local success = pcall(function()
        local bundle = game:GetObjects(animationId)
        for _, obj in ipairs(bundle) do
            if obj:IsA("Animation") then
                track = humanoid:LoadAnimation(obj)
                track.Looped = true
                track.Priority = Enum.AnimationPriority.Action4
                track:Play(0.1, 1, 5)
                return
            end
        end
    end)

    if not success or not track then
        local animation = Instance.new("Animation")
        animation.AnimationId = animationId
        track = humanoid:LoadAnimation(animation)
        track.Looped = true
        track.Priority = Enum.AnimationPriority.Action4
        track:Play(0.1, 1, 5)
    end

    if stateTable then
        stateTable.animTrack = track
    end

    return track
end

function stopBang()
    isActive = false
    if followConnection then
        followConnection:Disconnect()
        followConnection = nil
    end
    if bangRespawnConn then
        bangRespawnConn:Disconnect()
        bangRespawnConn = nil
    end
    if animTrack then
        animTrack:Stop()
        animTrack = nil
    end

    pcall(function()
        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if root then
            local bv = root:FindFirstChild("BangProtectBV")
            if bv then bv:Destroy() end
        end
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.Sit = false
            hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        end
        local animS = char and char:FindFirstChild("Animate")
        if animS then animS.Disabled = false end
    end)
    setButtonState(BangBtn, false, T18T("إيقاف"), T18T("بانق"), Theme.Danger, Theme.PanelSoft)
end

function startBang(target)
    if _T18IsProtected(target) then return end
    isActive = true
    setButtonState(BangBtn, true, T18T("إيقاف"), T18T("بانق"), Theme.Active, Theme.PanelSoft)

    local myChar = LocalPlayer.Character
    animTrack = t18PlayLoopedDance(myChar, "rbxassetid://5938365243", { animTrack = animTrack })

    local bangProtectSavedSpeed = nil
    local _bangAnimTick = 0

    followConnection = RunService.Heartbeat:Connect(function()
        if not isActive then return end

        local _bNow = tick()
        if _bNow - _bangAnimTick > 2 then
            _bangAnimTick = _bNow
            pcall(function()
                local _bChar = LocalPlayer.Character
                if _bChar and (not animTrack or not animTrack.IsPlaying) then
                    animTrack = t18PlayLoopedDance(_bChar, "rbxassetid://5938365243", { animTrack = animTrack })
                end
            end)
        end


        pcall(function()
            local myCharacter = LocalPlayer.Character
            local bangHum = myCharacter and myCharacter:FindFirstChildOfClass("Humanoid")
            local root = myCharacter and myCharacter:FindFirstChild("HumanoidRootPart")
            if not root or not bangHum then return end

            if not bangProtectSavedSpeed or bangProtectSavedSpeed == 0 then
                if bangHum.WalkSpeed > 0 then
                    bangProtectSavedSpeed = bangHum.WalkSpeed
                end
            end
            bangHum.Sit = true

            local bv = root:FindFirstChild("BangProtectBV")
            if not bv then
                bv = Instance.new("BodyVelocity")
                bv.Name = "BangProtectBV"
                bv.Velocity = Vector3.zero
                bv.MaxForce = Vector3.new(1e5, 0, 1e5)
                bv.Parent = root
            end

            local speed = (bangProtectSavedSpeed or 16)
            local cf = workspace.CurrentCamera.CFrame
            local fwd = Vector3.new(cf.LookVector.X, 0, cf.LookVector.Z)
            local rgt = Vector3.new(cf.RightVector.X, 0, cf.RightVector.Z)
            if fwd.Magnitude > 0 then fwd = fwd.Unit end
            if rgt.Magnitude > 0 then rgt = rgt.Unit end

            local vel = Vector3.zero
            local focusedBox = UserInputService:GetFocusedTextBox()
            if not focusedBox then
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then vel += fwd end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then vel -= fwd end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then vel -= rgt end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then vel += rgt end
            end
            if isTouchDevice and bangHum.MoveDirection.Magnitude > 0 then
                local md = bangHum.MoveDirection
                vel += Vector3.new(md.X, 0, md.Z)
            end
            bv.Velocity = vel.Magnitude > 0 and vel.Unit * speed or Vector3.zero
        end)


        local myCharacter = LocalPlayer.Character
        local targetCharacter = target.Character
        if myCharacter and targetCharacter then
            local myRoot = myCharacter:FindFirstChild("HumanoidRootPart")
            local targetRoot = targetCharacter:FindFirstChild("HumanoidRootPart")
            if myRoot and targetRoot then
                myRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 1.5)
            end
        end
    end)

    bangRespawnConn = LocalPlayer.CharacterAdded:Connect(function(newChar)
        if not isActive then return end
        task.spawn(function()
            task.wait(0.5)
            if not isActive then return end
            animTrack = t18PlayLoopedDance(newChar, "rbxassetid://5938365243", { animTrack = animTrack })
            task.wait(1.5)
            if not isActive then return end
            if not animTrack or not animTrack.IsPlaying then
                animTrack = t18PlayLoopedDance(newChar, "rbxassetid://5938365243", { animTrack = animTrack })
            end
            task.wait(3.0)
            if not isActive then return end
            if not animTrack or not animTrack.IsPlaying then
                animTrack = t18PlayLoopedDance(newChar, "rbxassetid://5938365243", { animTrack = animTrack })
            end
        end)
    end)
end

BangBtn.MouseButton1Click:Connect(function()
    if isActive then
        stopBang()
        return
    end

    if _HeadBang.active then stopHeadBang() end
    if flingActive then flingActive = false; setButtonState(FlingBtn, false, T18T("الحماية شغالة"), T18T("حماية بانق"), Theme.Active, Theme.PanelSoft) end
    if targetFlingActive then stopTargetFling(true) end

    if not Input.Text or #Input.Text < 3 then return end
    if OwnerUsername:lower():find(Input.Text:lower(), 1, true) then return end
    local targetName = Input.Text
    local target = nil
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Name:lower():find(targetName:lower(), 1, true) then
            target = player
            break
        end
    end

    if target and target.Character then
        startBang(target)
    else
        warn("Player not found: " .. targetName)
    end
end)

function stopHeadBang()
    _HeadBang.active = false
    if _HeadBang.conn then
        _HeadBang.conn:Disconnect()
        _HeadBang.conn = nil
    end
    if _HeadBang.respawnConn then
        _HeadBang.respawnConn:Disconnect()
        _HeadBang.respawnConn = nil
    end
    if _HeadBang.animTrack then
        _HeadBang.animTrack:Stop()
        _HeadBang.animTrack = nil
    end
    pcall(function()
        local char = LocalPlayer.Character
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.Sit = false
            hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        end
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if root then
            local bv = root:FindFirstChild("HeadBangBV")
            if bv then bv:Destroy() end
        end
        local animS = char and char:FindFirstChild("Animate")
        if animS then animS.Disabled = false end
    end)
    setButtonState(HeadBangBtn, false, T18T("إيقاف"), T18T("هيد بانق"), Theme.Danger, Theme.PanelSoft)
end

function startHeadBang(target)
    if _T18IsProtected(target) then return end
    _HeadBang.active = true
    setButtonState(HeadBangBtn, true, T18T("إيقاف"), T18T("هيد بانق"), Theme.Active, Theme.PanelSoft)

    local myChar = LocalPlayer.Character
    _HeadBang.animTrack = t18PlayLoopedDance(myChar, "rbxassetid://120512834137418", _HeadBang)

    local savedSpeed = nil

    _HeadBang.respawnConn = LocalPlayer.CharacterAdded:Connect(function(newChar)
        if not _HeadBang.active then return end
        task.spawn(function()
            task.wait(0.5)
            if not _HeadBang.active then return end
            _HeadBang.animTrack = t18PlayLoopedDance(newChar, "rbxassetid://120512834137418", _HeadBang)
            task.wait(1.5)
            if not _HeadBang.active then return end
            if not _HeadBang.animTrack or not _HeadBang.animTrack.IsPlaying then
                _HeadBang.animTrack = t18PlayLoopedDance(newChar, "rbxassetid://120512834137418", _HeadBang)
            end
            task.wait(3.0)
            if not _HeadBang.active then return end
            if not _HeadBang.animTrack or not _HeadBang.animTrack.IsPlaying then
                _HeadBang.animTrack = t18PlayLoopedDance(newChar, "rbxassetid://120512834137418", _HeadBang)
            end
        end)
    end)

    local _hbAnimTick = 0
    _HeadBang.conn = RunService.Heartbeat:Connect(function()
        if not _HeadBang.active then return end

        local _hbNow = tick()
        if _hbNow - _hbAnimTick > 2 then
            _hbAnimTick = _hbNow
            pcall(function()
                local _hbChar = LocalPlayer.Character
                if _hbChar and (not _HeadBang.animTrack or not _HeadBang.animTrack.IsPlaying) then
                    _HeadBang.animTrack = t18PlayLoopedDance(_hbChar, "rbxassetid://120512834137418", _HeadBang)
                end
            end)
        end

        pcall(function()
            local myCharacter = LocalPlayer.Character
            local bangHum = myCharacter and myCharacter:FindFirstChildOfClass("Humanoid")
            local root = myCharacter and myCharacter:FindFirstChild("HumanoidRootPart")
            if not root or not bangHum then return end

            if not savedSpeed or savedSpeed == 0 then
                if bangHum.WalkSpeed > 0 then savedSpeed = bangHum.WalkSpeed end
            end
            bangHum.Sit = true

            local bv = root:FindFirstChild("HeadBangBV")
            if not bv then
                bv = Instance.new("BodyVelocity")
                bv.Name = "HeadBangBV"
                bv.Velocity = Vector3.zero
                bv.MaxForce = Vector3.new(1e5, 0, 1e5)
                bv.Parent = root
            end

            local speed = (savedSpeed or 16)
            local cf = workspace.CurrentCamera.CFrame
            local fwd = Vector3.new(cf.LookVector.X, 0, cf.LookVector.Z)
            local rgt = Vector3.new(cf.RightVector.X, 0, cf.RightVector.Z)
            if fwd.Magnitude > 0 then fwd = fwd.Unit end
            if rgt.Magnitude > 0 then rgt = rgt.Unit end
            local vel = Vector3.zero
            local focusedBox = UserInputService:GetFocusedTextBox()
            if not focusedBox then
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then vel += fwd end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then vel -= fwd end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then vel -= rgt end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then vel += rgt end
            end
            if isTouchDevice and bangHum.MoveDirection.Magnitude > 0 then
                local md = bangHum.MoveDirection
                vel += Vector3.new(md.X, 0, md.Z)
            end
            bv.Velocity = vel.Magnitude > 0 and vel.Unit * speed or Vector3.zero
        end)


        local myCharacter = LocalPlayer.Character
        local targetCharacter = target.Character
        if myCharacter and targetCharacter then
            local myRoot = myCharacter:FindFirstChild("HumanoidRootPart")
            local targetHead = targetCharacter:FindFirstChild("Head")
            local targetRoot = targetCharacter:FindFirstChild("HumanoidRootPart")
            local pivot = targetHead or targetRoot
            if myRoot and pivot then

                local phase = math.floor(tick() / 0.1) % 2
                local zOff = phase == 0 and -1.0 or -1.45
                myRoot.CFrame = pivot.CFrame * CFrame.new(0, 1.95, zOff) * CFrame.Angles(0, math.pi, 0)
            end
        end
    end)
end

HeadBangBtn.MouseButton1Click:Connect(function()
    if _HeadBang.active then
        stopHeadBang()
        return
    end

    if isActive then stopBang() end
    if flingActive then flingActive = false; setButtonState(FlingBtn, false, T18T("الحماية شغالة"), T18T("حماية بانق"), Theme.Active, Theme.PanelSoft) end
    if targetFlingActive then stopTargetFling(true) end
    if not Input.Text or #Input.Text < 3 then return end
    if OwnerUsername:lower():find(Input.Text:lower(), 1, true) then return end
    local targetName = Input.Text
    local target = nil
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Name:lower():find(targetName:lower(), 1, true) then
            target = player
            break
        end
    end
    if target and target.Character then
        startHeadBang(target)
    else
        warn("Player not found: " .. tostring(targetName))
    end
end)

ResetBtn.MouseButton1Click:Connect(function()
    local char = LocalPlayer.Character
    if not char then
        return
    end

    local savedPos = nil
    local root = char:FindFirstChild("HumanoidRootPart")
    if root then
        savedPos = root.CFrame
    end

    respawnConnection = LocalPlayer.CharacterAdded:Connect(function(newChar)
        if not isActive then
            respawnConnection:Disconnect()
            return
        end
        task.wait(0.3)
        local newHum = newChar:FindFirstChildOfClass("Humanoid")
        if newHum then
            pcall(function()
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://5938365243"
                animTrack = newHum:LoadAnimation(anim)
                animTrack.Looped = true
                animTrack.Priority = Enum.AnimationPriority.Action4
                animTrack:Play(0.1, 1, 5)
            end)
        end
        task.wait(0.5)
        if savedPos then
            local newRoot = newChar:FindFirstChild("HumanoidRootPart")
            if newRoot then
                newRoot.CFrame = savedPos
            end
        end
    end)

    local hum = char:FindFirstChild("Humanoid")
    if hum then
        hum.Health = 0
    end
end)

function stopFly()
    flyActive = false
    if flyConnection then
        flyConnection:Disconnect()
        flyConnection = nil
    end

    local char = LocalPlayer.Character
    if char then
        local root = char:FindFirstChild("HumanoidRootPart")
        if root then
            for _, obj in ipairs(root:GetChildren()) do
                if obj.Name == "FlyBV" or obj.Name == "FlyBG" then
                    obj:Destroy()
                end
            end
        end

        local hum = char:FindFirstChild("Humanoid")
        if hum then
            hum.PlatformStand = false
            hum.AutoRotate = true
        end
    end

    setButtonState(FlyBtn, false, T18T("إيقاف الطيران"), T18T("طيران"), Theme.Active, Theme.PanelSoft)
    if FlyTouchFrame then
        FlyTouchFrame.Visible = false
    end
    for key in pairs(mobileFlyInput) do
        mobileFlyInput[key] = false
    end
end

FlyBtn.MouseButton1Click:Connect(function()
    flyActive = not flyActive
    if flyActive then
        setButtonState(FlyBtn, true, T18T("إيقاف الطيران"), T18T("طيران"), Theme.Active, Theme.PanelSoft)
        if FlyTouchFrame and isTouchDevice then
            FlyTouchFrame.Visible = true
        end

        local char = LocalPlayer.Character
        if not char then
            flyActive = false
            if FlyTouchFrame then
                FlyTouchFrame.Visible = false
            end
            setButtonState(FlyBtn, false, T18T("إيقاف الطيران"), T18T("طيران"), Theme.Active, Theme.PanelSoft)
            return
        end

        local root = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChild("Humanoid")
        if not root or not hum then
            flyActive = false
            if FlyTouchFrame then
                FlyTouchFrame.Visible = false
            end
            setButtonState(FlyBtn, false, T18T("إيقاف الطيران"), T18T("طيران"), Theme.Active, Theme.PanelSoft)
            return
        end

        hum.PlatformStand = not isTouchDevice
        hum.AutoRotate = false

        local bv = Instance.new("BodyVelocity")
        bv.Name = "FlyBV"
        bv.Velocity = Vector3.zero
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Parent = root

        local bg = Instance.new("BodyGyro")
        bg.Name = "FlyBG"
        bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bg.P = 90000
        bg.Parent = root

        flyConnection = RunService.Heartbeat:Connect(function()
            if not flyActive then
                return
            end

            local speed = tonumber(SpeedInput.Text) or 50
            local currentCamera = workspace.CurrentCamera
            if not currentCamera then
                return
            end
            local cf = currentCamera.CFrame
            local velocity = Vector3.zero

            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                velocity += cf.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                velocity -= cf.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                velocity -= cf.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                velocity += cf.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                velocity += Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                velocity -= Vector3.new(0, 1, 0)
            end

            if mobileFlyInput.Forward then
                velocity += cf.LookVector
            end
            if mobileFlyInput.Backward then
                velocity -= cf.LookVector
            end
            if mobileFlyInput.Left then
                velocity -= cf.RightVector
            end
            if mobileFlyInput.Right then
                velocity += cf.RightVector
            end
            if mobileFlyInput.Up then
                velocity += Vector3.new(0, 1, 0)
            end
            if mobileFlyInput.Down then
                velocity -= Vector3.new(0, 1, 0)
            end

            if isTouchDevice and hum.MoveDirection.Magnitude > 0 then
                velocity += hum.MoveDirection
            end

            bv.Velocity = velocity * speed
            bg.CFrame = cf
        end)
    else
        stopFly()
    end
end)

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(bindViewportListener)
task.defer(bindViewportListener)

function showSpectateWarning(message)
    if SpectateWarningLabel then
        SpectateWarningLabel.Text = message
        SpectateWarningLabel.Visible = true
        task.delay(3, function()
            if SpectateWarningLabel then
                SpectateWarningLabel.Visible = false
            end
        end)
    else
        warn(message)
    end
end

SavePlaceBtn.MouseButton1Click:Connect(function()
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then
        warn("Cannot save location")
        return
    end

    if SavedLocation then
        root.CFrame = SavedLocation
        SavedLocation = nil
        setButtonState(SavePlaceBtn, false, T18T("رجوع للمكان"), T18T("حفظ مكاني"), Theme.Accent, Theme.PanelSoft)
    else
        SavedLocation = root.CFrame
        setButtonState(SavePlaceBtn, true, T18T("رجوع للمكان"), T18T("حفظ مكاني"), Theme.Accent, Theme.PanelSoft)
    end
end)



TeleportBtn.MouseButton1Click:Connect(function()
    local targetName = Input.Text
    local target = nil

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and #targetName >= 3 and player.Name:lower():find(targetName:lower(), 1, true) then
            target = player
            break
        end
    end

    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if root then
            root.CFrame = target.Character.HumanoidRootPart.CFrame + Vector3.new(2, 0, 0)
        end
    end
end)


function findTargetPlayer()
    local targetName = Input.Text
    if not targetName or #targetName < 3 then
        return nil
    end



    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Name:lower():find(targetName:lower(), 1, true) then
            return player
        end
    end

    return nil
end





function T18ShowPlayerToast(msg)
    local TweenService = game:GetService("TweenService")
    local toastGui = Instance.new("ScreenGui")
    toastGui.Name             = "T18PlayerToast"
    toastGui.ResetOnSpawn     = false
    toastGui.ZIndexBehavior   = Enum.ZIndexBehavior.Sibling
    toastGui.DisplayOrder     = 2147483647
    toastGui.IgnoreGuiInset   = true
    do
        local _cok = pcall(function() toastGui.Parent = game:GetService("CoreGui") end)
        if not _cok or not toastGui.Parent then toastGui.Parent = LocalPlayer:FindFirstChild("PlayerGui") or LocalPlayer:WaitForChild("PlayerGui") end
    end
    local toast = Instance.new("Frame")
    toast.Name                = "ToastFrame"
    toast.AnchorPoint         = Vector2.new(1, 1)
    toast.Size                = UDim2.new(0, 230, 0, 64)
    toast.Position            = UDim2.new(1, 270, 1, -24)
    toast.BackgroundColor3    = Color3.fromRGB(10, 10, 10)
    toast.BackgroundTransparency = 0
    toast.BorderSizePixel     = 0
    toast.ZIndex              = 10
    toast.Parent              = toastGui
    local _tc = Instance.new("UICorner")
    _tc.CornerRadius = UDim.new(0, 10)
    _tc.Parent = toast
    local _ts = Instance.new("UIStroke")
    _ts.Color        = Color3.fromRGB(58, 58, 58)
    _ts.Thickness    = 1
    _ts.Transparency = 0
    _ts.Parent       = toast
    local accentBar = Instance.new("Frame")
    accentBar.Size             = UDim2.new(0, 3, 0.65, 0)
    accentBar.AnchorPoint      = Vector2.new(0, 0.5)
    accentBar.Position         = UDim2.new(0, 9, 0.5, 0)
    accentBar.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    accentBar.BorderSizePixel  = 0
    accentBar.ZIndex           = 11
    accentBar.Parent           = toast
    local _ac = Instance.new("UICorner")
    _ac.CornerRadius = UDim.new(0, 4)
    _ac.Parent = accentBar
    local titleLbl = Instance.new("TextLabel")
    titleLbl.Size                 = UDim2.new(1, -28, 0, 22)
    titleLbl.Position             = UDim2.new(0, 20, 0, 8)
    titleLbl.BackgroundTransparency = 1
    titleLbl.Text                 = "t_18"
    titleLbl.TextColor3           = Color3.fromRGB(255, 255, 255)
    titleLbl.TextXAlignment       = Enum.TextXAlignment.Right
    titleLbl.Font                 = Enum.Font.GothamBold
    titleLbl.TextSize             = 14
    titleLbl.ZIndex               = 11
    titleLbl.Parent               = toast
    local msgLbl = Instance.new("TextLabel")
    msgLbl.Size                 = UDim2.new(1, -28, 0, 18)
    msgLbl.Position             = UDim2.new(0, 20, 0, 34)
    msgLbl.BackgroundTransparency = 1
    msgLbl.Text                 = msg
    msgLbl.TextColor3           = Color3.fromRGB(170, 170, 170)
    msgLbl.TextXAlignment       = Enum.TextXAlignment.Right
    msgLbl.Font                 = Enum.Font.Gotham
    msgLbl.TextSize             = 12
    msgLbl.ZIndex               = 11
    msgLbl.Parent               = toast
    TweenService:Create(toast,
        TweenInfo.new(0.32, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
        { Position = UDim2.new(1, -16, 1, -24) }
    ):Play()
    task.delay(7.0, function()
        local fadeOut = TweenService:Create(toast,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            { Position = UDim2.new(1, 270, 1, -24), BackgroundTransparency = 1 }
        )
        TweenService:Create(titleLbl,  TweenInfo.new(0.4), { TextTransparency = 1 }):Play()
        TweenService:Create(msgLbl,    TweenInfo.new(0.4), { TextTransparency = 1 }):Play()
        TweenService:Create(accentBar, TweenInfo.new(0.4), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(_ts,       TweenInfo.new(0.4), { Transparency = 1 }):Play()
        fadeOut:Play()
        fadeOut.Completed:Connect(function()
            pcall(function() toastGui:Destroy() end)
        end)
    end)
end

local _T18TargetSavedName = ""

local _t18AutoBang = false

Players.PlayerRemoving:Connect(function(player)
    local inputText = Input and Input.Text or ""
    if inputText ~= "" and player.Name:lower():find(inputText:lower(), 1, true) then
        _T18TargetSavedName = Input.Text

        _t18AutoBang = isActive
        if isActive then stopBang() end
        Input.Text = ""
        T18ShowPlayerToast("خرج اللاعب: " .. player.Name)
    end
end)

Players.PlayerAdded:Connect(function(player)
    if _T18TargetSavedName ~= "" and player.Name:lower():find(_T18TargetSavedName:lower(), 1, true) then
        if Input and Input.Text == "" then
            Input.Text = _T18TargetSavedName
            _T18TargetSavedName = ""
            T18ShowPlayerToast("دخل اللاعب من جديد: " .. player.Name)

            if _t18AutoBang then
                _t18AutoBang = false
                task.spawn(function()

                    local tries = 0
                    repeat
                        task.wait(0.4)
                        tries = tries + 1
                    until (player.Character and player.Character:FindFirstChild("HumanoidRootPart")) or tries > 15
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        startBang(player)
                    end
                end)
            end
        end
    end
end)


function hangFindCuffTool()
    local containers = {}
    local bp = LocalPlayer:FindFirstChild("Backpack")
    local ch = LocalPlayer.Character
    if bp then table.insert(containers, bp) end
    if ch then table.insert(containers, ch) end
    for _, cont in ipairs(containers) do
        for _, item in ipairs(cont:GetChildren()) do
            if item:IsA("Tool") then
                local n = item.Name
                if (#n >= 3 and n:sub(1,3) == _Hang.prefix) or n:find(_Hang.prefix) then
                    return item
                end
            end
        end
    end
    return nil
end

function hangCleanup(returnHome)
    _Hang.running = false
    if _Hang.activConn then _Hang.activConn:Disconnect() _Hang.activConn = nil end
    if _Hang.remConn  then _Hang.remConn:Disconnect()  _Hang.remConn  = nil end
    pcall(function()
        local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum:UnequipTools() end
    end)
    if returnHome and _Hang.savedCF then
        local cf = _Hang.savedCF
        task.spawn(function()
            task.wait(0.1)
            for _ = 1, 6 do
                local c = LocalPlayer.Character
                local r = c and c:FindFirstChild("HumanoidRootPart")
                if r then r.CFrame = cf end
                RunService.Heartbeat:Wait()
            end
        end)
    end
    _Hang.savedCF = nil
end

function hangAutoCuff(cuff, bodyPart)
    local origCamType = workspace.CurrentCamera.CameraType
    local myRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    pcall(function()
        workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
        local dir = (bodyPart.Position - myRoot.Position).Unit
        workspace.CurrentCamera.CFrame = CFrame.lookAt(
            bodyPart.Position - dir * 3 + Vector3.new(0, 0.5, 0),
            bodyPart.Position
        )
    end)
    task.wait(0.04)
    local cam = workspace.CurrentCamera
    local vp  = cam.ViewportSize
    local sp, vis = cam:WorldToScreenPoint(bodyPart.Position)
    local tx = (vis and sp.Z > 0) and sp.X or (vp.X / 2)
    local ty = (vis and sp.Z > 0) and sp.Y or (vp.Y / 2)
    local mouse = LocalPlayer:GetMouse()
    local mt, orig, hooked = nil, nil, false
    pcall(function()
        mt   = getrawmetatable(mouse)
        orig = mt.__index
        setreadonly(mt, false)
        mt.__index = function(self, key)
            if key == "Target" then return bodyPart end
            if key == "Hit"    then return CFrame.new(bodyPart.Position) end
            if type(orig) == "function" then return orig(self, key) end
            return orig[key]
        end
        setreadonly(mt, true)
        hooked = true
    end)
    pcall(function()
        if mousemoveabs then mousemoveabs(tx, ty) end
        if mouse1click then mouse1click()
        elseif mouse1press then mouse1press() task.wait(0.03) mouse1release() end
    end)
    task.wait(0.04)
    pcall(function()
        local vim = game:GetService("VirtualInputManager")
        vim:SendMouseButtonEvent(tx, ty, 0, true,  game, 1)
        task.wait(0.03)
        vim:SendMouseButtonEvent(tx, ty, 0, false, game, 1)
    end)
    task.wait(0.05)
    pcall(function() workspace.CurrentCamera.CameraType = origCamType end)
    if hooked and mt and orig then
        pcall(function()
            setreadonly(mt, false)
            mt.__index = orig
            setreadonly(mt, true)
        end)
    end
end

function doHangAuto(targetPlayer)
    if _Hang.running then return end
    local cuff = hangFindCuffTool()
    if not cuff then
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("تعليق"),Text=T18T("ما عندك كلبشة!"),Duration=4})
        end)
        return
    end
    local myChar = LocalPlayer.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
    local tgChar = targetPlayer.Character
    local tgRoot = tgChar and tgChar:FindFirstChild("HumanoidRootPart")
    if not myRoot or not tgRoot then return end

    _Hang.running    = true
    _Hang.savedCF = myRoot.CFrame

    myRoot.CFrame = tgRoot.CFrame * CFrame.new(0, 0, 2.8)
    task.wait(0.05)

    local myHum = myChar:FindFirstChildOfClass("Humanoid")
    if myHum then pcall(function() myHum:EquipTool(cuff) end) end
    task.wait(0.1)

    local bodyPart = tgChar:FindFirstChild("UpperTorso")
                  or tgChar:FindFirstChild("Torso")
                  or tgRoot

    _Hang.activConn = cuff.Activated:Connect(function()
        if not _Hang.running then return end
        if _Hang.activConn then _Hang.activConn:Disconnect() _Hang.activConn = nil end
        task.wait(0.08)
        local c2 = LocalPlayer.Character
        local r2 = c2 and c2:FindFirstChild("HumanoidRootPart")
        if not r2 then hangCleanup(false) return end
        local homePos = _Hang.savedCF
        r2.CFrame = CFrame.new(_Hang.flingPos)
        task.wait(0.25)
        hdRunCommand(hdPrefix() .. _Hang.cmd)
        task.wait(0.4)
        local c3 = LocalPlayer.Character
        local r3 = c3 and c3:FindFirstChild("HumanoidRootPart")
        if r3 and homePos then
            for _ = 1, 6 do r3.CFrame = homePos RunService.Heartbeat:Wait() end
        end
        task.wait(0.6)
        hdRunCommand(hdPrefix() .. _Hang.cmd .. " " .. LocalPlayer.Name)
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("تعليق"),Text=T18T("تم التعليق!"),Duration=4})
        end)
        hangCleanup(false)
    end)

    _Hang.remConn = Players.PlayerRemoving:Connect(function(p)
        if p == targetPlayer and _Hang.running then
            hangCleanup(true)
        end
    end)

    task.spawn(function()
        hangAutoCuff(cuff, bodyPart)
        task.wait(5)
        if _Hang.running then
            pcall(function()
                game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("تعليق"),Text=T18T("فشلت الكلبشة، حاول مجدداً"),Duration=4})
            end)
            hangCleanup(true)
        end
    end)
end


_Hang.cuffBtn.MouseButton1Click:Connect(function()
    local target = findTargetPlayer()
    if not target then
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("كلبشة"),Text=T18T("ما لقيت اللاعب، تأكد من الاسم"),Duration=4})
        end)
        return
    end
    local tgChar = target.Character
    if not tgChar then return end
    local tgRoot = tgChar:FindFirstChild("HumanoidRootPart")
    if not tgRoot then return end
    local cuff = hangFindCuffTool()
    if not cuff then
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("كلبشة"),Text=T18T("ما عندك كلبشة!"),Duration=4})
        end)
        return
    end
    task.spawn(function()
        local myChar = LocalPlayer.Character
        local myHum  = myChar and myChar:FindFirstChildOfClass("Humanoid")
        if myHum then pcall(function() myHum:EquipTool(cuff) end) end
        task.wait(0.1)
        local bodyPart = tgChar:FindFirstChild("UpperTorso") or tgChar:FindFirstChild("Torso") or tgRoot
        local done = false


        if not done then
            pcall(function()
                for _, v in ipairs(tgChar:GetDescendants()) do
                    if v:IsA("ProximityPrompt") then
                        fireproximityprompt(v)
                        done = true
                        break
                    end
                end
            end)
        end


        if not done then
            pcall(function()
                for _, v in ipairs(tgChar:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                        done = true
                        break
                    end
                end
            end)
        end


        if not done then
            pcall(function()
                for _, v in ipairs(cuff:GetDescendants()) do
                    if v:IsA("RemoteEvent") then
                        v:FireServer(bodyPart)
                        done = true
                        break
                    elseif v:IsA("RemoteFunction") then
                        v:InvokeServer(bodyPart)
                        done = true
                        break
                    end
                end
            end)
        end


        if not done then
            local cam = workspace.CurrentCamera
            local vp  = cam.ViewportSize
            local sp, vis = cam:WorldToScreenPoint(bodyPart.Position)
            local tx = (vis and sp.Z > 0) and sp.X or (vp.X / 2)
            local ty = (vis and sp.Z > 0) and sp.Y or (vp.Y / 2)
            local mouse = LocalPlayer:GetMouse()
            local mt, orig, hooked = nil, nil, false
            pcall(function()
                mt   = getrawmetatable(mouse)
                orig = mt.__index
                setreadonly(mt, false)
                mt.__index = function(self, key)
                    if key == "Target" then return bodyPart end
                    if key == "Hit"    then return CFrame.new(bodyPart.Position) end
                    if type(orig) == "function" then return orig(self, key) end
                    return orig[key]
                end
                setreadonly(mt, true)
                hooked = true
            end)
            pcall(function()
                if mousemoveabs then mousemoveabs(tx, ty) end
                if mouse1click then mouse1click()
                elseif mouse1press then mouse1press() task.wait(0.03) mouse1release() end
            end)
            task.wait(0.04)
            pcall(function()
                local vim = game:GetService("VirtualInputManager")
                vim:SendMouseButtonEvent(tx, ty, 0, true,  game, 1)
                task.wait(0.03)
                vim:SendMouseButtonEvent(tx, ty, 0, false, game, 1)
            end)
            if hooked and mt and orig then
                pcall(function()
                    setreadonly(mt, false)
                    mt.__index = orig
                    setreadonly(mt, true)
                end)
            end
        end
    end)
end)

_Hang.pullBtn.MouseButton1Click:Connect(function()
    local target = findTargetPlayer()
    if not target then
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("سحب"),Text=T18T("ما لقيت اللاعب، تأكد من الاسم"),Duration=4})
        end)
        return
    end
    local tgChar = target.Character
    if not tgChar then return end
    local tgRoot = tgChar:FindFirstChild("HumanoidRootPart")
    if not tgRoot then return end
    local cuff = hangFindCuffTool()
    if not cuff then
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("سحب"),Text=T18T("ما عندك كلبشة!"),Duration=4})
        end)
        return
    end
    task.spawn(function()
        local myChar = LocalPlayer.Character
        local myHum  = myChar and myChar:FindFirstChildOfClass("Humanoid")
        if myHum then pcall(function() myHum:EquipTool(cuff) end) end
        task.wait(0.1)
        local bodyPart = tgChar:FindFirstChild("UpperTorso") or tgChar:FindFirstChild("Torso") or tgRoot
        local done = false


        if not done then
            pcall(function()
                for _, v in ipairs(tgChar:GetDescendants()) do
                    if v:IsA("ProximityPrompt") then
                        fireproximityprompt(v)
                        done = true
                        break
                    end
                end
            end)
        end


        if not done then
            pcall(function()
                for _, v in ipairs(tgChar:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                        done = true
                        break
                    end
                end
            end)
        end


        if not done then
            pcall(function()
                for _, v in ipairs(cuff:GetDescendants()) do
                    if v:IsA("RemoteEvent") then
                        v:FireServer(bodyPart)
                        done = true
                        break
                    elseif v:IsA("RemoteFunction") then
                        v:InvokeServer(bodyPart)
                        done = true
                        break
                    end
                end
            end)
        end


        if not done then
            local cam = workspace.CurrentCamera
            local vp  = cam.ViewportSize
            local sp, vis = cam:WorldToScreenPoint(bodyPart.Position)
            local tx = (vis and sp.Z > 0) and sp.X or (vp.X / 2)
            local ty = (vis and sp.Z > 0) and sp.Y or (vp.Y / 2)
            local mouse = LocalPlayer:GetMouse()
            local mt, orig, hooked = nil, nil, false
            pcall(function()
                mt   = getrawmetatable(mouse)
                orig = mt.__index
                setreadonly(mt, false)
                mt.__index = function(self, key)
                    if key == "Target" then return bodyPart end
                    if key == "Hit"    then return CFrame.new(bodyPart.Position) end
                    if type(orig) == "function" then return orig(self, key) end
                    return orig[key]
                end
                setreadonly(mt, true)
                hooked = true
            end)
            pcall(function()
                if mousemoveabs then mousemoveabs(tx, ty) end
                if mouse1click then mouse1click()
                elseif mouse1press then mouse1press() task.wait(0.03) mouse1release() end
            end)
            task.wait(0.04)
            pcall(function()
                local vim = game:GetService("VirtualInputManager")
                vim:SendMouseButtonEvent(tx, ty, 0, true,  game, 1)
                task.wait(0.03)
                vim:SendMouseButtonEvent(tx, ty, 0, false, game, 1)
            end)
            if hooked and mt and orig then
                pcall(function()
                    setreadonly(mt, false)
                    mt.__index = orig
                    setreadonly(mt, true)
                end)
            end
        end


        local function doPullClick()
            local cam2 = workspace.CurrentCamera
            local vp2  = cam2.ViewportSize
            local sp2, vis2 = cam2:WorldToScreenPoint(bodyPart.Position)
            local tx2 = (vis2 and sp2.Z > 0) and sp2.X or (vp2.X / 2)
            local ty2 = (vis2 and sp2.Z > 0) and sp2.Y or (vp2.Y / 2)

            if mousemoveabs then mousemoveabs(tx2, ty2) end
            if mouse1click then
                mouse1click()
            elseif mouse1press then
                mouse1press()
                task.wait(0.03)
                mouse1release()
            else
                local vim2 = game:GetService("VirtualInputManager")
                vim2:SendMouseButtonEvent(tx2, ty2, 0, true,  game, 1)
                task.wait(0.03)
                vim2:SendMouseButtonEvent(tx2, ty2, 0, false, game, 1)
            end
        end
        task.wait(0.15)
        for _i = 1, 5 do

            pcall(doPullClick)

            pcall(doPullClick)

            pcall(function()
                local vp3 = workspace.CurrentCamera.ViewportSize
                local cx  = vp3.X / 2
                local cy  = vp3.Y / 2
                if mousemoveabs then mousemoveabs(cx, cy) end
                if mouse1click then
                    mouse1click()
                elseif mouse1press then
                    mouse1press()
                    task.wait(0.03)
                    mouse1release()
                else
                    local vim3 = game:GetService("VirtualInputManager")
                    vim3:SendMouseButtonEvent(cx, cy, 0, true,  game, 1)
                    task.wait(0.03)
                    vim3:SendMouseButtonEvent(cx, cy, 0, false, game, 1)
                end
            end)
        end
    end)
    task.spawn(function()
        task.wait(1.5)
        local _p = game:GetService("UserInputService"):GetMouseLocation()
        if mouse1click then
            mouse1click()
        elseif mouse1press then
            mouse1press() task.wait(0.05) mouse1release()
        else
            local _v = game:GetService("VirtualInputManager")
            _v:SendMouseButtonEvent(_p.X, _p.Y, 0, true,  game, 1)
            task.wait(0.05)
            _v:SendMouseButtonEvent(_p.X, _p.Y, 0, false, game, 1)
        end
    end)
end)

_Hang.freezeBtn.MouseButton1Click:Connect(function()
    local target = findTargetPlayer()
    if not target then
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("تجميد"),Text=T18T("ما لقيت اللاعب، تأكد من الاسم"),Duration=4})
        end)
        return
    end
    local tgChar = target.Character
    if not tgChar then return end
    local tgRoot = tgChar:FindFirstChild("HumanoidRootPart")
    if not tgRoot then return end
    local cuff = hangFindCuffTool()
    if not cuff then
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("تجميد"),Text=T18T("ما عندك كلبشة!"),Duration=4})
        end)
        return
    end
    task.spawn(function()
        local myChar = LocalPlayer.Character
        local myHum  = myChar and myChar:FindFirstChildOfClass("Humanoid")
        if myHum then pcall(function() myHum:EquipTool(cuff) end) end
        task.wait(0.1)
        local bodyPart = tgChar:FindFirstChild("UpperTorso") or tgChar:FindFirstChild("Torso") or tgRoot
        local done = false


        if not done then
            pcall(function()
                for _, v in ipairs(tgChar:GetDescendants()) do
                    if v:IsA("ProximityPrompt") then
                        fireproximityprompt(v)
                        done = true
                        break
                    end
                end
            end)
        end


        if not done then
            pcall(function()
                for _, v in ipairs(tgChar:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                        done = true
                        break
                    end
                end
            end)
        end


        if not done then
            pcall(function()
                for _, v in ipairs(cuff:GetDescendants()) do
                    if v:IsA("RemoteEvent") then
                        v:FireServer(bodyPart)
                        done = true
                        break
                    elseif v:IsA("RemoteFunction") then
                        v:InvokeServer(bodyPart)
                        done = true
                        break
                    end
                end
            end)
        end


        if not done then
            local cam = workspace.CurrentCamera
            local vp  = cam.ViewportSize
            local sp, vis = cam:WorldToScreenPoint(bodyPart.Position)
            local tx = (vis and sp.Z > 0) and sp.X or (vp.X / 2)
            local ty = (vis and sp.Z > 0) and sp.Y or (vp.Y / 2)
            local mouse = LocalPlayer:GetMouse()
            local mt, orig, hooked = nil, nil, false
            pcall(function()
                mt   = getrawmetatable(mouse)
                orig = mt.__index
                setreadonly(mt, false)
                mt.__index = function(self, key)
                    if key == "Target" then return bodyPart end
                    if key == "Hit"    then return CFrame.new(bodyPart.Position) end
                    if type(orig) == "function" then return orig(self, key) end
                    return orig[key]
                end
                setreadonly(mt, true)
                hooked = true
            end)
            pcall(function()
                if mousemoveabs then mousemoveabs(tx, ty) end
                if mouse1click then mouse1click()
                elseif mouse1press then mouse1press() task.wait(0.03) mouse1release() end
            end)
            task.wait(0.04)
            pcall(function()
                local vim = game:GetService("VirtualInputManager")
                vim:SendMouseButtonEvent(tx, ty, 0, true,  game, 1)
                task.wait(0.03)
                vim:SendMouseButtonEvent(tx, ty, 0, false, game, 1)
            end)
            if hooked and mt and orig then
                pcall(function()
                    setreadonly(mt, false)
                    mt.__index = orig
                    setreadonly(mt, true)
                end)
            end
        end


        task.wait(0.15)
        hdRunCommand(hdPrefix() .. _Hang.cmd)
        task.wait(0.5)
        hdRunCommand(hdPrefix() .. _Hang.cmd .. " " .. LocalPlayer.Name)
        task.wait(0.2)

        pcall(function()
            local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum:UnequipTools() end
        end)
    end)
end)

HangAutoBtn.MouseButton1Click:Connect(function()
    if _Hang.running then return end
    local target = findTargetPlayer()
    if not target then
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification",{Title=T18T("تعليق"),Text=T18T("ما لقيت اللاعب، تأكد من الاسم"),Duration=4})
        end)
        return
    end
    setButtonState(HangAutoBtn, true, T18T("جاري التعليق..."), T18T("تعليق"), Theme.Danger, Theme.PanelSoft)
    doHangAuto(target)
    task.spawn(function()
        while _Hang.running do task.wait(0.3) end
        setButtonState(HangAutoBtn, false, T18T("جاري التعليق..."), T18T("تعليق"), Theme.Danger, Theme.PanelSoft)
    end)
end)

TargetFlingBtn.MouseButton1Click:Connect(function()
    if targetFlingActive then
        stopTargetFling(true)
        return
    end

    if isActive then stopBang() end
    if _HeadBang.active then stopHeadBang() end

    local target = findTargetPlayer()
    if target then
        startTargetFling(target)
    else
        warn("Player not found or name is too short")
    end
end)

function restoreMyCamera()
    local camera = workspace.CurrentCamera
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if camera then
        camera.CameraType = OriginalCameraType or Enum.CameraType.Custom
        camera.CameraSubject = hum or OriginalCameraSubject
    end
    OriginalCameraType = nil
    OriginalCameraSubject = nil
end

function clearSpectateLabels(keepWarning)
    if SpectateNameLabel then
        SpectateNameLabel:Destroy()
        SpectateNameLabel = nil
    end
    if SpectateWarningLabel and not keepWarning then
        SpectateWarningLabel:Destroy()
        SpectateWarningLabel = nil
    end
end

function stopSpectate(keepWarning)
    SpectateActive = false
    if SpectateConnection then
        SpectateConnection:Disconnect()
        SpectateConnection = nil
    end
    if SpectatePlayerRemovingConnection then
        SpectatePlayerRemovingConnection:Disconnect()
        SpectatePlayerRemovingConnection = nil
    end
    restoreMyCamera()
    clearSpectateLabels(keepWarning)
    SpectateTarget = nil
    setButtonState(SpectateBtn, false, T18T("إلغاء المشاهدة"), T18T("مشاهدة"), Theme.Active, Theme.PanelSoft)
end

function createSpectateLabels(target)
    clearSpectateLabels()

    SpectateNameLabel = Instance.new("TextLabel")
    SpectateNameLabel.Size = UDim2.new(0, 320, 0, 38)
    SpectateNameLabel.Position = UDim2.new(0.5, -160, 0, 16)
    SpectateNameLabel.BackgroundColor3 = Theme.PanelSoft
    SpectateNameLabel.BackgroundTransparency = 0.12
    SpectateNameLabel.TextColor3 = Theme.Text
    SpectateNameLabel.TextScaled = true
    SpectateNameLabel.Font = Enum.Font.GothamBold
    SpectateNameLabel.Text = "مشاهدة: " .. target.Name
    SpectateNameLabel.Parent = ScreenGui
    makeCorner(SpectateNameLabel, 12)
    makeStroke(SpectateNameLabel, Theme.Border, 1, 0.2)

    SpectateWarningLabel = Instance.new("TextLabel")
    SpectateWarningLabel.Size = UDim2.new(0, 360, 0, 42)
    SpectateWarningLabel.Position = UDim2.new(0.5, -180, 0, 62)
    SpectateWarningLabel.BackgroundColor3 = Theme.Danger
    SpectateWarningLabel.BackgroundTransparency = 0.12
    SpectateWarningLabel.TextColor3 = Theme.Text
    SpectateWarningLabel.TextScaled = true
    SpectateWarningLabel.Font = Enum.Font.GothamBold
    SpectateWarningLabel.Text = ""
    SpectateWarningLabel.Visible = false
    SpectateWarningLabel.Parent = ScreenGui
    makeCorner(SpectateWarningLabel, 12)
end

function startSpectate(target)
    if _T18IsProtected(target) then return end
    if not target or not target.Character then
        return
    end

    local targetHumanoid = target.Character:FindFirstChildOfClass("Humanoid")
    local targetRoot = target.Character:FindFirstChild("HumanoidRootPart")
    if not targetHumanoid or not targetRoot then
        return
    end

    local camera = workspace.CurrentCamera
    if not camera then
        return
    end

    OriginalCameraType = camera.CameraType
    OriginalCameraSubject = camera.CameraSubject

    SpectateActive = true
    SpectateTarget = target
    setButtonState(SpectateBtn, true, T18T("إلغاء المشاهدة"), T18T("مشاهدة"), Theme.Active, Theme.PanelSoft)
    createSpectateLabels(target)

    if SpectatePlayerRemovingConnection then
        SpectatePlayerRemovingConnection:Disconnect()
        SpectatePlayerRemovingConnection = nil
    end

    SpectatePlayerRemovingConnection = Players.PlayerRemoving:Connect(function(player)
        if player == target then
            showSpectateWarning("اللاعب خرج من اللعبة")
            task.delay(0.7, function()
                if SpectateTarget == target then
                    stopSpectate(true)
                end
            end)
        end
    end)

    camera.CameraType = Enum.CameraType.Custom
    camera.CameraSubject = targetHumanoid

    SpectateConnection = RunService.RenderStepped:Connect(function()
        if not SpectateActive or not SpectateTarget then
            stopSpectate(true)
            return
        end

        local char = SpectateTarget.Character
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        local root = char and char:FindFirstChild("HumanoidRootPart")

        if not Players:FindFirstChild(SpectateTarget.Name) then
            showSpectateWarning("اللاعب خرج من اللعبة")
            stopSpectate(true)
            return
        end

        if not char or not hum or not root or hum.Health <= 0 then

            return
        end

        if SpectateNameLabel then
            SpectateNameLabel.Text = "مشاهدة: " .. SpectateTarget.Name
        end

        local currentCamera = workspace.CurrentCamera
        if currentCamera then
            currentCamera.CameraType = Enum.CameraType.Custom
            currentCamera.CameraSubject = hum
        end
    end)
end

SpectateBtn.MouseButton1Click:Connect(function()
    if SpectateActive then
        stopSpectate()
        return
    end

    local target = findTargetPlayer()
    if target then
        startSpectate(target)
    else
        warn("Player not found or name is too short")
    end
end)


;(function()
    local NoClipActive = false
    local NoClipConnection = nil
    local InfiniteJumpActive = false
    local InfiniteJumpConnection = nil
    local WallClimbActive = false
    local WallClimbConnection = nil
    local ESPActive = false
    local ESPConnections = {}
    local ESPLabels = {}

    local NoClipBtn      = PlayerPage:FindFirstChild("NoClipBtn",      true)
    local InfiniteJumpBtn = PlayerPage:FindFirstChild("InfiniteJumpBtn", true)
    local WallClimbBtn   = PlayerPage:FindFirstChild("WallClimbBtn",   true)
    local ESPBtn         = OthersPage:FindFirstChild("ESPBtn",         true)
    local LowGravBtn     = OthersPage:FindFirstChild("LowGravBtn",     true)

    local function stopNoClip()
        NoClipActive = false
        if NoClipConnection then NoClipConnection:Disconnect(); NoClipConnection = nil end
        pcall(function()
            local char = LocalPlayer.Character
            if char then
                for _, part in pairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then part.CanCollide = true end
                end
            end
        end)
        setButtonState(NoClipBtn, false, T18T("إيقاف اختراق"), T18T("اختراق جدران"), Theme.Active, Theme.ButtonDefault)
    end
    local function startNoClip()
        NoClipActive = true
        setButtonState(NoClipBtn, true, T18T("إيقاف اختراق"), T18T("اختراق جدران"), Theme.Active, Theme.ButtonDefault)
        NoClipConnection = RunService.Stepped:Connect(function()
            if not NoClipActive then return end
            local char = LocalPlayer.Character
            if not char then return end
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") then part.CanCollide = false end
            end
        end)
    end
    if NoClipBtn then
        NoClipBtn.MouseButton1Click:Connect(function()
            if NoClipActive then stopNoClip() else startNoClip() end
        end)
    end
    do
        local LowGravActive = false
        local origGrav = 196.2
        if LowGravBtn then
            LowGravBtn.MouseButton1Click:Connect(function()
                LowGravActive = not LowGravActive
                if LowGravActive then
                    origGrav = workspace.Gravity
                    workspace.Gravity = origGrav * 0.25
                    setButtonState(LowGravBtn, true, T18T("إيقاف الجاذبية"), T18T("جاذبية منخفضة"), Theme.Active, Theme.ButtonOrange)
                else
                    workspace.Gravity = origGrav
                    setButtonState(LowGravBtn, false, T18T("إيقاف الجاذبية"), T18T("جاذبية منخفضة"), Theme.Active, Theme.ButtonOrange)
                end
            end)
        end
    end

    local function stopInfiniteJump()
        InfiniteJumpActive = false
        if InfiniteJumpConnection then InfiniteJumpConnection:Disconnect(); InfiniteJumpConnection = nil end
        setButtonState(InfiniteJumpBtn, false, T18T("إيقاف القفز"), T18T("قفز لا نهائي"), Theme.Active, Theme.ButtonDefault)
    end
    local function startInfiniteJump()
        InfiniteJumpActive = true
        setButtonState(InfiniteJumpBtn, true, T18T("إيقاف القفز"), T18T("قفز لا نهائي"), Theme.Active, Theme.ButtonDefault)
        InfiniteJumpConnection = UserInputService.JumpRequest:Connect(function()
            if not InfiniteJumpActive then return end
            local char = LocalPlayer.Character
            if not char then return end
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
        end)
    end
    if InfiniteJumpBtn then
        InfiniteJumpBtn.MouseButton1Click:Connect(function()
            if InfiniteJumpActive then stopInfiniteJump() else startInfiniteJump() end
        end)
    end

    local function stopWallClimb()
        WallClimbActive = false
        if WallClimbConnection then WallClimbConnection:Disconnect(); WallClimbConnection = nil end
        setButtonState(WallClimbBtn, false, T18T("إيقاف التسلق"), T18T("تسلق الجدران"), Theme.Active, Theme.ButtonDefault)
    end
    local function startWallClimb()
        WallClimbActive = true
        setButtonState(WallClimbBtn, true, T18T("إيقاف التسلق"), T18T("تسلق الجدران"), Theme.Active, Theme.ButtonDefault)
        WallClimbConnection = RunService.Heartbeat:Connect(function()
            if not WallClimbActive then return end
            local char = LocalPlayer.Character
            if not char then return end
            local root = char:FindFirstChild("HumanoidRootPart")
            if not root then return end
            local rp = RaycastParams.new()
            rp.FilterDescendantsInstances = {char}
            rp.FilterType = Enum.RaycastFilterType.Exclude
            local hit = workspace:Raycast(root.Position, root.CFrame.LookVector * 2.5, rp)
            if hit then
                root.AssemblyLinearVelocity = Vector3.new(root.AssemblyLinearVelocity.X, 40, root.AssemblyLinearVelocity.Z)
            end
        end)
    end
    if WallClimbBtn then
        WallClimbBtn.MouseButton1Click:Connect(function()
            if WallClimbActive then stopWallClimb() else startWallClimb() end
        end)
    end


    local VanishBtn = PlayerPage:FindFirstChild("VanishBtn", true)
    if VanishBtn then
        VanishActive = false

        local _VanishRealCF = nil
        local _VanishHbConn = nil

        local function stopVanish()
            VanishActive = false
            if _VanishHbConn then _VanishHbConn:Disconnect(); _VanishHbConn = nil end
            pcall(function() RunService:UnbindFromRenderStep("_T18VanishRestore") end)
            setButtonState(VanishBtn, false, T18T("إيقاف الاختفاء"), T18T("اختفاء"), Theme.Active, Theme.ButtonBlue)
            pcall(function()
                local char = LocalPlayer.Character
                if not char then return end
                if _VanishRealCF then
                    local root = char:FindFirstChild("HumanoidRootPart")
                    if root then root.CFrame = _VanishRealCF end
                end
                for _, p in ipairs(char:GetDescendants()) do
                    if p:IsA("BasePart") then p.LocalTransparencyModifier = 0 end
                end
            end)
        end

        local function startVanish()
            pcall(function()
                local char = LocalPlayer.Character
                if not char then return end
                local root = char:FindFirstChild("HumanoidRootPart")
                if not root then return end


                for _, p in ipairs(char:GetDescendants()) do
                    if p:IsA("BasePart") then p.LocalTransparencyModifier = 0.6 end
                end


                _VanishRealCF = root.CFrame

                VanishActive = true
                setButtonState(VanishBtn, true, T18T("إيقاف الاختفاء"), T18T("اختفاء"), Theme.Active, Theme.ButtonBlue)


                _VanishHbConn = RunService.Heartbeat:Connect(function()
                    if not VanishActive then return end
                    pcall(function()
                        local c = LocalPlayer.Character
                        if not c then return end
                        local r = c:FindFirstChild("HumanoidRootPart")
                        if r then
                            _VanishRealCF = r.CFrame
                            r.CFrame = CFrame.new(99999999, 0, 99999999)
                        end
                    end)
                end)


                RunService:BindToRenderStep("_T18VanishRestore",
                    Enum.RenderPriority.Camera.Value - 1,
                    function()
                        if not VanishActive or not _VanishRealCF then return end
                        pcall(function()
                            local c = LocalPlayer.Character
                            if not c then return end
                            local r = c:FindFirstChild("HumanoidRootPart")
                            if r then r.CFrame = _VanishRealCF end
                        end)
                    end
                )
            end)
        end

        VanishBtn.MouseButton1Click:Connect(function()
            if VanishActive then stopVanish() else startVanish() end
        end)
    end


    local function stopESP()
        ESPActive = false
        for _, label in pairs(ESPLabels) do pcall(function() label:Destroy() end) end
        ESPLabels = {}
        for _, conn in pairs(ESPConnections) do pcall(function() conn:Disconnect() end) end
        ESPConnections = {}
        setButtonState(ESPBtn, false, T18T("إيقاف ESP"), "ESP", Theme.Active, Theme.ButtonDefault)
    end
    local function startESP()
        ESPActive = true
        setButtonState(ESPBtn, true, T18T("إيقاف ESP"), "ESP", Theme.Active, Theme.ButtonDefault)
        local function addESPLabel(player)
            if player == LocalPlayer then return end
            local bb = Instance.new("BillboardGui")
            bb.Name = "ESP_" .. player.Name
            bb.Size = UDim2.new(0, 100, 0, 30)
            bb.StudsOffset = Vector3.new(0, 3, 0)
            bb.AlwaysOnTop = true
            local lbl = Instance.new("TextLabel")
            lbl.Size = UDim2.new(1, 0, 1, 0)
            lbl.BackgroundTransparency = 1
            lbl.Text = player.Name
            lbl.TextColor3 = Color3.fromRGB(255, 80, 80)
            lbl.Font = Enum.Font.GothamBold
            lbl.TextSize = 14
            lbl.TextStrokeTransparency = 0.5
            lbl.Parent = bb
            table.insert(ESPConnections, player.CharacterAdded:Connect(function(char)
                local hrp = char:WaitForChild("HumanoidRootPart", 5)
                if hrp then bb.Parent = hrp end
            end))
            ESPLabels[player.Name] = bb
            local char = player.Character
            if char then
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if hrp then bb.Parent = hrp end
            end
        end
        for _, p in ipairs(Players:GetPlayers()) do addESPLabel(p) end
        table.insert(ESPConnections, Players.PlayerAdded:Connect(addESPLabel))
        table.insert(ESPConnections, Players.PlayerRemoving:Connect(function(p)
            if ESPLabels[p.Name] then pcall(function() ESPLabels[p.Name]:Destroy() end); ESPLabels[p.Name] = nil end
        end))
    end
    if ESPBtn then
        ESPBtn.MouseButton1Click:Connect(function()
            if ESPActive then stopESP() else startESP() end
        end)
    end
end)()


;(function()

    local AntiLagActive = false
    local AntiLagBtn2 = OthersPage:FindFirstChild("AntiLagBtn", true)

    local function applyAntiLag()
        pcall(function()
            local ls = game:GetService("Lighting")
            ls.GlobalShadows = false
            ls.FogEnd = 1e6
            ls.Brightness = 1
        end)
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        end)
        pcall(function()
            for _, v in ipairs(workspace:GetDescendants()) do
                if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
                    v.Enabled = false
                end
            end
        end)
    end

    local function removeAntiLag()
        pcall(function()
            local ls = game:GetService("Lighting")
            ls.GlobalShadows = true
        end)
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
        end)
        pcall(function()
            for _, v in ipairs(workspace:GetDescendants()) do
                if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
                    v.Enabled = true
                end
            end
        end)
    end

    if AntiLagBtn2 then
        AntiLagBtn2.MouseButton1Click:Connect(function()
            AntiLagActive = not AntiLagActive
            if AntiLagActive then
                setButtonState(AntiLagBtn2, true, T18T("إيقاف مضاد لاج"), T18T("مضاد لاج"), Theme.Active, Theme.ButtonDefault)
                applyAntiLag()
            else
                setButtonState(AntiLagBtn2, false, T18T("إيقاف مضاد لاج"), T18T("مضاد لاج"), Theme.Active, Theme.ButtonDefault)
                removeAntiLag()
            end
        end)
    end


    local FPSPingActive = false
    local FPSPingConnection = nil
    local FPSPingGui = nil
    local FPSPingBtn2 = OthersPage:FindFirstChild("FPSPingBtn", true)

    local function stopFPSPing()
        FPSPingActive = false
        if FPSPingConnection then FPSPingConnection:Disconnect(); FPSPingConnection = nil end
        if FPSPingGui then FPSPingGui:Destroy(); FPSPingGui = nil end
        setButtonState(FPSPingBtn2, false, T18T("إيقاف FPS/Ping"), "FPS / Ping", Theme.Active, Theme.ButtonDefault)
    end

    local function startFPSPing()
        FPSPingActive = true
        setButtonState(FPSPingBtn2, true, T18T("إيقاف FPS/Ping"), "FPS / Ping", Theme.Active, Theme.ButtonDefault)
        local playerGui = LocalPlayer:WaitForChild("PlayerGui")
        local sg = Instance.new("ScreenGui")
        sg.Name = "T18FPSPing"
        sg.ResetOnSpawn = false
        sg.IgnoreGuiInset = true
        sg.DisplayOrder = 2147483647
        do local _ok=pcall(function() sg.Parent=game:GetService("CoreGui") end) if not _ok or not sg.Parent then sg.Parent=LocalPlayer:WaitForChild("PlayerGui") end end
        FPSPingGui = sg
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(0, 130, 0, 52)
        frame.Position = UDim2.new(1, -140, 0, 8)
        frame.BackgroundColor3 = Color3.fromRGB(8, 10, 24)
        frame.BackgroundTransparency = 0.18
        frame.BorderSizePixel = 0
        frame.Parent = sg
        local cr = Instance.new("UICorner"); cr.CornerRadius = UDim.new(0, 10); cr.Parent = frame
        local sk = Instance.new("UIStroke"); sk.Color = Theme.Accent; sk.Thickness = 1; sk.Transparency = 0.4; sk.Parent = frame
        local fpsLbl = Instance.new("TextLabel")
        fpsLbl.Size = UDim2.new(1, -12, 0, 24)
        fpsLbl.Position = UDim2.new(0, 6, 0, 2)
        fpsLbl.BackgroundTransparency = 1
        fpsLbl.Text = "FPS: --"
        fpsLbl.TextColor3 = Color3.fromRGB(100, 220, 100)
        fpsLbl.Font = Enum.Font.GothamBold
        fpsLbl.TextSize = 15
        fpsLbl.TextXAlignment = Enum.TextXAlignment.Left
        fpsLbl.Parent = frame
        local pingLbl = Instance.new("TextLabel")
        pingLbl.Size = UDim2.new(1, -12, 0, 24)
        pingLbl.Position = UDim2.new(0, 6, 0, 26)
        pingLbl.BackgroundTransparency = 1
        pingLbl.Text = "Ping: --"
        pingLbl.TextColor3 = Color3.fromRGB(100, 180, 255)
        pingLbl.Font = Enum.Font.GothamBold
        pingLbl.TextSize = 15
        pingLbl.TextXAlignment = Enum.TextXAlignment.Left
        pingLbl.Parent = frame
        local fpsCount, elapsed = 0, 0
        FPSPingConnection = RunService.RenderStepped:Connect(function(dt)
            if not FPSPingActive then return end
            fpsCount = fpsCount + 1
            elapsed = elapsed + dt
            if elapsed >= 0.5 then
                local fps = math.round(fpsCount / elapsed)
                local ping = 0
                pcall(function()
                    ping = math.round(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                fpsLbl.Text = "FPS: " .. tostring(fps)
                pingLbl.Text = "Ping: " .. tostring(ping) .. " ms"
                if fps >= 55 then
                    fpsLbl.TextColor3 = Color3.fromRGB(100, 220, 100)
                elseif fps >= 30 then
                    fpsLbl.TextColor3 = Color3.fromRGB(255, 200, 50)
                else
                    fpsLbl.TextColor3 = Color3.fromRGB(255, 80, 80)
                end
                fpsCount = 0
                elapsed = 0
            end
        end)
    end

    if FPSPingBtn2 then
        FPSPingBtn2.MouseButton1Click:Connect(function()
            if FPSPingActive then stopFPSPing() else startFPSPing() end
        end)
    end


    local ServerInfoBtn2 = OthersPage:FindFirstChild("ServerInfoBtn", true)
    local ServerInfoGui = nil

    local function closeServerInfo()
        if ServerInfoGui then ServerInfoGui:Destroy(); ServerInfoGui = nil end
    end

    if ServerInfoBtn2 then
        ServerInfoBtn2.MouseButton1Click:Connect(function()
            if ServerInfoGui then closeServerInfo(); return end
            local playerGui = LocalPlayer:WaitForChild("PlayerGui")
            local sg = Instance.new("ScreenGui")
            sg.Name = "T18ServerInfo"
            sg.ResetOnSpawn = false
            sg.IgnoreGuiInset = true
            sg.DisplayOrder = 2147483647
            do local _ok=pcall(function() sg.Parent=game:GetService("CoreGui") end) if not _ok or not sg.Parent then sg.Parent=LocalPlayer:WaitForChild("PlayerGui") end end
            ServerInfoGui = sg

            local panel = Instance.new("Frame")
            panel.Size = UDim2.new(0, 280, 0, 240)
            panel.Position = UDim2.new(0.5, -140, 0.5, -120)
            panel.BackgroundColor3 = Color3.fromRGB(8, 10, 24)
            panel.BackgroundTransparency = 0.08
            panel.BorderSizePixel = 0
            panel.Parent = sg
            local pc = Instance.new("UICorner"); pc.CornerRadius = UDim.new(0, 14); pc.Parent = panel
            local ps = Instance.new("UIStroke"); ps.Color = Theme.Accent; ps.Thickness = 1.5; ps.Transparency = 0.3; ps.Parent = panel

            local titleLbl = Instance.new("TextLabel")
            titleLbl.Size = UDim2.new(1, -50, 0, 28)
            titleLbl.Position = UDim2.new(0, 10, 0, 6)
            titleLbl.BackgroundTransparency = 1
            titleLbl.Text = "معلومات السيرفر"
            titleLbl.TextColor3 = Theme.Accent
            titleLbl.Font = Enum.Font.GothamBold
            titleLbl.TextSize = 17
            titleLbl.TextXAlignment = Enum.TextXAlignment.Right
            titleLbl.Parent = panel

            local function addRow(label, value, yPos)
                local lbl = Instance.new("TextLabel")
                lbl.Size = UDim2.new(1, -20, 0, 28)
                lbl.Position = UDim2.new(0, 10, 0, yPos)
                lbl.BackgroundTransparency = 1
                lbl.Text = label .. ": " .. tostring(value)
                lbl.TextColor3 = Theme.Text
                lbl.Font = Enum.Font.Gotham
                lbl.TextSize = 14
                lbl.TextXAlignment = Enum.TextXAlignment.Right
                lbl.TextWrapped = true
                lbl.Parent = panel
            end

            addRow("عدد اللاعبين", #game:GetService("Players"):GetPlayers(), 38)
            addRow("الحد الاقصى للاعبين", game:GetService("Players").MaxPlayers, 68)
            addRow("Place ID", tostring(game.PlaceId), 98)
            addRow("Game ID", tostring(game.GameId), 128)
            addRow("Job ID", tostring(game.JobId):sub(1, 18) .. "...", 158)


            panel.Size = UDim2.new(0, 280, 0, 290)
            local uptimeLbl = Instance.new("TextLabel")
            uptimeLbl.Size = UDim2.new(1, -20, 0, 28)
            uptimeLbl.Position = UDim2.new(0, 10, 0, 188)
            uptimeLbl.BackgroundTransparency = 1
            uptimeLbl.TextColor3 = Theme.Text
            uptimeLbl.Font = Enum.Font.Gotham
            uptimeLbl.TextSize = 14
            uptimeLbl.TextXAlignment = Enum.TextXAlignment.Right
            uptimeLbl.TextWrapped = true
            uptimeLbl.Text = "عمر السيرفر: جاري التحقق..."
            uptimeLbl.Parent = panel


            local uptimeSrcLbl = Instance.new("TextLabel")
            uptimeSrcLbl.Size = UDim2.new(1, -20, 0, 22)
            uptimeSrcLbl.Position = UDim2.new(0, 10, 0, 216)
            uptimeSrcLbl.BackgroundTransparency = 1
            uptimeSrcLbl.TextColor3 = Color3.fromRGB(160, 160, 160)
            uptimeSrcLbl.Font = Enum.Font.Gotham
            uptimeSrcLbl.TextSize = 11
            uptimeSrcLbl.TextXAlignment = Enum.TextXAlignment.Right
            uptimeSrcLbl.TextWrapped = true
            uptimeSrcLbl.Text = ""
            uptimeSrcLbl.Parent = panel

            local function fmtUptime(secs)
                local h = math.floor(secs / 3600)
                local m = math.floor((secs % 3600) / 60)
                local s = math.floor(secs % 60)
                if h > 0 then
                    return string.format("%d س %02d د %02d ث", h, m, s)
                end
                return string.format("%d د %02d ث", m, s)
            end


            _T18EstimatedAge = nil
            _T18AgeSource    = "script"
            task.spawn(function()
                local _t18pls = Players:GetPlayers()
                local _t18ids = {}
                for _, _t18p in ipairs(_t18pls) do
                    table.insert(_t18ids, _t18p.UserId)
                end
                if #_t18ids == 0 then
                    _T18EstimatedAge = _T18ServerUptime()
                    _T18AgeSource = "script"
                    return
                end

                local _t18res = t18_httpRequest({
                    Url    = "https://presence.roblox.com/v1/presence/users",
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json",
                        ["Accept"]       = "application/json",
                    },
                    Body = t18_jsonEncode({ userIds = _t18ids }),
                })
                if not _t18res then
                    _T18EstimatedAge = _T18ServerUptime()
                    _T18AgeSource = "script"
                    return
                end
                local _t18body = _t18res.Body or _t18res.body or ""
                local _t18data = t18_jsonDecode(_t18body)
                if not _t18data or type(_t18data.userPresences) ~= "table" then
                    _T18EstimatedAge = _T18ServerUptime()
                    _T18AgeSource = "script"
                    return
                end
                local _t18jid  = tostring(game.JobId)
                local _t18now  = os.time()
                local _t18best = 0
                for _, _t18pr in ipairs(_t18data.userPresences) do
                    local _t18gid = tostring(_t18pr.gameId or "")
                    if _t18gid == _t18jid and _t18pr.lastOnline then

                        local _t18lo = tostring(_t18pr.lastOnline)
                        local _t18y, _t18mo, _t18d, _t18h, _t18mi, _t18s =
                            _t18lo:match("(%d+)-(%d+)-(%d+)T(%d+):(%d+):(%d+)")
                        if _t18y then
                            local _t18ts = os.time({
                                year  = tonumber(_t18y),
                                month = tonumber(_t18mo),
                                day   = tonumber(_t18d),
                                hour  = tonumber(_t18h),
                                min   = tonumber(_t18mi),
                                sec   = tonumber(_t18s),
                            })
                            local _t18diff = _t18now - _t18ts
                            if _t18diff > _t18best then
                                _t18best = _t18diff
                            end
                        end
                    end
                end

                local _t18script = _T18ServerUptime()
                if _t18best > _t18script then
                    _T18EstimatedAge = _t18best
                    _T18AgeSource = "presence"
                else
                    _T18EstimatedAge = _t18script
                    _T18AgeSource = "script"
                end
            end)

            local uptimeConn
            local function refreshUptime()
                local secs = _T18EstimatedAge or _T18ServerUptime()
                uptimeLbl.Text = "عمر السيرفر: " .. fmtUptime(secs)
                if _T18AgeSource == "presence" then
                    uptimeSrcLbl.Text = "( مقدّر عن طريق أقدم لاعب في السيرفر )"
                elseif _T18AgeSource == "script" then
                    uptimeSrcLbl.Text = "( من وقت تشغيل السكربت )"
                else
                    uptimeSrcLbl.Text = "( جاري التحقق... )"
                end
            end
            refreshUptime()
            uptimeConn = RunService.Heartbeat:Connect(function()
                if not ServerInfoGui then uptimeConn:Disconnect(); return end
                refreshUptime()
            end)

            local closeBtn = Instance.new("TextButton")
            closeBtn.Size = UDim2.new(0, 30, 0, 30)
            closeBtn.Position = UDim2.new(0, 6, 0, 6)
            closeBtn.BackgroundColor3 = Theme.Danger
            closeBtn.BackgroundTransparency = 0.2
            closeBtn.Text = "X"
            closeBtn.TextColor3 = Theme.Text
            closeBtn.Font = Enum.Font.GothamBold
            closeBtn.TextSize = 14
            closeBtn.AutoButtonColor = false
            closeBtn.Parent = panel
            local cc = Instance.new("UICorner"); cc.CornerRadius = UDim.new(0, 8); cc.Parent = closeBtn
            closeBtn.MouseButton1Click:Connect(closeServerInfo)
        end)
    end
end)()

LocalPlayer.CharacterAdded:Connect(function()
    if SpectateActive then
        stopSpectate()
    else
        restoreMyCamera()
    end
    if flingActive then
        flingActive = false
        setButtonState(FlingBtn, false, T18T("الحماية شغالة"), T18T("حماية بانق"), Theme.Active, Theme.PanelSoft)
    end
    if _G._ZWA then
        _G._ZOrig = nil
        _G._ZWA = false
        task.wait(0.5)
        ZombieWalkBtn:Activate()
    end
    if _G._HLA then
        _G._HLA = false
        task.wait(0.5)
        _G._HLBtn:Activate()
    end

end)



_T18TR = {

    ["القوائم"]                                   = "Menus",
    ["اختر القسم"]                                = "Choose Section",

    ["اللاعب"]                                    = "Player",
    ["استهداف"]                                   = "Target",
    ["مهم"]                                       = "Important",
    ["اونر"]                                      = "Owner",
    ["اخرى"]                                      = "Others",
    ["اللغة"]                                     = "Language",

    ["القائمة الرئيسية"]                          = "Main Menu",
    ["ميزات إضافية"]                              = "Extra Features",
    ["أوامر الحركة والسرعة"]                      = "Movement & Speed",
    ["أوامر التعامل مع اللاعبين"]                 = "Player Interaction",
    ["رسالة داخل السكربت"]                        = "Script Message",
    ["أوامر الإدارة الخاصة"]                      = "Admin Commands",
    ["ملاحظة مهمة : يا اخوان حماية البانق ما تشتغل الا على سكربت V.R.7"] =
        "Important Note: Bang Protection only works on script V.R.7",

    ["بانق"]                                      = "Bang",
    ["ريسيت"]                                     = "Reset",
    ["حماية بانق"]                                = "Bang Protect",
    ["فلنق"]                                      = "Fling",
    ["طيران"]                                     = "Fly",
    ["سرعة اللاعب"]                               = "Walk Speed",
    ["مشية زومبي"]                                = "Zombie Walk",
    ["هيدلس"]                                     = "Headless",
    ["تنقل"]                                      = "Teleport",
    ["مشاهدة"]                                    = "Spectate",
    ["هيد بانق"]                                  = "Head Bang",
    ["حفظ مكاني"]                                 = "Save Pos",
    ["تعليق"]                                     = "Hang",
    ["تجميد"]                                     = "Freeze",
    ["كلبش"]                                      = "Cuff",
    ["سحب"]                                       = "Pull",
    ["طرد"]                                       = "Kick",
    ["استدعاء"]                                   = "Summon",
    ["إرسال"]                                     = "Send",
    ["نسخ رابط الدسكورد"]                         = "Copy Discord",

    ["إيقاف هيدلس"]                               = "Stop Headless",
    ["إيقاف الفلنق"]                              = "Stop Fling",
    ["إيقاف"]                                     = "Stop",
    ["إيقاف الطيران"]                             = "Stop Fly",
    ["جاري التعليق..."]                            = "Hanging...",
    ["إلغاء المشاهدة"]                            = "Stop Spectate",
    ["فك التجميد"]                                = "Unfreeze",
    ["إيقاف الاستدعاء"]                           = "Stop Summon",

    ["اكتب اسم اللاعب هنا"]                       = "Enter player name",
    ["سرعة الطيران"]                              = "Fly speed",
    ["سرعة المشي"]                                = "Walk speed",
    ["اكتب رسالة..."]                              = "Type a message...",
    ["اكتب 4 أحرف من يوزر اللاعب"]               = "Enter 4 chars of username",

    ["التحكم الرئيسي"]                            = "Main Controls",
    ["شات"]                                       = "Chat",
    ["تواصل بين مشغلي السكربت"]                   = "Script users chat",
    ["─── مستخدمين السكربت ───"]                   = "─── Script Users ───",
    ["العدد: "]                                   = "Count: ",

    ["اكتب 4 أحرف على الأقل"]                    = "Enter at least 4 chars",
    ["لا يوجد لاعب مطابق"]                        = "No matching player",
    ["تم تحديد: "]                                = "Selected: ",

    ["ما عندك كلبشة!"]                            = "You don't have a cuff!",
    ["تم التعليق!"]                               = "Hung successfully!",
    ["فشلت الكلبشة، حاول مجدداً"]                 = "Cuff failed, try again",
    ["ما لقيت اللاعب، تأكد من الاسم"]             = "Player not found, check name",
    ["كلبشة"]                                     = "Cuff",
    ["تم استدعاؤك بواسطة الأونر"]                 = "Summoned by Owner",
    ["انتهى الاستدعاء"]                           = "Summon ended",
    ["اكتب 4 أحرف من يوزر اللاعب أو أكثر"]       = "Enter at least 4 chars",
    ["ما قدرت أرسل الأمر — تأكد إن المُشغِّل يدعم HTTP"] =
        "Couldn't send command — check executor HTTP",
    ["تم نسخ رابط الدسكورد"]                      = "Discord link copied",
    ["تم إيقاف الاستدعاء"]                        = "Summon stopped",
    ["اكتب يوزر اللاعب في خانة الكتابة"]          = "Enter player username in the box",
    ["أدخل الـ Prefix الخاص بك"]                  = "Enter your Prefix",
    ["تم إيقاف النسخ"]                            = "Copy stopped",
    ["اللاعب خرج من السيرفر"]                      = "Player left the server",
    ["تم تفعيل النسخ على "]                        = "Copy activated on ",
    ["تم تفعيل الاستدعاء لـ "]                     = "Summon activated for ",
    ["النظام"]                                    = "System",
    ["ما قدرت أرسل الرسالة — تأكد إن المُشغِّل يدعم HTTP"] =
        "Couldn't send message — check executor HTTP",
    ["مرحبًا! هذي شاشة شات خاصة بمشغّلي السكربت فقط — تمر عبر سيرفر خارجي ولا تظهر لأي لاعب ما يستخدم السكربت."] =
        "Hello! This is a private chat for script users only — routed through an external server and not visible to other players.",

    ["مضاد افك"]                                     = "Anti AFK",
    ["حماية كلبشة"]                                  = "Cuff Protect",
    ["جاذبية منخفضة"]                                = "Low Gravity",
    ["مضاد لاج"]                                     = "Anti Lag",
    ["معلومات السيرفر"]                              = "Server Info",
    ["اختراق جدران"]                                 = "Noclip",
    ["قفز لا نهائي"]                                 = "Infinite Jump",
    ["تسلق الجدران"]                                 = "Wall Climb",

    ["إيقاف مشية زومبي"]                             = "Stop Zombie Walk",
    ["إيقاف الحماية"]                                = "Stop Protection",
    ["إيقاف اختراق"]                                 = "Stop Noclip",
    ["إيقاف الجاذبية"]                               = "Stop Low Grav",
    ["إيقاف القفز"]                                  = "Stop Inf Jump",
    ["إيقاف التسلق"]                                 = "Stop Wall Climb",
    ["اختفاء"]                                       = "Vanish",
    ["إيقاف الاختفاء"]                               = "Stop Vanish",
    ["إيقاف ESP"]                                    = "Stop ESP",
    ["إيقاف مضاد لاج"]                               = "Stop Anti Lag",
    ["إيقاف مضاد افك"]                               = "Stop Anti AFK",
    ["عمر السيرفر: "]                                = "Server Age: ",

    ["اوامر شاليه محمد"]                             = "Shale's Commands",
    ["تفعيل نسخ"]                                    = "Enable Copy",
    ["ايقاف النسخ"]                                  = "Stop Copy",
    ["Prefix الـ HD (تلقائي أو يدوي)"]               = "HD Prefix (Auto or Manual)",
    ["مثال: ,"]                                      = "Example: ,",
    ["عندك مشكلة؟ تواصل دسكورد"]                         = "Got a problem? Contact me on Discord.",
    ["شاركونا اقتراحاتكم على الدسكورد"]              = "Share feedback on Discord",
    ["شاركونا اقتراحاتكم على الدسكورد | اضغط الزر الصغير لإخفاء النافذة"] =
        "Share feedback on Discord | Press the small button to hide",
    ["إيقاف Respawn Loop"]                            = "Stop Respawn Loop",

    ["السرعة مفعلة"]                                  = "Speed Active",
    ["الحماية شغالة"]                                 = "Protect Active",
    ["رجوع للمكان"]                                   = "Return to Pos",
    ["إيقاف FPS/Ping"]                                = "Stop FPS/Ping",
}


_T18Rev = {}
;(function() for _t18k, _t18v in pairs(_T18TR) do _T18Rev[_t18v] = _t18k end end)()


function T18T(s)
    if _T18Lang == "en" then return _T18TR[s] or s end
    return _T18Rev[s] or s
end


function T18ApplyLang(toLang)
    _T18Lang = toLang
    _T18SG = nil
    pcall(function() _T18SG = game:GetService("CoreGui"):FindFirstChild("BangGuiPro") end)
    if not _T18SG then
        pcall(function() _T18SG = LocalPlayer.PlayerGui:FindFirstChild("BangGuiPro") end)
    end
    if not _T18SG then return end
    _T18Lookup = (toLang == "en") and _T18TR or _T18Rev
    for _, _t18v in ipairs(_T18SG:GetDescendants()) do
        pcall(function()
            if _t18v:IsA("TextLabel") or _t18v:IsA("TextButton") or _t18v:IsA("TextBox") then
                if _T18Lookup[_t18v.Text] then _t18v.Text = _T18Lookup[_t18v.Text] end
                if _t18v:IsA("TextBox") and _T18Lookup[_t18v.PlaceholderText] then
                    _t18v.PlaceholderText = _T18Lookup[_t18v.PlaceholderText]
                end
            end
        end)
    end

    if _T18MainTextLabel then
        pcall(function()
            if toLang == "en" then
                _T18MainTextLabel.Text = _T18MainTextEn
            else
                _T18MainTextLabel.Text = _T18MainTextAr
            end
        end)
    end

    if _T18ImportantTextLabel then
        pcall(function()
            if toLang == "en" then
                _T18ImportantTextLabel.Text = _T18ImportantTextEn
            else
                _T18ImportantTextLabel.Text = _T18ImportantTextAr
            end
        end)
    end
end



  if _T18ArBtn and _T18EnBtn then
      function T18MarkActive(lang)
          local _arActive = (lang == "ar")
          
          _T18ArBtn.BackgroundColor3 = _arActive and Color3.fromRGB(220, 220, 220) or Color3.fromRGB(28, 28, 28)
          _T18ArBtn.TextColor3       = _arActive and Color3.fromRGB(20, 20, 20)    or Color3.fromRGB(160, 160, 160)
          _T18ArBtn.Text             = (_arActive and "✔  " or "     ") .. "🇸🇦  العربية"
          
          _T18EnBtn.BackgroundColor3 = (not _arActive) and Color3.fromRGB(220, 220, 220) or Color3.fromRGB(28, 28, 28)
          _T18EnBtn.TextColor3       = (not _arActive) and Color3.fromRGB(20, 20, 20)    or Color3.fromRGB(160, 160, 160)
          _T18EnBtn.Text             = ((not _arActive) and "✔  " or "     ") .. "🇺🇸  English"
          
          if _T18LangSelectorBtn then
              _T18LangSelectorBtn.Text = _arActive and "🌐  اللغة  ▾" or "🌐  Language  ▾"
          end
          
          if _T18ColorBtn then
              _T18ColorBtn.Text = _arActive and "🎨  اللون  ▾" or "🎨  Color  ▾"
          end
      end

      _T18ArBtn.MouseButton1Click:Connect(function()
          if _T18Lang == "ar" then
              pcall(function() _T18ArBtn.Parent.Visible = false end)
              if _T18ColorBtn then
                  TweenService:Create(_T18ColorBtn,
                      TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                      { Position = UDim2.new(0, 12, 0, 158) }):Play()
              end
              return
          end
          T18ApplyLang("ar")
          T18MarkActive("ar")
          pcall(function() _T18ArBtn.Parent.Visible = false end)
          if _T18ColorBtn then
              TweenService:Create(_T18ColorBtn,
                  TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                  { Position = UDim2.new(0, 12, 0, 158) }):Play()
          end
      end)

      _T18EnBtn.MouseButton1Click:Connect(function()
          if _T18Lang == "en" then
              pcall(function() _T18EnBtn.Parent.Visible = false end)
              if _T18ColorBtn then
                  TweenService:Create(_T18ColorBtn,
                      TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                      { Position = UDim2.new(0, 12, 0, 158) }):Play()
              end
              return
          end
          T18ApplyLang("en")
          T18MarkActive("en")
          pcall(function() _T18EnBtn.Parent.Visible = false end)
          if _T18ColorBtn then
              TweenService:Create(_T18ColorBtn,
                  TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                  { Position = UDim2.new(0, 12, 0, 158) }):Play()
          end
      end)

      T18MarkActive("ar")
  end
  


