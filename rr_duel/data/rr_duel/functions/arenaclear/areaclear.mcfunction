tag @s remove FakeGameEnd
scoreboard players set @s fakeendtimer 0

execute as @s[scores={bMissileCount=1..}] run function arenaclear:prepareblue
execute as @s[scores={yMissileCount=1..}] run function arenaclear:prepareyellow
execute as @s[scores={splashCount=1..}] run function arenaclear:preparesplash
summon area_effect_cloud 11 63 6 {Tags:["ArenaClearChecker"],Duration:360}

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
kill @e[type=snowball]
kill @e[type=arrow]
kill @e[tag=Vortex,type=area_effect_cloud]
kill @e[tag=VortexItem,type=armor_stand]
kill @e[type=chicken]
kill @e[type=tnt]
kill @e[type=tnt_minecart]
kill @e[type=creeper]
kill @e[type=dragon_fireball]
kill @e[tag=blueobtracker,type=armor_stand]
kill @e[tag=yellowobtracker,type=armor_stand]
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

function arenaclear:superspeed

tp @a[team=Blue] 12 64 -66 0 0
tp @a[team=Yellow] 12 64 66 180 0
execute as @a[team=Blue,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[team=Yellow,predicate=custom:is_on_fire] at @s run function game:putoutfire
clear @a[team=Blue]
clear @a[team=Yellow]
gamemode survival @a[team=Blue]
gamemode survival @a[team=Yellow]

scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= 20 MaxItemSec
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime

execute as @a[team=Blue] run function game:givegear
execute as @a[team=Yellow] run function game:givegear