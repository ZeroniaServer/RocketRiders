##Regeneration timer - regenerates health at a customized rate
scoreboard players add @s[scores={regenTimer=0..59}] regenTimer 1
execute if entity @s[scores={regenTimer=10}] run gamerule minecraft:natural_health_regeneration true
execute if entity @s[scores={regenTimer=20}] run gamerule minecraft:natural_health_regeneration false
execute if entity @s[scores={regenTimer=40}] run gamerule minecraft:natural_health_regeneration true
execute if entity @s[scores={regenTimer=50}] run gamerule minecraft:natural_health_regeneration false
scoreboard players set @s[scores={regenTimer=60..}] regenTimer 0