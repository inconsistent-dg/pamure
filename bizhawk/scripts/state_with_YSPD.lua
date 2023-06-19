klonoaStateAddr = 0x106790

local YSPD

states = {}
states[0] = "Loading..."
states[1835008] = "Entering..."
states[2031616] = "Leaving..."
states[262144] = "Vision Select"

states[720896] = "Idle"
states[2097152] = "Idle (On River)"
states[851968] = "Idle (Holding Moo)"

states[65536] = "Running"
states[1048576] = "Running (Holding Moo)"
states[1441792] = "Running (into wall...)"

states[131072] = "Airborne"
states[983040] = "Airborne (Holding Moo)"
states[1310720] = "Fluttering"
states[196608] = "Landing"

states[393216] = "Wind Bullet"
states[458752] = "Wind Bullet (Airborne)"

states[524288] = "Throwing Enemy"
states[1179648] = "Throwing Enemy" -- running
states[589824] = "Throwing Enemy (Airborne)"
states[1769472] = "Double Jumping"

states[2293760] = "Knockback"

-- why dont *you* take damage klonoa?
for i = 655360, 655369 do
  states[i] = "Taking Damage"
end

for i = 65530, 65539 do -- while running
 if i ~= 65536 then
  states[i] = "Taking Damage"
 end
end

for i = 720890, 720899 do -- while idle
 if i ~= 720896 then
  states[i] = "Taking Damage"
 end
end

states[458754] = "Taking Damage" -- while wind bulleting
states[1769473] = "Taking Damage" -- while double jumping
states[1310721] = "Taking Damage" -- while fluttering
states[1310722] = "Taking Damage" -- while fluttering
states[131073] = "Taking Damage" -- why have multiple values for taking damage while airborne
states[131074] = "Taking Damage" -- also while airborne
states[983041] = "Taking Damage" -- while airborne *and* holding an enemy
                                 -- i was gonna do another for loop here but i'm tired. 
                                 -- this one also has multiple values for the same thing 
states[786432] = "Dying! (Drown/Fall)"
states[2228224] = "Dying! (No Health)"
states[2490368] = "Dying! (Lava)"

klonoaState = states[0]

while true do 
    local klonoaInternalState = memory.read_s32_le(klonoaStateAddr)

    if states[klonoaInternalState] ~= nil then
        gui.drawText(20, 16, "STATE: " .. states[klonoaInternalState], "white", "black", 16, "Perfect DOS VGA 437", "Regular", "left", "middle")
    else
        gui.drawText(20, 16, "UNKNOWN VALUE: " .. klonoaInternalState, "white", "black", 16, "Perfect DOS VGA 437", "Regular", "left", "middle")
    end

    YSPD = memory.read_s32_le(0x10675C)
        gui.drawText(20, 32, "Y SPD: " .. YSPD, "white", "black", 16, "Perfect DOS VGA 437", "Regular", "left", "middle")

  emu.frameadvance()
end

-- while true do 
--     local klonoaInternalState = memory.read_s32_le(klonoaStateAddr)

--     if states[klonoaInternalState] ~= nil then
--         gui.text(100, 30, "STATE: " .. states[klonoaInternalState], "white")
--     else
--         gui.text(100, 30, "UNKNOWN VALUE: " .. klonoaInternalState, "white")
--     end

--   emu.frameadvance()
-- end