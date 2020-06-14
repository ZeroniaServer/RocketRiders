#Repeating settings
tag @s[scores={RepeatSettings=2..}] add Repeat
execute if entity @s[tag=Repeat] run schedule function arenaclear:notifyrepeat 3t append
scoreboard players remove @s[scores={RepeatSettings=1..}] RepeatSettings 1
#notify start if first game has been played (already notifies from sign in mod room)
execute if entity @s[tag=Repeat,tag=firstGameRepeated] unless entity @s[tag=!rngMissile,tag=!rngUtil] as @a at @s run function arenaclear:notifystart
tag @s[scores={RepeatSettings=1..},tag=Repeat] add firstGameRepeated
tag @s[scores={RepeatSettings=0}] remove Repeat
tag @s[tag=!Repeat] remove firstGameRepeated

tag @s add EditedSettings
execute as @e[tag=SmartClearAECblue,tag=!SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearBlue"],Duration:360}
execute as @e[tag=SmartClearAECblue,tag=SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearBlue","ArenaClearCata"],Duration:360}
summon area_effect_cloud 11 63 6 {Tags:["ArenaClearChecker"],Duration:360}
execute as @e[tag=SmartClearAECyellow,tag=!SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearYellow"],Duration:360}
execute as @e[tag=SmartClearAECyellow,tag=SmartClearAECcata] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaClearYellow","ArenaClearCata"],Duration:360}

function items:tetrisreset

tag @s remove GameStarted
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
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -21 26 30 -10 0 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -9 26 30 1 0 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 2 26 30 12 0 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 13 26 30 23 0 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 24 26 30 34 0 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 35 26 30 45 0 -30 air replace light_gray_stained_glass

execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -21 70 30 -10 27 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -9 70 30 1 27 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 2 70 30 12 27 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 13 70 30 23 27 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 24 70 30 34 27 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 35 70 30 45 27 -30 air replace light_gray_stained_glass

execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -21 114 30 -10 71 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -9 114 30 1 71 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 2 114 30 12 71 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 13 114 30 23 71 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 24 114 30 34 71 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 35 114 30 45 71 -30 air replace light_gray_stained_glass

execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -21 158 30 -10 115 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -9 158 30 1 115 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 2 158 30 12 115 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 13 158 30 23 115 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 24 158 30 34 115 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 35 158 30 45 115 -30 air replace light_gray_stained_glass

execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -21 174 30 -10 159 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill -9 174 30 1 159 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 2 174 30 12 159 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 13 174 30 23 159 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 24 174 30 34 159 -30 air replace light_gray_stained_glass
execute if entity @s[tag=!Molerat,tag=WasMolerat] run fill 35 174 30 45 159 -30 air replace light_gray_stained_glass

tag @s[tag=!Molerat,tag=WasMolerat] remove WasMolerat

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

execute as @e[tag=ControlRoom] at @s run tp @a[distance=..15] -43 211 78 90 0
fill -57 201 84 -70 201 72 barrier replace air
fill 6 53 -6 18 53 6 air
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
scoreboard players set @s[tag=Minute] RandomItem 1197