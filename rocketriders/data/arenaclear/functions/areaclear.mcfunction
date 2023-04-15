##################################
## AREACLEAR: The main function ##
## for beginning an Arena Clear ##
##################################

##Repeating settings
tag @s[scores={RepeatSettings=2..}] add Repeat
execute if entity @s[tag=Repeat,tag=!RepeatForever] run schedule function arenaclear:notifyrepeat_indimension 3t append

##Appropriate tags for Arena Clear state
tag @s remove GameStarted

##Summon AECs for tracking/block sweeping
execute if score @s bMissileCount matches 1.. run function arenaclear:prepareblue
execute if score @s yMissileCount matches 1.. run function arenaclear:prepareyellow
execute if score @s splashCount matches 1.. run function arenaclear:preparesplash
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

##Kill all necessary entities and clear utility structures
kill @e[predicate=custom:indimension,type=fireball]
kill @e[predicate=custom:indimension,type=area_effect_cloud,tag=endFireballAEC]
kill @e[predicate=custom:indimension,type=snowball]
kill @e[predicate=custom:indimension,type=arrow]
kill @e[predicate=custom:indimension,type=marker,tag=Vortex]
kill @e[predicate=custom:indimension,type=armor_stand,tag=VortexItem]
kill @e[predicate=custom:indimension,type=chicken]
kill @e[predicate=custom:indimension,type=tnt]
kill @e[predicate=custom:indimension,type=tnt_minecart]
kill @e[predicate=custom:indimension,type=creeper]
kill @e[predicate=custom:indimension,type=dragon_fireball]
kill @e[predicate=custom:indimension,type=potion,tag=splash]
kill @e[predicate=custom:indimension,type=item]
kill @e[predicate=custom:indimension,type=ender_pearl]
kill @e[predicate=custom:indimension,type=firework_rocket,tag=BlueNova]
kill @e[predicate=custom:indimension,type=firework_rocket,tag=YellowNova]
kill @e[predicate=custom:indimension,type=marker,tag=novatracker]
execute as @e[predicate=custom:indimension,type=marker,tag=obsidianshield] at @s run function everytick:obsidian_shield_break
execute as @e[predicate=custom:indimension,type=marker,tag=blueobtracker] at @s run function everytick:obsidian_shield_break
execute as @e[predicate=custom:indimension,type=marker,tag=yellowobtracker] at @s run function everytick:obsidian_shield_break
kill @e[predicate=custom:indimension,type=area_effect_cloud,tag=tempobshield]
execute if entity @s[scores={canopyCount=1..}] run function arenaclear:preparecanopy
execute if entity @s[scores={shieldCount=1..}] run function arenaclear:prepareshield
kill @e[predicate=custom:indimension,type=marker,tag=YellowPlatform]
kill @e[predicate=custom:indimension,type=marker,tag=BluePlatform]
kill @e[predicate=custom:indimension,type=marker,tag=BlueObshield]
kill @e[predicate=custom:indimension,type=marker,tag=YellowObshield]
kill @e[predicate=custom:indimension,type=marker,tag=BlueFireball]
kill @e[predicate=custom:indimension,type=marker,tag=YellowFireball]
kill @e[predicate=custom:indimension,type=marker,tag=missile]
kill @e[predicate=custom:indimension,type=marker,tag=surprising]

##Begin recursive SmartClear process
function arenaclear:superspeed

##Close off Modification Room
execute as @e[predicate=custom:indimension,type=marker,tag=ControlRoom] at @s run tp @a[predicate=custom:indimension,distance=..15] -43 211 78 90 0
fill -57 201 84 -70 201 72 barrier replace air

##Generate list of Game Rules
function arenaclear:gamerulelist

##Prepare Item RNG timer for next game
scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= 20 MaxItemSec
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
scoreboard players set @s[tag=Minute] RandomItem 1197

##Remove Traveler tags
tag @a[predicate=custom:indimension] remove beenOnYellow
tag @a[predicate=custom:indimension] remove beenOnBlue
tag @a[predicate=custom:indimension] remove beenOnBoth

##Remove join cancel from join pads
schedule function game:uncancelpads_indimension 2t append

##Add flag that game just cleared (briefly locks joinpads)
tag @s add JustCleared

##Stop all sounds
#execute as @a[predicate=custom:indimension] run function everytick:stopsounds