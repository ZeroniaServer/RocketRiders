tag @e[tag=Selection] add EditedSettings
execute as @e[tag=SmartClearAECblue,tag=!SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearBlue"],Duration:360}
execute as @e[tag=SmartClearAECblue,tag=SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearBlue","ArenaClearCata"],Duration:360}
summon area_effect_cloud 11 63 6 {Tags:["ArenaClearChecker"],Duration:360}
execute as @e[tag=SmartClearAECyellow,tag=!SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearYellow"],Duration:360}
execute as @e[tag=SmartClearAECyellow,tag=SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearYellow","ArenaClearCata"],Duration:360}

tag @e[tag=Selection] remove GameStarted
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

kill @e[type=fireball]
kill @e[type=snowball]
kill @e[type=arrow]
kill @e[tag=Vortex]
kill @e[type=chicken]
kill @e[type=tnt]
kill @e[tag=obfireball]
kill @e[tag=FireballAS]
kill @e[tag=ObFireballAS]

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
kill @e[tag=BlueNovaAttach]
kill @e[tag=YellowNova]
kill @e[tag=YellowNovaAttach]

function arenaclear:superspeed

data merge entity @e[tag=AnnounceChanges,limit=1] {CustomNameVisible:0}
execute as @e[tag=ControlRoom] at @s run tp @a[distance=..15] -43 211 78 90 0
fill -57 201 84 -70 201 72 barrier replace air
fill 6 53 -6 18 53 6 air