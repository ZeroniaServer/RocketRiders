tag @s remove FakeGameEnd
scoreboard players set @s fakeendtimer 0

execute as @e[tag=SmartClearAECblue,tag=!SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearBlue"],Duration:360}
execute as @e[tag=SmartClearAECblue,tag=SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearBlue","ArenaClearCata"],Duration:360}
summon area_effect_cloud 11 63 6 {Tags:["ArenaClearChecker"],Duration:360}
execute as @e[tag=SmartClearAECyellow,tag=!SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearYellow"],Duration:360}
execute as @e[tag=SmartClearAECyellow,tag=SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearYellow","ArenaClearCata"],Duration:360}

function items:tetrisreset

fill 23 64 54 1 71 58 air
fill 1 64 -54 23 71 -58 air
fill 32 63 -51 -9 37 -45 air
fill -9 63 51 33 38 46 air
fill 30 64 -61 24 84 -54 air
fill 0 64 -55 -7 84 -62 air
fill -7 64 55 1 84 62 air
fill 23 64 54 32 84 62 air
fill -11 59 -74 35 36 -74 air
fill -11 59 74 35 36 74 air

#Molerat
execute if entity @s[tag=!Molerat] run fill -12 36 -12 36 61 12 air

kill @e[type=fireball]
kill @e[type=snowball]
kill @e[type=arrow]
kill @e[tag=Vortex]
kill @e[tag=VortexItem]
kill @e[type=chicken]
kill @e[type=tnt]
kill @e[type=dragon_fireball]
kill @e[tag=obfireball]
kill @e[tag=FireballAS]
kill @e[tag=ObFireballAS]
kill @e[tag=blueobalone]
kill @e[tag=yellowobalone]
kill @e[tag=splash]
kill @e[type=item]

execute as @e[tag=blueobsidianshield] at @s run function everytick:obsidian_shield_break
execute as @e[tag=yellowobsidianshield] at @s run function everytick:obsidian_shield_break

execute as @e[tag=ClearShields] at @s run fill ~-3 ~-3 ~ ~3 ~3 ~ air destroy
kill @e[tag=ClearShields]
execute as @e[tag=Platform] at @s run fill ~-3 ~ ~-3 ~3 ~ ~3 air replace #minecraft:leaves
execute as @e[tag=Platform] at @s run fill ~ ~ ~ ~ ~1 ~ air
kill @e[tag=Platform]
kill @e[tag=YellowPlatform]
kill @e[tag=BluePlatform]

kill @e[tag=BlueNova]
kill @e[tag=YellowNova]

function arenaclear:superspeed

tp @a[team=Blue] 12 64 -66 0 0
tp @a[team=Yellow] 12 64 66 180 0
execute as @a[team=Blue,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[team=Yellow,predicate=custom:is_on_fire] at @s run function game:putoutfire
clear @a[team=Blue]
clear @a[team=Yellow]
gamemode survival @a[team=Blue]
gamemode survival @a[team=Yellow]

scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime

execute as @a[team=Blue] run function rr_ranked:game/givegear
execute as @a[team=Yellow] run function rr_ranked:game/givegear