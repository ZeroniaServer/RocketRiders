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
kill @e[type=marker,tag=blueobtracker]
kill @e[type=marker,tag=yellowobtracker]
kill @e[type=potion,tag=splash]
kill @e[type=item]
kill @e[type=ender_pearl]
kill @e[type=firework_rocket,tag=BlueNova]
kill @e[type=firework_rocket,tag=YellowNova]
kill @e[type=marker,tag=novatracker]
execute as @e[type=marker,tag=obsidianshield] at @s run function everytick:obsidian_shield_break
execute as @e[type=marker,tag=blueobtracker] at @s run function everytick:obsidian_shield_break
execute as @e[type=marker,tag=yellowobtracker] at @s run function everytick:obsidian_shield_break
kill @e[type=area_effect_cloud,tag=tempobshield]
execute if entity @s[scores={canopyCount=1..}] run function arenaclear:preparecanopy
execute if entity @s[scores={shieldCount=1..}] run function arenaclear:prepareshield
kill @e[type=marker,tag=YellowPlatform]
kill @e[type=marker,tag=BluePlatform]
kill @e[type=marker,tag=BlueObshield]
kill @e[type=marker,tag=YellowObshield]
kill @e[type=marker,tag=BlueFireball]
kill @e[type=marker,tag=YellowFireball]
kill @e[type=marker,tag=missile]
kill @e[type=marker,tag=surprising]

function arenaclear:superspeed
kill @e[type=marker,tag=checked]
kill @e[type=marker,tag=checking]

tp @a[team=Blue] 12 64 -66 0 0
tp @a[team=Yellow] 12 64 66 180 0
execute as @a[team=Blue,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[team=Yellow,predicate=custom:is_on_fire] at @s run function game:putoutfire
clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
gamemode survival @a[team=Blue]
gamemode survival @a[team=Yellow]

scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= 20 MaxItemSec
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue] run function game:givegear
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue] run function servermode:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow] run function servermode:givegear