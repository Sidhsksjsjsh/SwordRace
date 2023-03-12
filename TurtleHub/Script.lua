-- Sword race

local Common = {
     A_1 = "Pet001",
     A_2 = "Pet002",
     A_3 = "Pet006",
     A_4 = "Pet007",
     A_5 = "Pet011",
     A_6 = "Pet012",
     A_7 = "Pet018",
     A_8 = "Pet019",
     A_9 = "Pet023",
     A_10 = "Pet024",
     A_11 = "Pet030",
     A_12 = "Pet031",
     A_13 = "Pet035",
     A_14 = "Pet036",
     A_15 = "Pet042",
     A_16 = "Pet043",
     A_17 = "Pet047",
     A_18 = "Pet048",
     A_19 = "Pet054",
     A_20 = "Pet055",
     A_21 = "Pet059",
     A_22 = "Pet060",
     A_23 = "Pet066",
     A_24 = "Pet067",
     A_25 = "Pet071",
     A_26 = "Pet072"
}

local Epic = {
      B_1 = "Pet003",
      B_2 = "Pet008",
      B_3 = "Pet013",
      B_4 = "Pet020",
      B_5 = "Pet025",
      B_6 = "Pet032",
      B_7 = "Pet037",
      B_8 = "Pet044",
      B_9 = "Pet049",
      B_10 = "Pet056",
      B_11 = "Pet061",
      B_12 = "Pet066",
      B_13 = "Pet067",
      B_14 = "Pet071",
      B_15 = "Pet072"
}

local Legendary = {
      C_1 = "Pet004",
      C_2 = "Pet009",
      C_3 = "Pet014",
      C_4 = "Pet021",
      C_5 = "Pet026",
      C_6 = "Pet033",
      C_7 = "Pet038",
      C_8 = "Pet045",
      C_9 = "Pet050",
      C_10 = "Pet057",
      C_11 = "Pet062",
      C_12 = "Pet067",
      C_13 = "Pet068",
      C_14 = "Pet072",
      C_15 = "Pet073"
}

local Mythical = {
      D_1 = "Pet005",
      D_2 = "Pet010",
      D_3 = "Pet015",
      D_4 = "Pet022",
      D_5 = "Pet027",
      D_6 = "Pet034",
      D_7 = "Pet039",
      D_8 = "Pet046",
      D_9 = "Pet051",
      D_10 = "Pet058",
      D_11 = "Pet063",
      D_12 = "Pet068",
      D_13 = "Pet069",
      D_14 = "Pet073",
      D_15 = "Pet074"
}

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
Icon = "rbxassetid://",
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
Icon = "rbxassetid://",
PremiumOnly = false
})

local S4 = T2:AddSection({
Name = "Egg (Auto Hatch)"
})

local T3 = Window:MakeTab({
Name = "Pet",
Icon = "rbxassetid://",
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
Icon = "rbxassetid://",
PremiumOnly = false
})

local S9 = T4:AddSection({
Name = "Remove VIP Barrier"
})

local T5 = Window:MakeTab({
Name = "Statistic",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T6 = Window:MakeTab({
Name = "Info",
Icon = "rbxassetid://",
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
Options = {"Draw001", "Draw002", "Draw003", "Draw004", "Draw005", "Draw006", "Draw007", "Draw008", "Draw009", "Draw010", "Draw011", "Draw012", "Draw013", "Draw014", "Draw015", "Draw017", "Draw018"},
Callback = function(Value)
      EggStatus = Value
end    
})

S4:AddDropdown({
Name = "Auto Ignore",
Default = "none",
Options = {"Common and Uncommon", "Epic", "Legendary", "Mythical"},
Callback = function(Value)
      EggIgnoreRare = Value
      OrionLib:MakeNotification({
Name = "What is Auto Ignore?",
Content = "Please read the Info section if you don't know what 'Auto Ignore' is.",
Image = "rbxassetid://",
Time = 5
})
end    
})

S4:AddToggle({
Name = "Hatch (Auto)",
Default = false,
Callback = function(Value)
    EggHatch = Value
while wait() do
    if EggHatch == false then break end
    if EggIgnoreRare == "Common and Uncommon" then
local A_1 = {
    [1] = "Hatch",
    [2] = EggStatus,
    [3] = {
        [1] = Common.A_1,
        [2] = Common.A_2,
        [3] = Common.A_3,
        [4] = Common.A_4,
        [5] = Common.A_5,
        [6] = Common.A_6,
        [7] = Common.A_7,
        [8] = Common.A_8,
        [9] = Common.A_9,
        [10] = Common.A_10,
        [11] = Common.A_11,
        [12] = Common.A_12,
        [13] = Common.A_13,
        [14] = Common.A_14,
        [15] = Common.A_15,
        [16] = Common.A_16,
        [17] = Common.A_17,
        [18] = Common.A_18,
        [19] = Common.A_19,
        [20] = Common.A_20,
        [21] = Common.A_21,
        [22] = Common.A_22,
        [23] = Common.A_23,
        [24] = Common.A_24,
        [25] = Common.A_25,
        [26] = Common.A_26
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
if EggIgnoreRare == "Epic" then
local A_1 = {
    [1] = "Hatch",
    [2] = EggStatus,
    [3] = {
        [1] = Common.A_1,
        [2] = Common.A_2,
        [3] = Common.A_3,
        [4] = Common.A_4,
        [5] = Common.A_5,
        [6] = Common.A_6,
        [7] = Common.A_7,
        [8] = Common.A_8,
        [9] = Common.A_9,
        [10] = Common.A_10,
        [11] = Common.A_11,
        [12] = Common.A_12,
        [13] = Common.A_13,
        [14] = Common.A_14,
        [15] = Common.A_15,
        [16] = Common.A_16,
        [17] = Common.A_17,
        [18] = Common.A_18,
        [19] = Common.A_19,
        [20] = Common.A_20,
        [21] = Common.A_21,
        [22] = Common.A_22,
        [23] = Common.A_23,
        [24] = Common.A_24,
        [25] = Common.A_25,
        [26] = Common.A_26,
        [27] = Epic.B_1,
        [28] = Epic.B_2,
        [29] = Epic.B_3,
        [30] = Epic.B_4,
        [31] = Epic.B_5,
        [32] = Epic.B_6,
        [33] = Epic.B_7,
        [34] = Epic.B_8,
        [35] = Epic.B_9,
        [36] = Epic.B_10,
        [37] = Epic.B_11,
        [38] = Epic.B_12,
        [39] = Epic.B_13,
        [40] = Epic.B_14,
        [41] = Epic.B_15
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
if EggIgnoreRare == "Legendary" then
local A_1 = {
    [1] = "Hatch",
    [2] = EggStatus,
    [3] = {
        [1] = Common.A_1,
        [2] = Common.A_2,
        [3] = Common.A_3,
        [4] = Common.A_4,
        [5] = Common.A_5,
        [6] = Common.A_6,
        [7] = Common.A_7,
        [8] = Common.A_8,
        [9] = Common.A_9,
        [10] = Common.A_10,
        [11] = Common.A_11,
        [12] = Common.A_12,
        [13] = Common.A_13,
        [14] = Common.A_14,
        [15] = Common.A_15,
        [16] = Common.A_16,
        [17] = Common.A_17,
        [18] = Common.A_18,
        [19] = Common.A_19,
        [20] = Common.A_20,
        [21] = Common.A_21,
        [22] = Common.A_22,
        [23] = Common.A_23,
        [24] = Common.A_24,
        [25] = Common.A_25,
        [26] = Common.A_26,
        [27] = Epic.B_1,
        [28] = Epic.B_2,
        [29] = Epic.B_3,
        [30] = Epic.B_4,
        [31] = Epic.B_5,
        [32] = Epic.B_6,
        [33] = Epic.B_7,
        [34] = Epic.B_8,
        [35] = Epic.B_9,
        [36] = Epic.B_10,
        [37] = Epic.B_11,
        [38] = Epic.B_12,
        [39] = Epic.B_13,
        [40] = Epic.B_14,
        [41] = Epic.B_15,
        [42] = Legendary.C_1,
        [43] = Legendary.C_2,
        [44] = Legendary.C_3,
        [45] = Legendary.C_4,
        [46] = Legendary.C_5,
        [47] = Legendary.C_6,
        [48] = Legendary.C_7,
        [49] = Legendary.C_8,
        [50] = Legendary.C_9,
        [51] = Legendary.C_10,
        [52] = Legendary.C_11,
        [53] = Legendary.C_12,
        [54] = Legendary.C_13,
        [55] = Legendary.C_14,
        [56] = Legendary.C_15
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
if EggIgnoreRare == "Mythical" then
local A_1 = {
    [1] = "Hatch",
    [2] = EggStatus,
    [3] = {
        [1] = Common.A_1,
        [2] = Common.A_2,
        [3] = Common.A_3,
        [4] = Common.A_4,
        [5] = Common.A_5,
        [6] = Common.A_6,
        [7] = Common.A_7,
        [8] = Common.A_8,
        [9] = Common.A_9,
        [10] = Common.A_10,
        [11] = Common.A_11,
        [12] = Common.A_12,
        [13] = Common.A_13,
        [14] = Common.A_14,
        [15] = Common.A_15,
        [16] = Common.A_16,
        [17] = Common.A_17,
        [18] = Common.A_18,
        [19] = Common.A_19,
        [20] = Common.A_20,
        [21] = Common.A_21,
        [22] = Common.A_22,
        [23] = Common.A_23,
        [24] = Common.A_24,
        [25] = Common.A_25,
        [26] = Common.A_26,
        [27] = Epic.B_1,
        [28] = Epic.B_2,
        [29] = Epic.B_3,
        [30] = Epic.B_4,
        [31] = Epic.B_5,
        [32] = Epic.B_6,
        [33] = Epic.B_7,
        [34] = Epic.B_8,
        [35] = Epic.B_9,
        [36] = Epic.B_10,
        [37] = Epic.B_11,
        [38] = Epic.B_12,
        [39] = Epic.B_13,
        [40] = Epic.B_14,
        [41] = Epic.B_15,
        [42] = Legendary.C_1,
        [43] = Legendary.C_2,
        [44] = Legendary.C_3,
        [45] = Legendary.C_4,
        [46] = Legendary.C_5,
        [47] = Legendary.C_6,
        [48] = Legendary.C_7,
        [49] = Legendary.C_8,
        [50] = Legendary.C_9,
        [51] = Legendary.C_10,
        [52] = Legendary.C_11,
        [53] = Legendary.C_12,
        [54] = Legendary.C_13,
        [55] = Legendary.C_14,
        [56] = Legendary.C_15,
        [57] = Mythical.D_1,
        [58] = Mythical.D_2,
        [59] = Mythical.D_3,
        [60] = Mythical.D_4,
        [61] = Mythical.D_5,
        [62] = Mythical.D_6,
        [63] = Mythical.D_7,
        [64] = Mythical.D_8,
        [65] = Mythical.D_9,
        [66] = Mythical.D_10,
        [67] = Mythical.D_11,
        [68] = Mythical.D_12,
        [69] = Mythical.D_13,
        [70] = Mythical.D_14,
        [71] = Mythical.D_15
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
-- end for while true do
end
end    
})

local RoundCount = 0
S2:AddLabel("Count: " .. RoundCount)

S2:AddButton({
Name = "Add Round",
Callback = function()
     RoundCount = RoundCount + 1
     CoolLabel:Set("Count: " .. RoundCount)
end
})

S2:AddButton({
Name = "Reset Round Count",
Callback = function()
     RoundCount = 0
     CoolLabel:Set("Count: " .. RoundCount)
end
})

S2:AddToggle({
Name = "Enable coin farming",
Default = false,
Callback = function(Value)
    Coin = Value
while wait() do
    if Coin == false then break end
local AG2 = {
    [1] = RoundCount
}

game:GetService("ReplicatedStorage").Remotes.RF_WeaponDraw:InvokeServer(unpack(AG2))
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

T6:AddParagraph("Auto Ignore","Auto Ignore is an automatic delete pet \nwhich means the pet you choose will be deleted, \nFor example, you choose: Mythical \nthe pet will be automatically removed from Common until Mythical")






