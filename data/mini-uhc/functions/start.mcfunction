# Disable natural health regeneration.
gamerule naturalRegeneration false

# Shrink worldborder over 4 hours.
# TODO: Change speed dynamically somehow?
worldborder set 1000
worldborder set 50 14400

# Reset player status and inventory.
clear @a
effect clear @a
gamemode survival @a

# Scatter players.
spreadplayers 0 0 100 500 false @a
effect give @a minecraft:slowness 10 5
effect give @a minecraft:mining_fatigue 10 5
effect give @a minecraft:blindness 10 5
effect give @a minecraft:saturation 1 5
effect give @a minecraft:regeneration 130

# Start scoreboard trackers (see _load).
scoreboard objectives setdisplay list health
scoreboard players reset @a dead-p

# Display starting countdown (see _tick).
title @a times 0 25 10
scoreboard players set * text-timer 0
scoreboard players set * countdown-p 1