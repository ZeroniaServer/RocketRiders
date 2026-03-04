execute if score $CBBcd crusadehp matches 1.. run scoreboard players set $CBBcd crusadehp 60
execute unless score $CBBcd crusadehp matches 1.. run scoreboard players remove $CBB crusadehp 5
execute unless score $CBBcd crusadehp matches 1.. run scoreboard players remove $BlueShield crusadehp 5
execute unless score $CBBcd crusadehp matches 1.. run scoreboard players add $CBBprecd crusadehp 25
execute unless score $CBB crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.main_color"}},"\n",{color:"green",text:"✔ "},{score:{name:"#blue",objective:"text.team_name"}}," Crystal ",[{bold:true,score:{name:"#blue",objective:"text.accent_color"}},"B"]," has been destroyed!"]
execute unless score $CBB crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.main_color"}},"\n",{color:"red",text:"⚠ "},{score:{name:"#blue",objective:"text.team_name"}}," Crystal ",[{bold:true,score:{name:"#blue",objective:"text.accent_color"}},"B"]," has been destroyed!"]
execute unless score $CBB crusadehp matches 1.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.main_color"}},"\n",{score:{name:"#blue",objective:"text.team_name"}}," Crystal ",[{bold:true,score:{name:"#blue",objective:"text.accent_color"}},"B"]," has been destroyed!"]
execute unless score $CBB crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CBB crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CBB crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CBB crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CBB crusadehp matches 1.. unless predicate game:game_rules/disable_death_messages/on run function custom:game_rules/show_death_messages/off
execute if score $CBB crusadehp matches 1.. unless predicate game:game_rules/disable_death_messages/on positioned -14 49 -37 as @e[type=player,gamemode=!creative,gamemode=!spectator,predicate=!custom:team/spectator,predicate=!custom:team/developer,predicate=!custom:team/lobby,distance=..5] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" got too close to an End Crystal","color":"white"}]
execute if score $CBB crusadehp matches 1.. positioned -14 49 -37 run kill @a[gamemode=!creative,gamemode=!spectator,predicate=custom:team/any_playing_team,distance=..5]
execute if score $CBB crusadehp matches 1.. unless predicate game:game_rules/disable_death_messages/on run function custom:game_rules/show_death_messages/on
execute if score $CBB crusadehp matches 1.. unless score $CBBcd crusadehp matches 1.. unless predicate game:gamemode_components/red_for_blue run fill -16 47 -35 -12 51 -39 minecraft:blue_stained_glass
execute if score $CBB crusadehp matches 1.. unless score $CBBcd crusadehp matches 1.. if predicate game:gamemode_components/red_for_blue run fill -16 47 -35 -12 51 -39 minecraft:red_stained_glass
execute if score $CBB crusadehp matches 1.. run function rr_crusade:game/place_crystal/blue_b
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 1.. run fill -16 47 -35 -12 51 -39 minecraft:tinted_glass
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 1.. run data modify entity @e[limit=1,x=0,type=end_crystal,tag=CrusadeBlueB] Invulnerable set value true
execute if score $CBB crusadehp matches 1.. positioned -14 49 -37 run playsound minecraft:block.glass.break master @a[x=0] ~ ~ ~ 1 0.8
execute unless score $CBBcd crusadehp matches 1.. if score $CBBprecd crusadehp matches 100.. run scoreboard players set $CBBcd crusadehp 60
execute if score $CBB crusadehp matches 1.. unless score $CBBcd crusadehp matches 1.. positioned -14 49 -37 run playsound minecraft:block.respawn_anchor.set_spawn master @a[x=0] ~ ~ ~ 2 2
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 1.. positioned -14 49 -37 run playsound minecraft:block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 2

#> Expose Portals
execute if predicate game:blue_portal_revealed run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Both ",{score:{name:"#blue",objective:"text.team_name"}}," Crystals have been destroyed!"],{text:"\nA portal has been exposed; destroy it to win!","italic":true}]
execute if predicate game:blue_portal_revealed run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Both of your Crystals have been destroyed!"],{text:"\nYour portal is no longer protected; don't let it get destroyed!","italic":true}]
execute if predicate game:blue_portal_revealed run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.main_color"}},"\nBoth ",{score:{name:"#blue",objective:"text.team_name"}}," Crystals have been destroyed!"]
execute if predicate game:blue_portal_revealed run function rr_crusade:game/cancel_utility
execute if predicate game:blue_portal_revealed unless predicate game:gamemode_components/red_for_blue run fill 20 45 -52 4 55 -66 minecraft:blue_stained_glass strict
execute if predicate game:blue_portal_revealed if predicate game:gamemode_components/red_for_blue run fill 20 45 -52 4 55 -66 minecraft:red_stained_glass strict
execute if predicate game:blue_portal_revealed run function game:place_portal/blue

execute unless score $CBB crusadehp matches 1.. run tellraw @a[x=0] [""]

execute if score $CBBcd crusadehp matches 1.. run scoreboard players set $CBBprecd crusadehp 0