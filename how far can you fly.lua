getgenv().autocoins = false
getgenv().autoSpeedMultiplier = false
getgenv().autoBrew = false
getgenv().autoRebirth = false

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local Window = Library:CreateWindow({
   
    Title = 'xdeformedbread#4207 | 🎃How Far Can You Fly? 🎃',
    Center = true, 
    AutoShow = true,
})



local playerHead = game.Players.LocalPlayer.Character.Head

function aCoins()
    while getgenv().autocoins == true do
        for i, v in pairs(game:GetService("Workspace").BasicCoins:GetDescendants()) do
            if v.Name =="TouchInterest" and v.Parent then
                firetouchinterest(playerHead, v.Parent, 0)
                wait() -- set any cd
                firetouchinterest(playerHead, v.Parent, 1)
            end
        end
    end
end

function asm()
    while getgenv().autoSpeedMultiplier == true do wait()
        game:GetService("ReplicatedStorage").BuySM:FireServer()
    end
end
function aBrew()
    while getgenv().autoBrew == true do wait()
        game:GetService("ReplicatedStorage").BuyNormalWitchBrew:FireServer()
    end
end
function aRebirth()
    while getgenv().autoRebirth == true do wait()
        game:GetService("ReplicatedStorage").Rebirth:FireServer()
    end
end

function aEnd()
    while getgenv().far == true do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.963388442993164, 2.999999761581421, -30.77537727355957)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.479015827178955, 1.018686056137085, -187451.65625)
    end
end



local Tabs = {
  
    Main = Window:AddTab('Main'), 
}


local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Main Features')

LeftGroupBox:AddToggle('AutoCoin', {
    Text = 'Auto Grab Coins',
    Default = false, 
    Tooltip = 'Automaticly grabs coins for you', 
})

Toggles.AutoCoin:OnChanged(function(bool)
    getgenv().autocoins = bool
        print("auto click is on")
            if bool then
        aCoins()
    end
end)

LeftGroupBox:AddToggle('AutoSpeedMultiplier', {
    Text = 'Auto Speed Multiplier',
    Default = false, 
    Tooltip = 'Automaticly buys speed multiplier for you', 
})
Toggles.AutoSpeedMultiplier:OnChanged(function(bool)
    getgenv().autoSpeedMultiplier = bool
        print("auto click is on")
            if bool then
        asm()
    end
end)

LeftGroupBox:AddToggle('AutoBrew', {
    Text = 'Auto Brew',
    Default = false, 
    Tooltip = 'Automaticly buys brew for you', 
})
Toggles.AutoBrew:OnChanged(function(bool)
    getgenv().autoBrew = bool
        print("auto click is on")
            if bool then
        aBrew()
    end
end)
LeftGroupBox:AddToggle('AutoRebirth', {
    Text = 'Auto Rebirth',
    Default = false, 
    Tooltip = 'Automaticly rebirths for you', 
})
Toggles.AutoRebirth:OnChanged(function(bool)
    getgenv().autoRebirth = bool
        print("auto click is on")
            if bool then
        aRebirth()
    end
end)
LeftGroupBox:AddDivider()

    
        
--  -6.479015827178955, 1.018686056137085, -187451.65625

-- -25.963388442993164, 2.999999761581421, -30.77537727355957