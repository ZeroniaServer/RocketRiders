execute if score $CBBcd crusadehp matches 1.. run scoreboard players set $CBBcd crusadehp 60
execute unless score $CBBcd crusadehp matches 1.. run scoreboard players remove $CBB crusadehp 5
execute unless score $CBBcd crusadehp matches 1.. run scoreboard players remove $BlueShield crusadehp 5
execute unless score $CBBcd crusadehp matches 1.. run scoreboard players add $CBBprecd crusadehp 25
execute unless score $CBB crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/yellow] ["\n",{"text":"✔ ","color":"green"},{"text":"Blue Crystal ","color":"blue"},{"text":"B","bold":true,"color":"dark_aqua"},{"text":" has been destroyed!","color":"blue"}]
execute unless score $CBB crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/blue] ["\n",{"text":"⚠ ","color":"red"},{"text":"Blue Crystal ","color":"blue"},{"text":"B","bold":true,"color":"dark_aqua"},{"text":" has been destroyed!","color":"blue"}]
execute unless score $CBB crusadehp matches 1.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["\n",{"text":"Blue Crystal ","color":"blue"},{"text":"B","bold":true,"color":"dark_aqua"},{"text":" has been destroyed!","color":"blue"}]
execute unless score $CBB crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CBB crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CBB crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CBB crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CBB crusadehp matches 1.. unless score $nodeathmessages CmdData matches 1 run gamerule minecraft:show_death_messages false
execute if score $CBB crusadehp matches 1.. unless score $nodeathmessages CmdData matches 1 positioned -14 49 -37 as @e[type=player,gamemode=!creative,gamemode=!spectator,predicate=!custom:team/spectator,predicate=!custom:team/developer,predicate=!custom:team/lobby,distance=..5] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" got too close to an End Crystal","color":"white"}]
execute if score $CBB crusadehp matches 1.. positioned -14 49 -37 run kill @a[gamemode=!creative,gamemode=!spectator,predicate=custom:team/any_playing_team,distance=..5]
execute if score $CBB crusadehp matches 1.. unless score $nodeathmessages CmdData matches 1 run gamerule minecraft:show_death_messages true
execute if score $CBB crusadehp matches 1.. unless score $CBBcd crusadehp matches 1.. unless predicate game:gamemode_components/red_for_blue run fill -16 47 -35 -12 51 -39 minecraft:blue_stained_glass
execute if score $CBB crusadehp matches 1.. unless score $CBBcd crusadehp matches 1.. if predicate game:gamemode_components/red_for_blue run fill -16 47 -35 -12 51 -39 minecraft:red_stained_glass
execute if score $CBB crusadehp matches 1.. unless score $CBBcd crusadehp matches 1.. run summon end_crystal -14 49 -37 {Tags:["CrusadeEntity","CrusadeBlueB"],beam_target:[I;12,50,-52],ShowBottom:0b}
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 1.. run fill -16 47 -35 -12 51 -39 minecraft:tinted_glass
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 1.. run summon end_crystal -14 49 -37 {Tags:["CrusadeEntity","CrusadeBlueB"],beam_target:[I;12,50,-52],ShowBottom:0b,Invulnerable:1b}
execute if score $CBB crusadehp matches 1.. positioned -14 49 -37 run playsound minecraft:block.glass.break master @a[x=0] ~ ~ ~ 1 0.8
execute unless score $CBBcd crusadehp matches 1.. if score $CBBprecd crusadehp matches 100.. run scoreboard players set $CBBcd crusadehp 60
execute if score $CBB crusadehp matches 1.. unless score $CBBcd crusadehp matches 1.. positioned -14 49 -37 run playsound minecraft:block.respawn_anchor.set_spawn master @a[x=0] ~ ~ ~ 2 2
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 1.. positioned -14 49 -37 run playsound minecraft:block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 2

#> Expose Portals
execute if predicate game:blue_portal_revealed run tellraw @a[x=0,predicate=custom:team/yellow] ["\n",{"text":"Both Blue Crystals have been destroyed!","color":"blue"},{"text":"\nA portal has been exposed; destroy it to win!","color":"dark_aqua","italic":true}]
execute if predicate game:blue_portal_revealed run tellraw @a[x=0,predicate=custom:team/blue] ["\n",{"text":"Both of our Crystals have been destroyed!","color":"blue"},{"text":"\nOur portal is no longer protected; don't let them destroy it!","color":"dark_aqua","italic":true}]
execute if predicate game:blue_portal_revealed run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["\n",{"text":"Both Blue Crystals have been destroyed!","color":"blue"}]
execute if predicate game:blue_portal_revealed run function rr_crusade:game/cancel_utility
execute if predicate game:blue_portal_revealed unless predicate game:gamemode_components/red_for_blue run fill 20 45 -52 4 55 -66 minecraft:blue_stained_glass strict
execute if predicate game:blue_portal_revealed if predicate game:gamemode_components/red_for_blue run fill 20 45 -52 4 55 -66 minecraft:red_stained_glass strict
execute if predicate game:blue_portal_revealed run function game:place_portal/blue

execute unless score $CBB crusadehp matches 1.. run tellraw @a[x=0] [""]

execute if score $CBBcd crusadehp matches 1.. run scoreboard players set $CBBprecd crusadehp 0