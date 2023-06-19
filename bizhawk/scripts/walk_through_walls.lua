-- made by spikestuff in the TASVideos.org discord

while true do
if memory.readbyte(0xBEC41) == 3 then -- L2 + R2
    memory.write_s16_le(0x2FE9E, 4096); -- Enabled
    else if memory.readbyte(0xBEC41) == 12 then -- L1 + R1
        memory.write_s16_le(0x2FE9E, 1088); -- Disabled
    end
end
emu.frameadvance() end;