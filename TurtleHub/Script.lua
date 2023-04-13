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
     A_26 = "Pet072",
     A_27 = "Pet078",
     A_28 = "Pet079",
     A_29 = "Pet083",
     A_30 = "Pet084"
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
      B_15 = "Pet072",
      B_16 = "Pet080",
      B_17 = "Pet085",
      B_18 = ""
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
      C_15 = "Pet073",
      C_16 = "Pet081",
      C_17 = "Pet085"
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
      D_15 = "Pet074",
      D_16 = "Pet082",
      D_17 = "Pet087"
}

function Delay(Marks)
        wait(Marks)
end

_G.Settings = {
      PetWorkspace_1 = "",
      PetWorkspace_2 = "",
      PetWorkspace_3 = "",
      PetWorkspace_4 = "",
      PetWorkspace_5 = "",
      Chest_V = false,
      SwingModV2 = false,
      DealDamageString = false,
      Rebirth = false,
      EggStatus = "",
      EggIgnoreRare = "",
      EggHatch = false,
      RoundCount = 0,
      Coin = false,
      Race = false,
      Reward_124 = false,
      toggle_1 = false,
      toggle_2 = false,
      toggle_3 = false,
      toggle_4 = false,
      toggle_5 = false,
      toggle_6 = false,
      toggle_7 = false,
      toggle_8 = false,
      toggle_9 = false,
      toggle_10 = false,
      toggle_11 = false,
      toggle_12 = false,
      toggle_13 = false,
      text_1 = "",
      text_2 = "",
      text_3 = "",
      text_4 = "",
      text_5 = "",
      text_6 = "",
      text_7 = "",
      text_8 = "",
      text_9 = "",
      text_10 = "",
      text_11 = "",
      text_12 = "",
      text_13 = "",
      text_14 = "",
      text_15 = "",
      text_16 = "",
      EquipPetDelay = 5,
      EquipSwordDelay = 5,
      EquipA_1 = false,
      EquipA_2 = false,
      IndexClaim = false
}

if not game:IsLoaded() then
    game.Loaded:Wait()
end
local a = "Turtle Settings"
local b = "SettingsJSON.lua"
function saveSettings()
    local c = game:GetService("HttpService")
    local d = c:JSONEncode(_G.Settings)
    if writefile then
        if isfolder(a) then
            writefile(a .. "+" .. b, d)
        else
            makefolder(a)
            writefile(a .. "+" .. b, d)
        end
    end
end
function loadSettings()
    local c = game:GetService("HttpService")
    if isfile(a .. "+" .. b) then
        _G.Settings = c:JSONDecode(readfile(a .. "+" .. b))
    end
end
loadSettings()
-- _G.Settings.toggle_1

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

local S15 = T1:AddSection({
Name = "Auto Claim INDEX"
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
Name = "Equip",
Icon = "rbxassetid://",
PremiumOnly = false
})

local S9 = T4:AddSection({
Name = "Auto Equip (SWORD)"
})

local S14 = T4:AddSection({
Name = "Auto Equip (PET)"
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

S9:AddTextbox({
Name = "Auto Equip Delay (Number)",
Default = "5",
TextDisappear = true,
Callback = function(Value)
      _G.Settings.EquipSwordDelay = Value
      saveSettings()
  end    
})

S9:AddToggle({
Name = "Auto Equip best sword",
Default = _G.Settings.toggle_10,
Callback = function(Value)
     _G.Settings.EquipA_1 = Value
     saveSettings()
     while Delay(_G.Settings.EquipSwordDelay) do
         if _G.Settings.EquipA_1 == false then break end
     game:GetService("ReplicatedStorage").Remotes.RE_WeaponEquipBest:FireServer()
  end
end
})

S14:AddTextbox({
Name = "Auto Equip Delay (Number)",
Default = "5",
TextDisappear = true,
Callback = function(Value)
      _G.Settings.EquipPetDelay = Value
      saveSettings()
  end    
})

S14:AddToggle({
Name = "Auto Equip best pet",
Default = _G.Settings.toggle_11,
Callback = function(Value)
     _G.Settings.EquipA_2 = Value
     saveSettings()
     while Delay(_G.Settings.EquipPetDelay) do
         if _G.Settings.EquipA_2 == false then break end
     local args = {
    [1] = true
     }

    game:GetService("ReplicatedStorage").Remotes.RE_EquipBest:FireServer(unpack(args))
  end
end
})

S15:AddToggle({
Name = "Auto Claim INDEX (1 - 12)",
Default = _G.Settings.toggle_12,
Callback = function(Value)
       _G.Settings.IndexClaim = Value
       saveSettings()
       while Delay() do
         if _G.Settings.IndexClaim == false then break end
         local Index_1 = {
        [1] = "Index001" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_1))
         local Index_2 = {
        [1] = "Index002" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_2))
         local Index_3 = {
        [1] = "Index003" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_3))
         local Index_4 = {
        [1] = "Index004" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_4))
         local Index_5 = {
        [1] = "Index005" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_5))
         local Index_6 = {
        [1] = "Index006" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_6))
         local Index_7 = {
        [1] = "Index007" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_7))
         local Index_8 = {
        [1] = "Index008" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_8))
         local Index_9 = {
        [1] = "Index009" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_9))
         local Index_10 = {
        [1] = "Index010" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_10))
         local Index_11 = {
        [1] = "Index011" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_11))
         local Index_12 = {
        [1] = "Index012" -- 12
         }

       game:GetService("ReplicatedStorage").Remotes.RE_PetIndexRewardClaimed:FireServer(unpack(Index_12))
   end
end
})

S5:AddDropdown({
Name = "Select Pet ID (20%)",
Default = _G.Settings.text_1,
Options = PetTable,
Callback = function(Value)
      _G.Settings.PetWorkspace_1 = Value
      saveSettings()
end    
})

S5:AddDropdown({
Name = "Select Pet ID (40%)",
Default = _G.Settings.text_2,
Options = PetTable,
Callback = function(Value)
      _G.Settings.PetWorkspace_2 = Value
      saveSettings()
end    
})

S5:AddDropdown({
Name = "Select Pet ID (60%)",
Default = _G.Settings.text_3,
Options = PetTable,
Callback = function(Value)
      _G.Settings.PetWorkspace_3 = Value
      saveSettings()
end    
})

S5:AddDropdown({
Name = "Select Pet ID (80%)",
Default = _G.Settings.text_4,
Options = PetTable,
Callback = function(Value)
      _G.Settings.PetWorkspace_4 = Value
      saveSettings()
end    
})

S5:AddDropdown({
Name = "Select Pet ID (100%)",
Default = _G.Settings.text_5,
Options = PetTable,
Callback = function(Value)
      _G.Settings.PetWorkspace_5 = Value
      saveSettings()
end    
})

S7:AddToggle({
Name = "Auto claim boss chest",
Default = _G.Settings.toggle_1,
Callback = function(Value)
     _G.Settings.Chest_V = Value
     saveSettings()
while wait() do
     if _G.Settings.Chest_V == false then break end
game:GetService("ReplicatedStorage").Remotes.RE_ClaimBox:FireServer()
end
end    
})

S7:AddButton({
Name = "Spawn Boss (2 Hours)",
Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").WorldMain.Machines.Monster.Position)
      wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.RE_SummonBoss:FireServer()
  end    
})

S12:AddToggle({
Name = "Auto Farm POWER",
Default = _G.Settings.toggle_2,
Callback = function(Value)
     _G.Settings.SwingModV2 = Value
     saveSettings()
     while wait() do
        if _G.Settings.SwingModV2 == false then break end
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
Default = _G.Settings.toggle_3,
Callback = function(Value)
      _G.Settings.DealDamageString = Value
      saveSettings()
      while wait(1) do
         if _G.Settings.DealDamageString == false then break end
      game:GetService("ReplicatedStorage").Remotes.RE_TakeDamage:FireServer()
   end
end
})

S8:AddToggle({
Name = "Auto Rebirth",
Default = _G.Settings.toggle_4,
Callback = function(Value)
     _G.Settings.Rebirth = Value
     saveSettings()
while wait() do
     if _G.Settings.Rebirth == false then break end
game:GetService("ReplicatedStorage").Remotes.RE_Rebirth:FireServer()
end
end    
})

S5:AddButton({
Name = "Shiny (Must be 100%)",
Callback = function()
saveSettings()
if PetWorkspace_1 and PetWorkspace_2 and PetWorkspace_3 and PetWorkspace_4 and PetWorkspace_5 then
local ShinyPet = {
    [1] = 2,
    [2] = {
        [1] = _G.Settings.PetWorkspace_1, -- 20
        [2] = _G.Settings.PetWorkspace_2, -- 40
        [3] = _G.Settings.PetWorkspace_3, -- 60
        [4] = _G.Settings.PetWorkspace_4, -- 80
        [5] = _G.Settings.PetWorkspace_5 -- 100
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
Default = _G.Settings.text_6, 
Options = {"Draw001", "Draw002", "Draw003", "Draw004", "Draw005", "Draw006", "Draw007", "Draw008", "Draw009", "Draw010", "Draw011", "Draw012", "Draw013", "Draw014", "Draw015", "Draw016", "Draw017", "Draw018", "Draw019", "Draw020", "Draw021"}, 
Callback = function(Value)
      _G.Settings.EggStatus = Value
      saveSettings()
end    
})



S4:AddDropdown({
Name = "Auto Ignore",
Default = _G.Settings.text_7,
Options = {"Common and Uncommon", "Epic", "Legendary", "Mythical"},
Callback = function(Value)
      _G.Settings.EggIgnoreRare = Value
      saveSettings()
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
Default = _G.Settings.toggle_5,
Callback = function(Value)
    _G.Settings.EggHatch = Value
while wait() do
    if _G.Settings.EggHatch == false then break end
    if _G.Settings.EggIgnoreRare == "Common and Uncommon" then
local A_1 = {
    [1] = "Hatch",
    [2] = _G.Settings.EggStatus,
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
        [27] = Common.A_27,
        [28] = Common.A_28,
        [29] = Common.A_29,
        [30] = Common.A_30     
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
if _G.Settings.EggIgnoreRare == "Epic" then
local A_1 = {
    [1] = "Hatch",
    [2] = _G.Settings.EggStatus,
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
        [42] = Epic.B_16,
        [43] = Epic.B_17,
        [44] = Common.A_27,
        [45] = Common.A_28,
        [46] = Common.A_29,
        [47] = Common.A_30
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
if _G.Settings.EggIgnoreRare == "Legendary" then
local A_1 = {
    [1] = "Hatch",
    [2] = _G.Settings.EggStatus,
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
        [27] = Common.A_27,
        [28] = Common.A_28,
        [29] = Common.A_29,
        [30] = Common.A_30,
        [31] = Epic.B_1,
        [32] = Epic.B_2,
        [33] = Epic.B_3,
        [34] = Epic.B_4,
        [35] = Epic.B_5,
        [36] = Epic.B_6,
        [37] = Epic.B_7,
        [38] = Epic.B_8,
        [39] = Epic.B_9,
        [40] = Epic.B_10,
        [41] = Epic.B_11,
        [44] = Epic.B_12,
        [45] = Epic.B_13,
        [46] = Epic.B_14,
        [47] = Epic.B_15,
        [48] = Epic.B_16,
        [49] = Epic.B_17,
        [50] = Legendary.C_1,
        [51] = Legendary.C_2,
        [52] = Legendary.C_3,
        [53] = Legendary.C_4,
        [54] = Legendary.C_5,
        [55] = Legendary.C_6,
        [56] = Legendary.C_7,
        [57] = Legendary.C_8,
        [58] = Legendary.C_9,
        [59] = Legendary.C_10,
        [60] = Legendary.C_11,
        [61] = Legendary.C_12,
        [62] = Legendary.C_13,
        [63] = Legendary.C_14,
        [64] = Legendary.C_15,
        [65] = Legendary.C_16,
        [66] = Legendary.C_17
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
if _G.Settings.EggIgnoreRare == "Mythical" then
local A_1 = {
    [1] = "Hatch",
    [2] = _G.Settings.EggStatus,
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
        [42] = Epic.B_16,
        [43] = Epic.B_17,
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
        [71] = Mythical.D_15,
        [71] = Common.A_27,
        [72] = Common.A_28,
        [73] = Common.A_29,
        [74] = Common.A_30,
        [75] = Epic.B_17,
        [76] = Legendary.C_16,
        [77] = Legendary.C_17,
        [78] = Mythical.D_16,
        [79] = Mythical.D_17
    }
}

game:GetService("ReplicatedStorage").Remotes.RE_Draw:FireServer(unpack(A_1))
end
-- end for while true do
end
saveSettings()
end    
})

_G.Settings.RoundCount = 0
S2:AddLabel("Farm coins by: C4#4172")

S2:AddButton({
Name = "Add Round",
Callback = function()
     _G.Settings.RoundCount = _G.Settings.RoundCount + 1
     saveSettings()
     OrionLib:MakeNotification({
Name = "Round Cound",
Content = _G.Settings.RoundCount,
Image = "rbxassetid://",
Time = 5
})
end
})

S2:AddButton({
Name = "Reset Round Count",
Callback = function()
     _G.Settings.RoundCount = 0
     saveSettings()
     OrionLib:MakeNotification({
Name = "Round Cound",
Content = _G.Settings.RoundCount,
Image = "rbxassetid://",
Time = 5
})
end
})

S2:AddToggle({
Name = "Enable coin farming",
Default = _G.Settings.toggle_6,
Callback = function(Value)
    _G.Settings.Coin = Value
    saveSettings()
while wait() do
    if _G.Settings.Coin == false then break end
local AG2 = {
    [1] = _G.Settings.RoundCount
}

game:GetService("ReplicatedStorage").Remotes.RF_WeaponDraw:InvokeServer(unpack(AG2))
end
end    
})

S3:AddToggle({
Name = "Race",
Default = _G.Settings.toggle_7,
Callback = function(Value)
    _G.Settings.Race = Value
    saveSettings()
while wait() do
    if _G.Settings.Race == false then break end
game:GetService("ReplicatedStorage").Remotes.RF_JoinRace:InvokeServer()
end
end    
})

S10:AddToggle({
Name = "Auto claim rewards",
Default = _G.Settings.toggle_8,
Callback = function(Value)
     _G.Settings.Reward_124 = Value
     saveSettings()
     while wait() do
        if _G.Settings.Reward_124 == false then break end
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
Default = _G.Settings.text_8,
Options = {"Levi", "Tanjirou", "Fox", "Kid Goku", "Super Saiyan Goku", "Goku Ultra Naluri"},
Callback = function(Value)
     _G.Settings.SkinsCallback = Value
     saveSettings()
end
})

S11:AddToggle({
Name = "Equip and Unequip skin",
Default = _G.Settings.toggle_9,
Callback = function(Value)
saveSettings()
if _G.Settings.SkinsCallback == "Levi" then
local a_1 = {
    [1] = "Skin001",
    [2] = Value
}

game:GetService("ReplicatedStorage").Remotes.RE_SkinEquip:FireServer(unpack(a_1))
end
if _G.Settings.SkinsCallback == "Tanjirou" then
local a_1 = {
    [1] = "Skin002",
    [2] = Value
}

game:GetService("ReplicatedStorage").Remotes.RE_SkinEquip:FireServer(unpack(a_1))
end
if _G.Settings.SkinsCallback == "Fox" then
local a_1 = {
    [1] = "Skin003",
    [2] = Value
}

game:GetService("ReplicatedStorage").Remotes.RE_SkinEquip:FireServer(unpack(a_1))
end
if _G.Settings.SkinsCallback == "Kid Goku" then
local a_1 = {
    [1] = "Skin004",
    [2] = Value
}

game:GetService("ReplicatedStorage").Remotes.RE_SkinEquip:FireServer(unpack(a_1))
end
if _G.Settings.SkinsCallback == "Super Saiyan Goku" then
local a_1 = {
    [1] = "Skin005",
    [2] = Value
}

game:GetService("ReplicatedStorage").Remotes.RE_SkinEquip:FireServer(unpack(a_1))
end
if _G.Settings.SkinsCallback == "Goku Ultra Naluri" then
local a_1 = {
    [1] = "Skin006",
    [2] = Value
}

game:GetService("ReplicatedStorage").Remotes.RE_SkinEquip:FireServer(unpack(a_1))
end
end
})

T5:AddParagraph("Statistic (Leaderboard)","Power: " .. tostring(game.Players.LocalPlayer.leaderstats.Power.Value) .. "\nCoins; " .. tostring(game.Players.LocalPlayer.leaderstats.Coins.Value) .. "\nRebirth: " .. tostring(game.Players.LocalPlayer.leaderstats.Rebirths.Value) .. "")

T6:AddParagraph("Auto Ignore","Auto Ignore is an automatic delete pet \nwhich means the pet you choose will be deleted, \nFor example, you choose: Mythical \nthe pet will be automatically removed from Common until Mythical")






