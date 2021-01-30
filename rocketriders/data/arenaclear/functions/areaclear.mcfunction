##################################
## AREACLEAR: The main function ##
## for beginning an Arena Clear ##
##################################

##Repeating settings
tag @s[scores={RepeatSettings=2..}] add Repeat
execute if entity @s[tag=Repeat] run schedule function arenaclear:notifyrepeat 3t append
scoreboard players remove @s[scores={RepeatSettings=1..}] RepeatSettings 1
tag @s[scores={RepeatSettings=0}] remove Repeat

##Appropriate tags for Arena Clear state
tag @s add EditedSettings
tag @s remove GameStarted

##Summon AECs for tracking/block sweeping
execute as @s[scores={bMissileCount=1..}] run function arenaclear:prepareblue
execute as @s[scores={yMissileCount=1..}] run function arenaclear:prepareyellow
execute as @s[scores={splashCount=1..}] run function arenaclear:preparesplash
summon area_effect_cloud 11 63 6 {Tags:["ArenaClearChecker"],Duration:360}

##Reset Tetris progress for Item RNG
function items:tetrisreset

##Remove decorations
fill -14 84 66 38 64 48 air
fill -14 84 -66 38 64 -48 air
fill 32 63 -51 -9 37 -45 air
fill -9 63 51 33 38 46 air
fill -11 59 -73 35 36 -75 air
fill -11 59 73 35 36 75 air
fill -14 13 66 38 33 48 air
fill -14 13 -66 38 33 -48 air

##Molerat clearing
execute if entity @s[tag=!Molerat,tag=WasMolerat] run function arenaclear:moleratclear

##Kill all necessary entities and clear utility structures
kill @e[type=fireball]
kill @e[type=snowball]
kill @e[type=arrow]
kill @e[tag=Vortex,type=area_effect_cloud]
kill @e[tag=VortexItem,type=armor_stand]
kill @e[type=chicken]
kill @e[type=tnt]
kill @e[type=tnt_minecart]
kill @e[type=creeper]
kill @e[type=dragon_fireball]
kill @e[tag=blueobtracker,type=area_effect_cloud]
kill @e[tag=yellowobtracker,type=area_effect_cloud]
kill @e[tag=splash,type=potion]
kill @e[type=item]
kill @e[type=ender_pearl]
kill @e[tag=BlueNova,type=firework_rocket]
kill @e[tag=YellowNova,type=firework_rocket]
execute as @e[tag=blueobsidianshield,type=area_effect_cloud] at @s run function everytick:obsidian_shield_break
execute as @e[tag=yellowobsidianshield,type=area_effect_cloud] at @s run function everytick:obsidian_shield_break
execute as @s[scores={canopyCount=1..}] run function arenaclear:preparecanopy
execute as @s[scores={shieldCount=1..}] run function arenaclear:prepareshield
kill @e[tag=YellowPlatform,type=area_effect_cloud]
kill @e[tag=BluePlatform,type=area_effect_cloud]
kill @e[tag=BlueObshield,type=area_effect_cloud]
kill @e[tag=YellowObshield,type=area_effect_cloud]
kill @e[tag=BlueFireball,type=area_effect_cloud]
kill @e[tag=YellowFireball,type=area_effect_cloud]
kill @e[tag=missile,type=area_effect_cloud]
kill @e[tag=surprising,type=area_effect_cloud]

##Begin recursive SmartClear process
function arenaclear:superspeed

##Close off Modification Room
execute as @e[tag=ControlRoom,type=area_effect_cloud] at @s run tp @a[distance=..15] -43 211 78 90 0
fill -57 201 84 -70 201 72 barrier replace air
fill 6 53 -6 18 53 6 air

##Prepare Item RNG timer for next game
scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= 20 MaxItemSec
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
scoreboard players set @s[tag=Minute] RandomItem 1197

##Remove Traveler tags
tag @a remove beenOnYellow
tag @a remove beenOnBlue
tag @a remove beenOnBoth