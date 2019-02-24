# turn dead players into spectators.
gamemode spectator @a[scores={dead-p=1..}]
scoreboard players reset @a[scores={dead-p=1..}] dead-p

# start of game countdown!
scoreboard players add * text-timer 1
title @a[scores={countdown-p=1,text-timer=1}] title 5
title @a[scores={countdown-p=1,text-timer=41}] title 4
title @a[scores={countdown-p=1,text-timer=81}] title 3
title @a[scores={countdown-p=1,text-timer=121}] title 2
title @a[scores={countdown-p=1,text-timer=161}] title 1
title @a[scores={countdown-p=1,text-timer=201}] title "Go!"
scoreboard players reset @a[scores={text-timer=201..}] countdown-p
scoreboard players reset @a[scores={text-timer=201..}] text-timer
