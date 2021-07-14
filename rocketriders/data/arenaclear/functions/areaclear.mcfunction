##################################
## AREACLEAR: The main function ##
## for beginning an Arena Clear ##
##################################

##Repeating settings
tag @s[scores={RepeatSettings=2..}] add Repeat
execute if entity @s[tag=Repeat] run schedule function arenaclear:notifyrepeat 3t append
scoreboard players remove @s[scores={RepeatSettings=1..}] RepeatSettings 1

##Appropriate tags for Arena Clear state
tag @s add EditedSettings
tag @s remove GameStarted

##Summon AECs for tracking/block sweeping
execute as @s[scores={bMissileCount=1..}] run function arenaclear:prepareblue
execute as @s[scores={yMissileCount=1..}] run function arenaclear:prepareyellow
execute as @s[scores={splashCount=1..}] run function arenaclear:preparesplash
summon marker 11 63 6 {Tags:["ArenaClearChecker"]}

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
kill @e[type=area_effect_cloud,tag=endFireballAEC]
kill @e[type=snowball]
kill @e[type=arrow]
kill @e[type=marker,tag=Vortex]
kill @e[type=armor_stand,tag=VortexItem]
kill @e[type=chicken]
kill @e[type=tnt]
kill @e[type=tnt_minecart]
kill @e[type=creeper]
kill @e[type=dragon_fireball]
kill @e[type=potion,tag=splash]
kill @e[type=item]
kill @e[type=ender_pearl]
kill @e[type=firework_rocket,tag=BlueNova]
kill @e[type=firework_rocket,tag=YellowNova]
execute as @e[type=marker,tag=blueobsidianshield] at @s run function everytick:obsidian_shield_break
execute as @e[type=marker,tag=yellowobsidianshield] at @s run function everytick:obsidian_shield_break
execute as @e[type=marker,tag=blueobtracker] at @s run function everytick:obsidian_shield_break
execute as @e[type=marker,tag=yellowobtracker] at @s run function everytick:obsidian_shield_break
execute as @s[scores={canopyCount=1..}] run function arenaclear:preparecanopy
execute as @s[scores={shieldCount=1..}] run function arenaclear:prepareshield
kill @e[type=marker,tag=YellowPlatform]
kill @e[type=marker,tag=BluePlatform]
kill @e[type=marker,tag=BlueObshield]
kill @e[type=marker,tag=YellowObshield]
kill @e[type=marker,tag=BlueFireball]
kill @e[type=marker,tag=YellowFireball]
kill @e[type=marker,tag=missile]
kill @e[type=marker,tag=surprising]

##Begin recursive SmartClear process
function arenaclear:superspeed
kill @e[type=marker,tag=checked]
kill @e[type=marker,tag=checking]

##Close off Modification Room
execute as @e[type=marker,tag=ControlRoom] at @s run tp @a[distance=..15] -43 211 78 90 0
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