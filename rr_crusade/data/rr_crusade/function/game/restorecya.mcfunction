execute if score $CYAcd crusadehp matches 1.. run scoreboard players set $CYAcd crusadehp 60
execute unless score $CYAcd crusadehp matches 1.. run scoreboard players remove $CYA crusadehp 5
execute unless score $CYAcd crusadehp matches 1.. run scoreboard players remove $YellowShield crusadehp 5
execute unless score $CYAcd crusadehp matches 1.. run scoreboard players add $CYAprecd crusadehp 25
execute unless score $CYA crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.main_color"}},"\n",{color:"green",text:"✔ "},{score:{name:"#yellow",objective:"text.team_name"}}," Crystal ",[{bold:true,score:{name:"#yellow",objective:"text.accent_color"}},"A"]," has been destroyed!"]
execute unless score $CYA crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.main_color"}},"\n",{color:"red",text:"⚠ "},{score:{name:"#yellow",objective:"text.team_name"}}," Crystal ",[{bold:true,score:{name:"#yellow",objective:"text.accent_color"}},"A"]," has been destroyed!"]
execute unless score $CYA crusadehp matches 1.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#yellow",objective:"text.main_color"}},"\n",{score:{name:"#yellow",objective:"text.team_name"}}," Crystal ",[{bold:true,score:{name:"#yellow",objective:"text.accent_color"}},"A"]," has been destroyed!"]
execute unless score $CYA crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CYA crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CYA crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CYA crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CYA crusadehp matches 1.. unless predicate game:game_rules/disable_death_messages/on run function custom:game_rules/show_death_messages/off
execute if score $CYA crusadehp matches 1.. unless predicate game:game_rules/disable_death_messages/on positioned -14 49 37 as @e[type=player,gamemode=!creative,gamemode=!spectator,predicate=!custom:team/spectator,predicate=!custom:team/developer,predicate=!custom:team/lobby,distance=..5] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" got too close to an End Crystal","color":"white"}]
execute if score $CYA crusadehp matches 1.. positioned -14 49 37 run kill @a[gamemode=!creative,gamemode=!spectator,predicate=custom:team/any_playing_team,distance=..5]
execute if score $CYA crusadehp matches 1.. unless predicate game:game_rules/disable_death_messages/on run function custom:game_rules/show_death_messages/on
execute if score $CYA crusadehp matches 1.. unless score $CYAcd crusadehp matches 1.. positioned -16.001 46.999 34.999 as @e[dx=4.002,dy=4.002,dz=4.002,type=marker,tag=obsidianshield] positioned as @s run function everytick:obsidian_shield_break
execute if score $CYA crusadehp matches 1.. unless score $CYAcd crusadehp matches 1.. positioned -16 47 35 run function rr_crusade:game/crystal_glass_dynamic_fill with storage rocketriders:teams yellow.color_palette
execute if score $CYA crusadehp matches 1.. run function rr_crusade:game/place_crystal/yellow_a
execute if score $CYA crusadehp matches 1.. if score $CYAcd crusadehp matches 1.. run fill -12 47 35 -16 51 39 minecraft:tinted_glass
execute if score $CYA crusadehp matches 1.. if score $CYAcd crusadehp matches 1.. run data modify entity @e[limit=1,x=0,type=end_crystal,tag=CrusadeYellowA] Invulnerable set value true
execute if score $CYA crusadehp matches 1.. positioned -14 49 37 run playsound minecraft:block.glass.break master @a[x=0] ~ ~ ~ 1 0.8
execute unless score $CYAcd crusadehp matches 1.. if score $CYAprecd crusadehp matches 100.. run scoreboard players set $CYAcd crusadehp 60
execute if score $CYA crusadehp matches 1.. unless score $CYAcd crusadehp matches 1.. positioned -14 49 37 run playsound minecraft:block.respawn_anchor.set_spawn master @a[x=0] ~ ~ ~ 2 2
execute if score $CYA crusadehp matches 1.. if score $CYAcd crusadehp matches 1.. positioned -14 49 37 run playsound minecraft:block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 2

execute unless score $CYA crusadehp matches 1.. run fill -16 47 35 -12 51 40 air
execute unless score $CYA crusadehp matches 1.. run fill -17 52 37 -11 52 40 air
execute unless score $CYA crusadehp matches 1.. positioned -13.5 49.5 37.5 run function rr_crusade:game/crystal_destroyed_particles

#> Expose Portals
execute if predicate game:yellow_portal_revealed run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Both ",{score:{name:"#yellow",objective:"text.team_name"}}," Crystals have been destroyed!"],{text:"\nA portal has been exposed; destroy it to win!","italic":true}]
execute if predicate game:yellow_portal_revealed run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Both of your Crystals have been destroyed!"],{text:"\nYour portal is no longer protected; don't let it get destroyed!","italic":true}]
execute if predicate game:yellow_portal_revealed run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#yellow",objective:"text.main_color"}},"\nBoth ",{score:{name:"#yellow",objective:"text.team_name"}}," Crystals have been destroyed!"]
execute if predicate game:yellow_portal_revealed run function rr_crusade:game/cancel_utility
execute if predicate game:yellow_portal_revealed positioned 4 45 52 run function rr_crusade:game/portal_barrier_dynamic_fill with storage rocketriders:teams yellow.block_palette
execute if predicate game:yellow_portal_revealed run function game:place_portal/yellow
execute if predicate game:yellow_portal_revealed run bossbar set rr_crusade:blue name [{score:{name:"#yellow",objective:"text.accent_color"}},"",[{score:{name:"#yellow",objective:"text.main_color"}},{bold:true,score:{name:"#yellow",objective:"text.team_name"}}]," Crystals are Destroyed"]

execute unless score $CYA crusadehp matches 1.. run tellraw @a[x=0] [""]

execute if score $CYAcd crusadehp matches 1.. run scoreboard players set $CYAprecd crusadehp 0