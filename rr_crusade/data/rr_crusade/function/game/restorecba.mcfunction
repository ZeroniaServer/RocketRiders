execute if score $CBAcd crusadehp matches 1.. run scoreboard players set $CBAcd crusadehp 60
execute unless score $CBAcd crusadehp matches 1.. run scoreboard players remove $CBA crusadehp 5
execute unless score $CBAcd crusadehp matches 1.. run scoreboard players remove $BlueShield crusadehp 5
execute unless score $CBAcd crusadehp matches 1.. run scoreboard players add $CBAprecd crusadehp 25
execute unless score $CBA crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.main_color"}},"\n",{color:"green",text:"✔ "},{score:{name:"#blue",objective:"text.team_name"}}," Crystal ",[{bold:true,score:{name:"#blue",objective:"text.accent_color"}},"A"]," has been destroyed!"]
execute unless score $CBA crusadehp matches 1.. run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.main_color"}},"\n",{color:"red",text:"⚠ "},{score:{name:"#blue",objective:"text.team_name"}}," Crystal ",[{bold:true,score:{name:"#blue",objective:"text.accent_color"}},"A"]," has been destroyed!"]
execute unless score $CBA crusadehp matches 1.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.main_color"}},"\n",{score:{name:"#blue",objective:"text.team_name"}}," Crystal ",[{bold:true,score:{name:"#blue",objective:"text.accent_color"}},"A"]," has been destroyed!"]
execute unless score $CBA crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CBA crusadehp matches 1.. as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CBA crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CBA crusadehp matches 1.. as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CBA crusadehp matches 1.. unless predicate game:game_rules/disable_death_messages/on run function custom:game_rules/show_death_messages/off
execute if score $CBA crusadehp matches 1.. unless predicate game:game_rules/disable_death_messages/on positioned 38 49 -37 as @e[type=player,gamemode=!creative,gamemode=!spectator,predicate=custom:team/any_playing_team,distance=..5] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" got too close to an End Crystal","color":"white"}]
execute if score $CBA crusadehp matches 1.. positioned 38 49 -37 run kill @a[gamemode=!creative,gamemode=!spectator,predicate=custom:team/any_playing_team,distance=..5]
execute if score $CBA crusadehp matches 1.. unless predicate game:game_rules/disable_death_messages/on run function custom:game_rules/show_death_messages/on
execute if score $CBA crusadehp matches 1.. unless score $CBBcd crusadehp matches 1.. positioned 35.999 46.999 -39.001 as @e[dx=4.002,dy=4.002,dz=4.002,type=marker,tag=obsidianshield] positioned as @s run function everytick:obsidian_shield_break
execute if score $CBA crusadehp matches 1.. unless score $CBAcd crusadehp matches 1.. positioned 36 47 -39 run function rr_crusade:game/crystal_glass_dynamic_fill with storage rocketriders:teams blue.color_palette
execute if score $CBA crusadehp matches 1.. run function rr_crusade:game/place_crystal/blue_a
execute if score $CBA crusadehp matches 1.. if score $CBAcd crusadehp matches 1.. run fill 36 47 -35 40 51 -39 minecraft:tinted_glass
execute if score $CBA crusadehp matches 1.. if score $CBAcd crusadehp matches 1.. run data modify entity @e[limit=1,x=0,type=end_crystal,tag=CrusadeBlueA] Invulnerable set value true
execute if score $CBA crusadehp matches 1.. positioned 38 49 -37 run playsound minecraft:block.glass.break master @a[x=0] ~ ~ ~ 1 0.8
execute unless score $CBAcd crusadehp matches 1.. if score $CBAprecd crusadehp matches 100.. run scoreboard players set $CBAcd crusadehp 60
execute if score $CBA crusadehp matches 1.. unless score $CBAcd crusadehp matches 1.. positioned 38 49 -37 run playsound minecraft:block.respawn_anchor.set_spawn master @a[x=0] ~ ~ ~ 2 2
execute if score $CBA crusadehp matches 1.. if score $CBAcd crusadehp matches 1.. positioned 38 49 -37 run playsound minecraft:block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 2

execute unless score $CBA crusadehp matches 1.. run fill 36 47 -39 40 51 -35 air
execute unless score $CBA crusadehp matches 1.. run fill 35 52 -39 41 52 -37 air
execute unless score $CBA crusadehp matches 1.. positioned 38.5 49.6 -36.5 run function rr_crusade:game/crystal_destroyed_particles

#> Expose Portals
execute if predicate game:blue_portal_revealed run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Both ",{score:{name:"#blue",objective:"text.team_name"}}," Crystals have been destroyed!"],{text:"\nA portal has been exposed; destroy it to win!","italic":true}]
execute if predicate game:blue_portal_revealed run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Both of your Crystals have been destroyed!"],{text:"\nYour portal is no longer protected; don't let it get destroyed!","italic":true}]
execute if predicate game:blue_portal_revealed run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.main_color"}},"\nBoth ",{score:{name:"#blue",objective:"text.team_name"}}," Crystals have been destroyed!"]
execute if predicate game:blue_portal_revealed run function rr_crusade:game/cancel_utility
execute if predicate game:blue_portal_revealed positioned 4 45 -66 run function rr_crusade:game/portal_barrier_dynamic_fill with storage rocketriders:teams blue.block_palette
execute if predicate game:blue_portal_revealed run function game:place_portal/blue
execute if predicate game:blue_portal_revealed run bossbar set rr_crusade:blue name [{score:{name:"#blue",objective:"text.accent_color"}},"",[{score:{name:"#blue",objective:"text.main_color"}},{bold:true,score:{name:"#blue",objective:"text.team_name"}}]," Crystals are Destroyed"]

execute unless score $CBA crusadehp matches 1.. run tellraw @a[x=0] [""]

execute if score $CBAcd crusadehp matches 1.. run scoreboard players set $CBAprecd crusadehp 0