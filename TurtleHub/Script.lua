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

local Vector = Vector3.new
local CFrame = CFrame.new

function RemoveVIP()
for _,Protocol in pairs(game:GetService("Workspace").WorldMain.Vip:GetChildren()) do
    if Protocol == "VIPBarrier" then
    Protocol.Size = Vector(0, 0, 0)
end
end
end

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

local S10 = T1:AddSection({
Name = "Auto claim gift / reward"
})

local S11 = T1:AddSection({
Name = "Buy and Use or Equip skin"
})

local S12 = T1:AddSection({
Name = "Auto Farm POWER (Bug Fixed)"
})

local S13 = T1:AddSection({
Name = "Auto Damage (only effective for bosses)"
})

local S7 = T1:AddSection({
Name = "Claim Boss Chest & Spawn Boss"
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

local T4 = Window:MakeTab({
Name = "VIP Area",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local S9 = T4:AddSection({
Name = "Remove VIP Barrier"
})

local T5 = Window:MakeTab({
Name = "Statistic",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

S9:AddButton({
Name = "Remove VIP Barrier",
Callback = function()
      RemoveVIP()
  end    
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

S7:AddButton({
Name = "Spawn Boss (2 Hours)",
Callback = function()
      game:GetService("ReplicatedStorage").Remotes.RE_SummonBoss:FireServer()
  end    
})

S12:AddToggle({
Name = "Auto Farm POWER",
Default = false,
Callback = function(Value)
     SwingModV2 = Value
     while wait() do
        if SwingModV2 == false then break end
        for _,EnemyID in pairs(game:GetService("Workspace").Orbs:GetChildren()) do
         table.insert(SlimeID, EnemyID.Name)
      end
      wait()
      local SM2 = {
    [1] = {
        [1] = SlimeID[math.random(1, #SlimeID)]
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Swing:FireServer(unpack(SM2))
   end
end
})

S13:AddToggle({
Name = "Auto Damage",
Default = false,
Callback = function(Value)
      DealDamageString = Value
      while wait(1) do
         if DealDamageString == false then break end
      game:GetService("ReplicatedStorage").Remotes.RE_TakeDamage:FireServer()
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
Options = {"Draw001", "Draw002", "Draw003", "Draw004", "Draw005", "Draw006", "Draw007", "Draw008", "Draw009", "Draw010", "Draw011", "Draw012", "Draw013", "Draw014", "Draw015"},
Callback = function(Value)
      EggStatus = Value
end    
})

S4:AddToggle({
Name = "Ignore Common and Uncommon (auto delete)",
Default = false,
Callback = function(Value)
       IgnoreCommonandUn = Value
end
})

S4:AddToggle({
Name = "Ignore Epic (auto delete)",
Default = false,
Callback = function(Value)
       IgnoreEpic = Value
end
})

S4:AddToggle({
Name = "Ignore Legendary (auto delete)",
Default = false,
Callback = function(Value)
       IgnoreLegendary = Value
end
})

S4:AddToggle({
Name = "Ignore Mythical (auto delete)",
Default = false,
Callback = function(Value)
       IgnoreMythical = Value
end
})

S4:AddToggle({
Name = "Hatch (Auto)",
Default = false,
Callback = function(Value)
    EggHatch = Value
while wait() do
    if EggHatch == false then break end
    if IgnoreCommonandUn then
local A_1 = {
    [1] = "Hatch",
    [2] = EggStatus,
    [3] = {
        [1] = "Pet001",
        [2] = "Pet002",
        [3] = "Pet006",
        [4] = "Pet007",
        [5] = "Pet011",
        [6] = "Pet001",
        [7] = "Pet002",
        [8] = "Pet006",
        [9] = "Pet007",
        [10] = "Pet011",
        [11] = "Pet012",
        [12] = "Pet018",
        [13] = "Pet019",
        [14] = "Pet023",
        [15] = "Pet024",
        [16] = "Pet030",
        [17] = "Pet031",
        [18] = "Pet035",
        [19] = "Pet036",
        [20] = "Pet042",
        [21] = "Pet043",
        [22] = "Pet047",
        [23] = "Pet048",
        [24] = "Pet054",
        [25] = "Pet055",
        [26] = "Pet059",
        [27] = "Pet060"
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
if IgnoreEpic then
local A_1 = {
    [1] = "Hatch",
    [2] = EggStatus,
    [3] = {
        [1] = "Pet003",
        [2] = "Pet008",
        [3] = "Pet013",
        [4] = "Pet020",
        [5] = "Pet025",
        [6] = "Pet032",
        [7] = "Pet037",
        [8] = "Pet044",
        [9] = "Pet049",
        [10] = "Pet056",
        [11] = "Pet061" -- end
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
if IgnoreLegendary then
local A_1 = {
    [1] = "Hatch",
    [2] = EggStatus,
    [3] = {
        [1] = "Pet004",
        [2] = "Pet009",
        [3] = "Pet014",
        [4] = "Pet021",
        [5] = "Pet026",
        [6] = "Pet033",
        [7] = "Pet038",
        [8] = "Pet045",
        [9] = "Pet050",
        [10] = "Pet057",
        [11] = "Pet062" -- end
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
if IgnoreMythical then
local A_1 = {
    [1] = "Hatch",
    [2] = EggStatus,
    [3] = {
        [1] = "Pet005",
        [2] = "Pet010",
        [3] = "Pet015",
        [4] = "Pet022",
        [5] = "Pet027",
        [6] = "Pet034",
        [7] = "Pet039",
        [8] = "Pet046",
        [9] = "Pet051",
        [10] = "Pet058",
        [11] = "Pet063" -- end
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
-- end for while true do
end
end    
})

S1:AddTextbox({
Name = "how many rounds?",
Default = "1",
TextDisappear = true,
Callback = function(Value)
   if tonumber(Value) then
      SwordRoundService = Value
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
  if SwordRoundService then
local AG1 = {
    [1] = SwordRoundService
}

game:GetService("ReplicatedStorage").Remotes.RF_WeaponDraw:InvokeServer(unpack(AG1))
else
OrionLib:MakeNotification({
Name = "Error",
Content = "you must fill in 'How many rounds?' to get a very strong sword.",
Image = "rbxassetid://",
Time = 5
})
end
end
end    
})

S2:AddTextbox({
Name = "how many rounds?",
Default = "1",
TextDisappear = true,
Callback = function(Value)
   if tonumber(Value) then
      RoundService = Value
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
  if RoundService then
local AG2 = {
    [1] = RoundService
}

game:GetService("ReplicatedStorage").Remotes.RF_WeaponDraw:InvokeServer(unpack(AG2))
else
OrionLib:MakeNotification({
Name = "Error",
Content = "you have to fill in 'How many rounds?' to get more coins.",
Image = "rbxassetid://",
Time = 5
})
end
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

S10:AddToggle({
Name = "Auto claim rewards",
Default = false,
Callback = function(Value)
     Reward_124 = Value
     while wait() do
        if Reward_124 == false then break end
local R1 = {
    [1] = "Rewards001"
}

game:GetService("ReplicatedStorage").Remotes.RE_ClaimReward:FireServer(unpack(R1))
wait()
local R2 = {
    [1] = "Rewards002"
}

game:GetService("ReplicatedStorage").Remotes.RE_ClaimReward:FireServer(unpack(R2))
wait()
local R3 = {
    [1] = "Rewards003"
}

game:GetService("ReplicatedStorage").Remotes.RE_ClaimReward:FireServer(unpack(R3))
wait()
local R4 = {
    [1] = "Rewards004"
}

game:GetService("ReplicatedStorage").Remotes.RE_ClaimReward:FireServer(unpack(R4))
wait()
local R5 = {
    [1] = "Rewards005"
}

game:GetService("ReplicatedStorage").Remotes.RE_ClaimReward:FireServer(unpack(R5))
wait()
local R6 = {
    [1] = "Rewards006"
}

game:GetService("ReplicatedStorage").Remotes.RE_ClaimReward:FireServer(unpack(R6))
end
end
})

S11:AddDropdown({
Name = "Select Skin",
Default = "none",
Options = {"Levi", "Tanjirou", "Fox"},
Callback = function(Value)
     SkinsCallback = Value
end
})

S11:AddToggle({
Name = "Equip and Unequip skin",
Default = false,
Callback = function(Value)
if SkinsCallback == "Levi" then
local a_1 = {
    [1] = "Skin001",
    [2] = Value
}

game:GetService("ReplicatedStorage").Remotes.RE_SkinEquip:FireServer(unpack(a_1))
end
if SkinsCallback == "Tanjirou" then
local a_1 = {
    [1] = "Skin002",
    [2] = Value
}

game:GetService("ReplicatedStorage").Remotes.RE_SkinEquip:FireServer(unpack(a_1))
end
if SkinsCallback == "Fox" then
local a_1 = {
    [1] = "Skin003",
    [2] = Value
}

game:GetService("ReplicatedStorage").Remotes.RE_SkinEquip:FireServer(unpack(a_1))
end
end
})

T5:AddParagraph("Statistic (Leaderboard)","Power: " .. tostring(game.Players.LocalPlayer.leaderstats.Power.Value) .. "\nCoins; " .. tostring(game.Players.LocalPlayer.leaderstats.Coins.Value) .. "\nRebirth: " .. tostring(game.Players.LocalPlayer.leaderstats.Rebirths.Value) .. "")








