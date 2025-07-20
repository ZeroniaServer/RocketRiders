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

kill @e[x=0,type=area_effect_cloud,predicate=custom:belowroof]
kill @e[x=0,type=fireball]
kill @e[x=0,type=item_display,tag=endFireballAnchor]
kill @e[x=0,type=snowball]
kill @e[x=0,type=arrow]
kill @e[x=0,predicate=entities:vortex]
kill @e[x=0,type=egg]
kill @e[x=0,type=chicken]
kill @e[x=0,type=tnt]
execute if predicate game:config/punchable_tnt run kill @e[x=0,predicate=entities:punchable_tnt]
kill @e[x=0,type=tnt_minecart]
kill @e[x=0,type=creeper]
kill @e[x=0,type=dragon_fireball]
kill @e[x=0,type=marker,tag=blueobtracker]
kill @e[x=0,type=marker,tag=yellowobtracker]
kill @e[x=0,type=#custom:potion,tag=splash]
kill @e[x=0,type=item]
kill @e[x=0,type=ender_pearl]
kill @e[x=0,type=firework_rocket,tag=BlueNova]
kill @e[x=0,type=firework_rocket,tag=YellowNova]
kill @e[x=0,type=marker,tag=novatracker]
execute as @e[x=0,type=marker,tag=obsidianshield] at @s run function everytick:obsidian_shield_break
execute as @e[x=0,type=marker,tag=blueobtracker] at @s run function everytick:obsidian_shield_break
execute as @e[x=0,type=marker,tag=yellowobtracker] at @s run function everytick:obsidian_shield_break
execute if score $canopy_count global matches 1.. run function arenaclear:preparecanopy
execute if score $shield_count global matches 1.. run function arenaclear:prepareshield
kill @e[x=0,predicate=entities:canopy]
kill @e[x=0,type=marker,tag=BlueObshield]
kill @e[x=0,type=marker,tag=YellowObshield]
kill @e[x=0,type=marker,tag=BlueFireball]
kill @e[x=0,type=marker,tag=YellowFireball]
kill @e[x=0,type=marker,tag=missile]
kill @e[x=0,type=marker,tag=surprising]

function arenaclear:superspeed

tp @a[x=0,team=Blue] 12 64 -66 0 0
tp @a[x=0,team=Yellow] 12 64 66 180 0
execute as @a[x=0,team=Blue,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[x=0,team=Yellow,predicate=custom:is_on_fire] at @s run function game:putoutfire
clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data~{nova:1b}]
clear @a[x=0,team=Yellow] #custom:clear
clear @a[x=0,team=Yellow] crossbow[custom_data~{nova:1b}]
gamemode survival @a[x=0,team=Blue]
gamemode survival @a[x=0,team=Yellow]

scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= $20 constant
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime

execute as @a[x=0,team=Blue] run function game:givegear
execute as @a[x=0,team=Yellow] run function game:givegear