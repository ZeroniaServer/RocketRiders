#Cancel parkour
execute if predicate rr:has_parkour if entity @s[tag=inParkour] run return run tellraw @s {color:"red",text:"You are already at the parkour course. You can use the clock in your hotbar to restart the course."}

#Teleports
effect clear @s night_vision
tp @s 65 205 -3 0 0

#Sound and effects
execute at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute unless entity @s[tag=hideParticles] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 100 force @s
execute unless entity @s[tag=hideParticles] at @s run particle minecraft:flash{color:0xFFFFFF} ~ ~1 ~ 0 0 0 0 5 force @s
