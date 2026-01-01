##Regeneration timer - regenerates health at a customized rate
scoreboard players add @s[scores={regenTimer=0..59}] regenTimer 1
execute if entity @s[scores={regenTimer=10}] run gamerule naturalRegeneration true
execute if entity @s[scores={regenTimer=20}] run gamerule naturalRegeneration false
execute if entity @s[scores={regenTimer=40}] run gamerule naturalRegeneration true
execute if entity @s[scores={regenTimer=50}] run gamerule naturalRegeneration false
scoreboard players set @s[scores={regenTimer=60..}] regenTimer 0