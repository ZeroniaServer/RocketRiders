tag @s remove FakeGameEnd
scoreboard players set @s fakeendtimer 0

scoreboard players set $game_paused global 1
function arenaclear:brute_force/start

tp @a[x=0,team=Blue] -95 202 60 0 0
tp @a[x=0,team=Yellow] -95 202 96 180 0
tp @a[x=0,team=Spectator] -95 213 78 -90 90
fill -89 202 66 -101 211 66 minecraft:barrier strict
fill -89 202 90 -101 211 90 minecraft:barrier strict
execute as @a[x=0,team=Blue,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[x=0,team=Yellow,predicate=custom:is_on_fire] at @s run function game:putoutfire
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] *
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function custom:update_armor
gamemode adventure @a[x=0,predicate=custom:on_blue_or_yellow_or_spectator_team]

summon marker 11 63 6 {Tags:["ArenaClearChecker"]}

function items:tetrisreset

kill @e[x=0,type=area_effect_cloud,predicate=custom:belowroof]
kill @e[x=0,type=fireball]
kill @e[x=0,type=item_display,tag=endFireballAnchor]
kill @e[x=0,type=snowball]
kill @e[x=0,type=#arrows]
kill @e[x=0,predicate=entities:type/vortex]
kill @e[x=0,type=egg]
kill @e[x=0,type=chicken]
kill @e[x=0,type=tnt]
execute if predicate game:modifiers/punchable_tnt/on run kill @e[x=0,predicate=entities:type/punchable_tnt]
kill @e[x=0,type=tnt_minecart]
kill @e[x=0,type=creeper]
kill @e[x=0,type=dragon_fireball]
kill @e[x=0,type=marker,tag=blueobtracker]
kill @e[x=0,type=marker,tag=yellowobtracker]
kill @e[x=0,type=#custom:potion,tag=splash]
kill @e[x=0,type=item]
kill @e[x=0,type=ender_pearl]
kill @e[x=0,predicate=entities:type/nova_rocket]
kill @e[x=0,predicate=entities:type/nova_attach]
kill @e[x=0,type=marker,tag=obsidianshield]
kill @e[x=0,type=marker,tag=blueobtracker]
kill @e[x=0,type=marker,tag=yellowobtracker]
kill @e[x=0,predicate=entities:type/canopy]
kill @e[x=0,type=marker,tag=BlueObshield]
kill @e[x=0,type=marker,tag=YellowObshield]
kill @e[x=0,type=marker,tag=BlueFireball]
kill @e[x=0,type=marker,tag=YellowFireball]
kill @e[x=0,type=marker,tag=missile]
kill @e[x=0,type=marker,tag=surprising]
kill @e[x=0,predicate=entities:type/spell_emitter]
kill @e[x=0,predicate=entities:type/spell]

function arenaclear:superspeed

scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= $20 constant
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
