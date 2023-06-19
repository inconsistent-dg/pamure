-- useful for TAS. manually input on a fast aerial cycle, 
-- and let klon run in a direction, he will auto jump
-- next time he touches the ground

local GROUND  
local Frame

while true do
    GROUND = memory.read_u8( 0x0BF071 )
    Frame = emu.framecount()

    if GROUND == 1 then
        tastudio.applyinputchanges()
        tastudio.submitinputchange(Frame, "P1 X", true)
        tastudio.applyinputchanges()

        console.log("Jump insterted at frame", Frame)
    end
    
    emu.frameadvance()
end
