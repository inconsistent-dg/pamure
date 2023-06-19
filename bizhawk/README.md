hello! fun klonoa stuff

# random addresses

```
106AB0 = 3-1 gondola timer
    does a full cycle, then repeats at 239616
    increases by 2048 each frame, ~2 seconds before reset

10674C = absolute Y value

0BF03C = something for klonoa's hair
    0BF038 another thing for him

10A360 = pause timer cycle

10E5E8 = heart cycle

10EE74, another timer but not sure for what
    10A294 as well
```

```
5-2 timer ram address: 0BF524 (2 bytes). 
values of 0-1198, so you have 20 seconds of a full day or night before change. of course when you enter a room this timer pauses, but whatever it was last is saved. so if you have 600 stored when you enter, you have 598 frames after leaving before the next change. if you have 700 entering, you leave with 498 frames before change. the night >> day, or vice versa, transition is included in the timer. so you have to wait for the transition to finish 100% before enemies can be picked up again and platforms can be walked on.

for some reason, the timer address itself does not pause (it goes to 0 when entering a room). so the ram value itself does not hold the last time, but another value does, and i guess it copies that back to the real one when it needs to

the timer doesn't immediately stop when you hold up (or another direction) to enter a room, so the fade out is not when the timer stops

when it resets to 1, you have 3 frames to grab an enemy before they turn to night variants.
```


10674C	d	h	0	MainRAM	
0BF020	d	h	0	MainRAM	
1757D0	d	u	0	MainRAM	
0BF028	w	u	0	MainRAM	
02FE9E	w	u	0	MainRAM	
10675C	d	s	0	MainRAM	
0BF068	d	s	0	MainRAM	
0BF06C	d	s	0	MainRAM	