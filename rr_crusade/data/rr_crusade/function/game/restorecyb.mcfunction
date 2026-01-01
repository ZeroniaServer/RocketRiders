execute if score $CYBcd crusadehp matches 1.. run scoreboard players set $CYBcd crusadehp 60
execute unless score $CYBcd crusadehp matches 1.. run scoreboard players remove $CYB crusadehp 5
execute unless score $CYBcd crusadehp matches 1.. run scoreboard players remove $YellowShield crusadehp 5
execute unless score $CYBcd crusadehp matches 1.. run scoreboard players add $CYBprecd crusadehp 25
execute unless score $CYB crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/blue] ["\n",{"text":"✔ ","color":"green"},{"text":"Yellow Crystal ","color":"gold"},{"text":"B","bold":true,"color":"yellow"},{"text":" has been destroyed!","color":"gold"}]
execute unless score $CYB crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/yellow] ["\n",{"text":"⚠ ","color":"red"},{"text":"Yellow Crystal ","color":"gold"},{"text":"B","bold":true,"color":"yellow"},{"text":" has been destroyed!","color":"gold"}]
execute unless score $CYB crusadehp matches 1.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["\n",{"text":"Yellow Crystal ","color":"gold"},{"text":"B","bold":true,"color":"yellow"},{"text":" has been destroyed!","color":"gold"}]
execute unless score $CYB crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CYB crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CYB crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CYB crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CYB crusadehp matches 1.. unless score $nodeathmessages CmdData matches 1 run function custom:game_rules/show_death_messages/off
execute if score $CYB crusadehp matches 1.. unless score $nodeathmessages CmdData matches 1 positioned 38 49 37 as @e[type=player,gamemode=!creative,gamemode=!spectator,predicate=!custom:team/spectator,predicate=!custom:team/developer,predicate=!custom:team/lobby,distance=..5] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" got too close to an End Crystal","color":"white"}]
execute if score $CYB crusadehp matches 1.. positioned 38 49 37 run kill @a[gamemode=!creative,gamemode=!spectator,predicate=custom:team/any_playing_team,distance=..5]
execute if score $CYB crusadehp matches 1.. unless score $nodeathmessages CmdData matches 1 run function custom:game_rules/show_death_messages/on
execute if score $CYB crusadehp matches 1.. unless score $CYBcd crusadehp matches 1.. run fill 36 47 35 40 51 39 minecraft:yellow_stained_glass
execute if score $CYB crusadehp matches 1.. run function rr_crusade:game/place_crystal/yellow_b
execute if score $CYB crusadehp matches 1.. if score $CYBcd crusadehp matches 1.. run fill 36 47 35 40 51 39 minecraft:tinted_glass
execute if score $CYB crusadehp matches 1.. if score $CYBcd crusadehp matches 1.. run data modify entity @e[limit=1,x=0,type=end_crystal,tag=CrusadeYellowB] Invulnerable set value true
execute if score $CYB crusadehp matches 1.. positioned 38 49 37 run playsound minecraft:block.glass.break master @a[x=0] ~ ~ ~ 1 0.8
execute unless score $CYBcd crusadehp matches 1.. if score $CYBprecd crusadehp matches 100.. run scoreboard players set $CYBcd crusadehp 60
execute if score $CYB crusadehp matches 1.. unless score $CYBcd crusadehp matches 1.. positioned 38 49 37 run playsound minecraft:block.respawn_anchor.set_spawn master @a[x=0] ~ ~ ~ 2 2
execute if score $CYB crusadehp matches 1.. if score $CYBcd crusadehp matches 1.. positioned 38 49 37 run playsound minecraft:block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 2

#> Expose Portals
execute if predicate game:yellow_portal_revealed run tellraw @a[x=0,predicate=custom:team/blue] ["\n",{"text":"Both Yellow Crystals have been destroyed!","color":"gold"},{"text":"\nA portal has been exposed; destroy it to win!","color":"yellow","italic":true}]
execute if predicate game:yellow_portal_revealed run tellraw @a[x=0,predicate=custom:team/yellow] ["\n",{"text":"Both of our Crystals have been destroyed!","color":"gold"},{"text":"\nOur portal is no longer protected; don't let them destroy it!","color":"yellow","italic":true}]
execute if predicate game:yellow_portal_revealed run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["\n",{"text":"Both Yellow Crystals have been destroyed!","color":"gold"}]
execute if predicate game:yellow_portal_revealed run function rr_crusade:game/cancel_utility
execute if predicate game:yellow_portal_revealed run fill 4 45 52 20 55 66 minecraft:yellow_stained_glass strict
execute if predicate game:yellow_portal_revealed run function game:place_portal/yellow

execute unless score $CYB crusadehp matches 1.. run tellraw @a[x=0] [""]

execute if score $CYBcd crusadehp matches 1.. run scoreboard players set $CYBprecd crusadehp 0