tag @s remove FakeGameEnd
scoreboard players set @s fakeendtimer 0

execute if entity @s[scores={bMissileCount=1..}] run function arenaclear:prepareblue
execute if entity @s[scores={yMissileCount=1..}] run function arenaclear:prepareyellow
execute if entity @s[scores={splashCount=1..}] run function arenaclear:preparesplash
summon marker 11 63 6 {Tags:["ArenaClearChecker"]}

function items:tetrisreset

fill -14 84 66 38 64 48 air
fill -14 84 -66 38 64 -48 air
fill 32 63 -51 -9 37 -45 air
fill -9 63 51 33 38 46 air
fill -11 59 -73 35 36 -75 air
fill -11 59 73 35 36 75 air
fill -14 13 66 38 33 48 air
fill -14 13 -66 38 33 -48 air

#Molerat
execute if entity @s[tag=!Molerat] run fill -12 36 -12 36 61 12 air

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
kill @e[predicate=custom:indimension,type=marker,tag=blueobtracker]
kill @e[predicate=custom:indimension,type=marker,tag=yellowobtracker]
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

function arenaclear:superspeed

tp @a[predicate=custom:indimension,team=Blue] 12 64 -66 0 0
tp @a[predicate=custom:indimension,team=Yellow] 12 64 66 180 0
execute as @a[predicate=custom:indimension,team=Blue,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[predicate=custom:indimension,team=Yellow,predicate=custom:is_on_fire] at @s run function game:putoutfire
clear @a[predicate=custom:indimension,team=Blue] #custom:clear
clear @a[predicate=custom:indimension,team=Blue] crossbow{nova:1b}
clear @a[predicate=custom:indimension,team=Yellow] #custom:clear
clear @a[predicate=custom:indimension,team=Yellow] crossbow{nova:1b}
gamemode survival @a[predicate=custom:indimension,team=Blue]
gamemode survival @a[predicate=custom:indimension,team=Yellow]

scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= 20 MaxItemSec
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,team=Blue] run function game:givegear
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,team=Yellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,team=Blue] run function servermode:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,team=Yellow] run function servermode:givegear