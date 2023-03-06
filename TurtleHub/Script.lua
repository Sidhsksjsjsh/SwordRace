-- Sword race

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()

local PetTable = {}
local SlimeID = {}

for _,PetID in pairs(game:GetService("Workspace").Pets:GetChildren()) do
    table.insert(PetTable, PetID.Name)
end

for _,CubeID in pairs(game:GetService("Workspace").Orbs:GetChildren()) do
    table.insert(SlimeID, CubeID.Name)
end

local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = true, ConfigFolder = "TurtleFi"})

local T1 = Window:MakeTab({
Name = "Farm",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local S1 = T1:AddSection({
Name = "sword farming"
})

local S2 = T1:AddSection({
Name = "coin farm"
})

local S3 = T1:AddSection({
Name = "Auto Race"
})

local S7 = T1:AddSection({
Name = "Claim Boss Chest or box"
})

local S8 = T1:AddSection({
Name = "Auto Rebirth"
})

local T2 = Window:MakeTab({
Name = "Egg",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local S4 = T2:AddSection({
Name = "Egg (Auto Hatch)"
})

local T3 = Window:MakeTab({
Name = "Pet",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local S5 = T3:AddSection({
Name = "Shiny"
})

local S6 = T3:AddSection({
Name = "Rainbow"
})

S5:AddDropdown({
Name = "Select Pet ID (20%)",
Default = "none",
Options = PetTable,
Callback = function(Value)
      PetWorkspace_1 = Value
end    
})

S5:AddDropdown({
Name = "Select Pet ID (40%)",
Default = "none",
Options = PetTable,
Callback = function(Value)
      PetWorkspace_2 = Value
end    
})

S5:AddDropdown({
Name = "Select Pet ID (60%)",
Default = "none",
Options = PetTable,
Callback = function(Value)
      PetWorkspace_3 = Value
end    
})

S5:AddDropdown({
Name = "Select Pet ID (80%)",
Default = "none",
Options = PetTable,
Callback = function(Value)
      PetWorkspace_4 = Value
end    
})

S5:AddDropdown({
Name = "Select Pet ID (100%)",
Default = "none",
Options = PetTable,
Callback = function(Value)
      PetWorkspace_5 = Value
end    
})

S7:AddToggle({
Name = "Auto claim boss chest",
Default = false,
Callback = function(Value)
     Chest_V = Value
while wait() do
     if Chest_V == false then break end
game:GetService("ReplicatedStorage").Remotes.RE_ClaimBox:FireServer()
end
end    
})

S8:AddToggle({
Name = "Auto Rebirth",
Default = false,
Callback = function(Value)
     Chest_V = Value
while wait() do
     if Chest_V == false then break end
game:GetService("ReplicatedStorage").Remotes.RE_Rebirth:FireServer()
end
end    
})

S5:AddButton({
Name = "Shiny (Must be 100%)",
Callback = function()
if PetWorkspace_1 and PetWorkspace_2 and PetWorkspace_3 and PetWorkspace_4 and PetWorkspace_5 then
local ShinyPet = {
    [1] = 2,
    [2] = {
        [1] = PetWorkspace_1, -- 20
        [2] = PetWorkspace_2, -- 40
        [3] = PetWorkspace_3, -- 60
        [4] = PetWorkspace_4, -- 80
        [5] = PetWorkspace_5 -- 100
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_PetFuse:FireServer(unpack(ShinyPet))
else
OrionLib:MakeNotification({
Name = "Error",
Content = "Your percentage has not reached 100% or you have not filled in everything (Select Pet ID)",
Image = "rbxassetid://",
Time = 5
})
end
end
})

S4:AddDropdown({
Name = "Select Egg",
Default = "none",
Options = {"Draw001", "Draw002", "Draw003", "Draw004", "Draw005", "Draw006", "Draw007", "Draw008", "Draw009", "Draw0010", "Draw011", "Draw012", "Draw013", "Draw014", "Draw015"},
Callback = function(Value)
      EggStatus = Value
end    
})

S4:AddToggle({
Name = "Hatch (Auto)",
Default = false,
Callback = function(Value)
    EggHatch = Value
while wait() do
    if EggHatch == false then break end
local AutoHatch = {
    [1] = "Hatch",
    [2] = EggStatus,
    [3] = {}
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(AutoHatch))
end
end    
})

S1:AddToggle({
Name = "Enable sword farming",
Default = false,
Callback = function(Value)
    Sword = Value
while wait() do
    if Sword == false then break end
game:GetService("ReplicatedStorage").Remotes.RF_WeaponDraw:InvokeServer(unpack(1))
end
end    
})

S2:AddToggle({
Name = "Enable coin farming",
Default = false,
Callback = function(Value)
    Coin = Value
while wait() do
    if Coin == false then break end
game:GetService("ReplicatedStorage").Remotes.RF_WeaponDraw:InvokeServer(unpack(2))
end
end    
})

S3:AddToggle({
Name = "Race",
Default = false,
Callback = function(Value)
    Race = Value
while wait() do
    if Race == false then break end
game:GetService("ReplicatedStorage").Remotes.RF_JoinRace:InvokeServer()
end
end    
})
