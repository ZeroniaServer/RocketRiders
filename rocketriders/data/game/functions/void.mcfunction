#death message
tellraw @a ["",{"selector":"@s"},{"text":" fell out of the world"}]

#non-spectators statistics
scoreboard players add @s[team=!Spectator] FellVoid 1
scoreboard players add @s[team=!Spectator] deaths 1
scoreboard players add @s[team=!Spectator] death 1

#non-spectators lose all effects and get immunity effects
effect clear @s[team=!Spectator]
effect give @s[team=!Spectator] resistance 1 200 true
effect give @s[team=!Spectator] instant_health 1 200 true
effect give @s[team=!Spectator] fire_resistance 4 200 true

#non-spectators get no fall damage
scoreboard players set @s[team=!Spectator] voidNoFallCount 0
effect give @s[scores={voidNoFallCount=0}] slow_falling 1 1 true
scoreboard players add @s[scores={voidNoFallCount=0..4}] voidNoFallCount 1
effect clear @s[scores={voidNoFallCount=5}] slow_falling
scoreboard players reset @s[scores={voidNoFallCount=5}] voidNoFallCount

#teleport non-spectators
tp @s[team=Blue] 12 64 -66 0 0
tp @s[team=Yellow] 12 64 66 -180 0

#teleport spectators
tp @s[team=Spectator] 12 200 0.5 90 90