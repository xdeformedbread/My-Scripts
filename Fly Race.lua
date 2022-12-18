--globals
getgenv().grabOrb = false
getgenv().autoRebirth = false
getgenv().EarthEnd = false
getgenv().SpaceEnd = false
getgenv().SummerEnd = false
getgenv().CandyEnd = false
--earth laps stuff
getgenv().EarthLaps = false
getgenv().EarthLapsRebirth = false
getgenv().EarthLapsRebirthLoop = false

--space laps stuff
getgenv().SpaceLaps = false
getgenv().SpaceLapsRebirth = false
getgenv().SpaceLapsRebirthLoop = false

--summer laps stuff
getgenv().SummerLaps = false
getgenv().SummerLapsRebirth = false
getgenv().SummerLapsRebirthLoop = false

--candy laps stuff
getgenv().CandyLaps = false
getgenv().CandyLapsRebirth = false
getgenv().CandyLapsRebirthLoop = false

--ui and what not
local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()
local remotePath = game:GetService("ReplicatedStorage").RemoteEvent
local button = game:GetService("Players").LocalPlayer.PlayerGui.Rebirths.Main.Bottom.Confirm

--functions and stuff
function gOrb()
	while getgenv().grabOrb == true do wait(.2)
		for i,v in pairs (game:GetService("Workspace").Camera:GetDescendants()) do
			if v:IsA("Part") then
				game:GetService"Players".LocalPlayer.Character:FindFirstChild"HumanoidRootPart".CFrame = v.CFrame
			end
		end
	end
end

function aRebirth()
	while getgenv().autoRebirth == true do wait()
		local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
			for i,v in pairs(events) do
    			for i,v in pairs(getconnections(button[v])) do
        		v:Fire()
			end
		end
	end
end

Eggs = {}
	for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
		if not table.find(Eggs, v.Name) then
		table.insert(Eggs, v.Name)
	end
end

function eEnd()
    while getgenv().EarthEnd == true do 
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(233.318314, 35.8945541, -836.438965)
        	wait(1)
        		local plr = game.Players.LocalPlayer
					local tween_s = game:service"TweenService";
						local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                            function tp(...)
                                local tic_k = tick();
                                    local params = {...};
                                        local cframe = CFrame.new(params[1],params[2],params[3]);
                                    local tween,err = pcall(function()
                                local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                            tween:Play();
                        end)
                    if not tween then return err end
                end
            tp(200268.53125, -1.1599936485290527, -839.9467163085938) -- Coordinates go here 
        wait(4)
    end
end

function sEnd()
    while getgenv().SpaceEnd == true do 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(263.680573, 35.8949547, -101000)
            wait(1)
                local plr = game.Players.LocalPlayer
                    local tween_s = game:service"TweenService";
                        local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                            function tp(...)
                                local tic_k = tick();
                                    local params = {...};
                                        local cframe = CFrame.new(params[1],params[2],params[3]);
                                    local tween,err = pcall(function()
                                local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                            tween:Play();
                        end)
                    if not tween then return err end
                end
            tp(200180.703125, -1.1600016355514526, -128894.8828125) -- Coordinates go here 
        wait(4)
    end
end

function sumEnd()
	while getgenv().SummerEnd == true do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(155.972946, 35.8949623, 104719.469)
            wait(1)
                local plr = game.Players.LocalPlayer
                    local tween_s = game:service"TweenService";
                        local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                            function tp(...)
                                local tic_k = tick();
                                    local params = {...};
                                        local cframe = CFrame.new(params[1],params[2],params[3]);
                                    local tween,err = pcall(function()
                                local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                            tween:Play();
                        end)
                    if not tween then return err end
                end
            tp(150196.015625, -1.1600397825241089, 104712.9140625) -- Coordinates go here 
        wait(4)
    end
end

function cEnd()
    while getgenv().CandyEnd == true do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(234.356964, 35.8947296, -201997.078)
            wait(1)
                local plr = game.Players.LocalPlayer
                    local tween_s = game:service"TweenService";
                        local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                            function tp(...)
                                local tic_k = tick();
                                    local params = {...};
                                        local cframe = CFrame.new(params[1],params[2],params[3]);
                                    local tween,err = pcall(function()
                                local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                            tween:Play();
                        end)
                    if not tween then return err end
                end
            tp(150245.453125, -0.48052823543548584, -202000.671875) -- Coordinates go here 
        wait(4)
    end
end

function LapsEarth()
    --loop laps
        local amount = selectedAmountEarth
            for i = 1,amount do task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150383.578, -3.85999489, -836.438965)
                    end
                        --tp to launch
                            while EarthLaps == true do wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(235.836014, 35.8945541, -836.438965)
                                    task.wait()
                                        break
                                            end
                                                wait()
                                                    --then tp to end
                                                        local plr = game.Players.LocalPlayer
                                                            local tween_s = game:service"TweenService";
                                                    local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                                                function tp(...)
                                            local tic_k = tick();
                                        local params = {...};
                                    local cframe = CFrame.new(params[1],params[2],params[3]);
                                local tween,err = pcall(function()
                            local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                        tween:Play();
                    end)
                if not tween then return err end
            end
        tp(150251.171875, -0.48070579767227173, -844.1124877929688) -- Coordinates go here
    wait(2)
end

function LapsSpace()
--loop laps
    local amount = selectedAmountSpace
        for i = 1,amount do task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150411.25, -3.86004639, -100999.984)
                end
                    --tp to launch
                        while SpaceLaps == true do wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(263.680573, 35.8949547, -101000)
                                task.wait()
                                    break
                                        end
                                            wait()
                                                --then tp to end
                                                    local plr = game.Players.LocalPlayer
                                                        local tween_s = game:service"TweenService";
                                                    local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                                                function tp(...)
                                            local tic_k = tick();
                                        local params = {...};
                                    local cframe = CFrame.new(params[1],params[2],params[3]);
                                local tween,err = pcall(function()
                            local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                        tween:Play();
                    end)
                if not tween then return err end
            end
        tp(150277.03125, -0.4807571768760681, -100996.6328125) -- Coordinates go here
    wait(2)
end

function LapsSummer()
--loop laps
    local amount = selectedAmountSummer
        for i = 1,amount do task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150306.594, -3.86003876, 104719.453)
                end
                    --tp to launch
                        while SummerLaps == true do wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(158.490646, 35.8949623, 104719.469)
                                task.wait()
                                    break
                                        end
                                            wait()
                                                --then tp to end
                                                    local plr = game.Players.LocalPlayer
                                                        local tween_s = game:service"TweenService";
                                                    local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                                                function tp(...)
                                            local tic_k = tick();
                                        local params = {...};
                                    local cframe = CFrame.new(params[1],params[2],params[3]);
                                local tween,err = pcall(function()
                            local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                        tween:Play();
                    end)
                if not tween then return err end
            end
        tp(150173.71875, -0.48074954748153687, 104714.671875) -- Coordinates go here
    wait(2)
end

function LapsCandy()
    --loop laps
        local amount = selectedAmountCandy
            for i = 1,amount do task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150383.578, -3.8598175, -201997.094)
                    end
                        --tp to launch
                            while CandyLaps == true do wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(234.356964, 35.8947296, -201997.078)
                                    task.wait()
                                        break
                                            end
                                                wait()
                                                    --then tp to end
                                                        local plr = game.Players.LocalPlayer
                                                            local tween_s = game:service"TweenService";
                                                    local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                                                function tp(...)
                                            local tic_k = tick();
                                        local params = {...};
                                    local cframe = CFrame.new(params[1],params[2],params[3]);
                                local tween,err = pcall(function()
                            local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                        tween:Play();
                    end)
                if not tween then return err end
            end
        tp(150245.453125, -0.48052823543548584, -202000.671875) -- Coordinates go here
    wait(2)
end



--rebirth farm stuff
function RebirthFarmEarth()
    while getgenv().EarthLapsRebirthLoop == true do task.wait()
        --loop laps
            local amount = selectedAmountEarthRebirth
                for i = 1,amount do task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150383.578, -3.85999489, -836.438965)
                        end
                            --tp to launch
                                while EarthLapsRebirth == true do wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(235.836014, 35.8945541, -836.438965)
                                        task.wait()
                                            break
                                                end
                                                    wait()
                                                        --then tp to end
                                                            local plr = game.Players.LocalPlayer
                                                            local tween_s = game:service"TweenService";
                                                        local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                                                    function tp(...)
                                                local tic_k = tick();
                                            local params = {...};
                                        local cframe = CFrame.new(params[1],params[2],params[3]);
                                    local tween,err = pcall(function()
                                local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                            tween:Play();
                        end)
                    if not tween then return err end
                end
            tp(150251.171875, -0.48070579767227173, -844.1124877929688) -- Coordinates go here
        wait(2)
        local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
		for i,v in pairs(events) do
    		for i,v in pairs(getconnections(button[v])) do
        	v:Fire()
            wait(2)
            end
        end
    end
end

function RebirthFarmSpace()
    while getgenv().SpaceLapsRebirthLoop == true do task.wait()
        --loop laps
            local amount = selectedAmountSpaceRebirth
                for i = 1,amount do task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150411.25, -3.86004639, -100999.984)
                        end
                            --tp to launch
                                while SpaceLapsRebirth == true do wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(263.680573, 35.8949547, -101000)
                                        task.wait()
                                            break
                                                end
                                                    wait()
                                                        --then tp to end
                                                            local plr = game.Players.LocalPlayer
                                                            local tween_s = game:service"TweenService";
                                                        local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                                                    function tp(...)
                                                local tic_k = tick();
                                            local params = {...};
                                        local cframe = CFrame.new(params[1],params[2],params[3]);
                                    local tween,err = pcall(function()
                                local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                            tween:Play();
                        end)
                    if not tween then return err end
                end
            tp(150299.53125, -0.48075729608535767, -101003.265625) -- Coordinates go here
        wait(2)
        local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
		for i,v in pairs(events) do
    		for i,v in pairs(getconnections(button[v])) do
        	v:Fire()
            wait(2)
            end
        end
    end
end

function RebirthFarmSummer()
    while getgenv().SummerLapsRebirthLoop == true do task.wait()
        --loop laps
            local amount = selectedAmountSummerRebirth
                for i = 1,amount do task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150306.594, -3.86003876, 104719.453)
                        end
                            --tp to launch
                                while SummerLapsRebirth == true do wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(158.490646, 35.8949623, 104719.469)
                                        task.wait()
                                            break
                                                end
                                                    wait()
                                                        --then tp to end
                                                            local plr = game.Players.LocalPlayer
                                                            local tween_s = game:service"TweenService";
                                                        local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                                                    function tp(...)
                                                local tic_k = tick();
                                            local params = {...};
                                        local cframe = CFrame.new(params[1],params[2],params[3]);
                                    local tween,err = pcall(function()
                                local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                            tween:Play();
                        end)
                    if not tween then return err end
                end
            tp(150173.71875, -0.48074954748153687, 104714.671875) -- Coordinates go here
        wait(2)
        local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
		for i,v in pairs(events) do
    		for i,v in pairs(getconnections(button[v])) do
        	v:Fire()
            wait(2)
            end
        end
    end
end

function RebirthFarmCandy()
    while getgenv().CandyLapsRebirthLoop == true do task.wait()
    --loop laps
    local amount = selectedAmountCandyRebirth
            for i = 1,amount do task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150383.578, -3.8598175, -201997.094)
                    end
                        --tp to launch
                            while CandyLapsRebirth == true do wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(234.356964, 35.8947296, -201997.078)
                                    task.wait()
                                        break
                                            end
                                                wait()
                                                    --then tp to end
                                                        local plr = game.Players.LocalPlayer
                                                            local tween_s = game:service"TweenService";
                                                    local info = TweenInfo.new(1,Enum.EasingStyle.Linear);
                                                function tp(...)
                                            local tic_k = tick();
                                        local params = {...};
                                    local cframe = CFrame.new(params[1],params[2],params[3]);
                                local tween,err = pcall(function()
                            local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
                        tween:Play();
                    end)
                if not tween then return err end
            end
        tp(150245.453125, -0.48052823543548584, -202000.671875) -- Coordinates go here
    wait(2)
--fire the rebirth
    local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
		for i,v in pairs(events) do
    		for i,v in pairs(getconnections(button[v])) do
        	v:Fire()
            wait(2)
            end
        end
    end
end




--ui shit
local win = DiscordLib:Window("Raspberry Hub Premium")

local serv1 = win:Server("Main", "")

local main = serv1:Channel("Main/Earth World")

local eggc = serv1:Channel("Auto Buy Eggs")

local spaceworld = serv1:Channel("Space World")

local summerworld = serv1:Channel("Summer World")

local candyworld = serv1:Channel("Candy World")

local serv2 = win:Server("Credits/Misc", "")

local cred = serv2:Channel("Developer/Credits")

local misc = serv2:Channel("Misc")

main:Toggle(
    "Auto Grab Orbs",
    false,
    function(bool)
        getgenv().grabOrb = bool
		if bool then
        gOrb()
        end
    end
)

main:Seperator()

main:Toggle(
    "Auto Rebirth",
    false,
    function(bool)
        getgenv().autoRebirth = bool
		if bool then
        aRebirth()
        end
    end
)

main:Seperator()

main:Toggle(
    "Auto Go To End",
    false,
    function(bool)
        getgenv().EarthEnd = bool
		if bool then
        eEnd()
        end
    end
)
main:Label("Will glitch if you have high flight.")

main:Seperator()

main:Toggle(
    "Auto Do Selected Laps",
        false,
        function(bool)
        getgenv().EarthLaps = bool
        if bool then
        LapsEarth()
    end
end
)

main:Slider(
    "Select Lap Amount",
    0,
    10000,
    10,
    function(Value)
        selectedAmountEarth = Value
    end
)
main:Seperator()


main:Toggle(
    "Rebirth Farm With Selected Laps",
    false,
    function(bool)
        getgenv().EarthLapsRebirth = bool
        getgenv().EarthLapsRebirthLoop = bool
        if bool then
        RebirthFarmEarth()
    end
end
)

main:Slider(
    "Select Lap Amount",
    0,
    10000,
    10,
    function(Value)
        selectedAmountEarthRebirth = Value
    end
)



eggc:Toggle(
    "Auto Buy Selected Egg",
        false,
        function(bool)
            getgenv().AutoEgg = bool
                while getgenv().AutoEgg and task.wait() do
                local args = {
                [1] = getgenv().SelectedEgg,
                [2] = "Single"
                }
            game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
        end
    end
)

eggc:Dropdown(
    "Select Egg",
    Eggs,
    function(Option)
        getgenv().SelectedEgg = Option
end
)
eggc:Label("You have to be next to the egg.")

spaceworld:Toggle(
    "Auto Go To The End",
    false,
    function(bool)
        getgenv().SpaceEnd = bool
		if bool then
        sEnd()
        end
    end
)

spaceworld:Seperator()

spaceworld:Toggle(
    "Auto Do Selected Laps",
    false,
    function(bool)
        getgenv().SpaceLaps = bool
        if bool then
        LapsSpace()
    end
end
)

spaceworld:Slider(
    "Select Lap Amount",
    0,
    10000,
    10,
    function(Value)
        selectedAmountSpace = Value
    end
)

spaceworld:Seperator()

spaceworld:Toggle(
    "Rebirth Farm With Selected Laps",
    false,
    function(bool)
        getgenv().SpaceLapsRebirth = bool
        getgenv().SpaceLapsRebirthLoop = bool
        if bool then
        RebirthFarmSpace()
        
    end
end
)

spaceworld:Slider(
    "Select Lap Amount",
    0,
    10000,
    10,
    function(Value)
        selectedAmountSpaceRebirth = Value
    end
)

summerworld:Toggle(
    "Auto Go To The End",
    false,
    function(bool)
        getgenv().SummerEnd = bool
		if bool then
        sumEnd()
        end
    end
)

summerworld:Seperator()

summerworld:Toggle(
    "Auto Do Selected Laps",
    false,
        function(bool)
        getgenv().SummerLaps = bool
        if bool then
        LapsSummer()
    end
end
)

summerworld:Slider(
    "Select Lap Amount",
    0,
    10000,
    10,
    function(Value)
        selectedAmountSummer = Value
    end
)

summerworld:Seperator()
summerworld:Toggle(
    "Rebirth Farm With Selected Laps",
    false,
    function(bool)
        getgenv().SummerLapsRebirth = bool
        getgenv().SummerLapsRebirthLoop = bool
        if bool then
        RebirthFarmSummer()
        
    end
end
)

summerworld:Slider(
    "Select Lap Amount",
    0,
    10000,
    10,
    function(Value)
        selectedAmountSummerRebirth = Value
    end
)

candyworld:Toggle(
    "Auto Go To The End",
    false,
    function(bool)
        getgenv().CandyEnd = bool
		if bool then
        cEnd()
        end
    end
)

candyworld:Seperator()

candyworld:Toggle(
    "Auto Do Selected Laps",
    false,
    function(bool)
        getgenv().CandyLaps = bool
        if bool then
        LapsCandy()
    end
end
)

candyworld:Slider(
    "Select Lap Amount",
    0,
    10000,
    10,
    function(Value)
        selectedAmountCandy = Value
    end
)

candyworld:Seperator()

candyworld:Toggle(
    "Rebirth Farm With Selected Laps",
    false,
    function(bool)
        getgenv().CandyLapsRebirth = bool
        getgenv().CandyLapsRebirthLoop = bool
        if bool then
        RebirthFarmCandy()
        
    end
end
)

candyworld:Slider(
    "Select Lap Amount",
    0,
    10000,
    10,
    function(Value)
        selectedAmountCandyRebirth = Value
    end
)

cred:Label("This script was made by xdeformedbread#4207.\n This is the premium version!")

cred:Seperator()

cred:Button(
    "Copy Discord Server Link",
        function ()
        setclipboard("https://discord.gg/rgWdSEUmQ7")
			toclipboard("https://discord.gg/rgWdSEUmQ7")
	print("Join The Discord")
end
)

misc:Label("Yes there is an integrated anti-afk.")


--anti afk
repeat
    wait()
until game:IsLoaded()
wait()

if getconnections then
    for _, v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
        v:Disable()
    end
end

if not getconnections then
    game:GetService("Players").LocalPlayer.Idled:connect(
        function()
            game:GetService("VirtualUser"):ClickButton2(Vector2.new())
        end
    )
    print("poopy exploit")
end
