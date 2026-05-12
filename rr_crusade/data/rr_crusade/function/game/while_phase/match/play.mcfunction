#Item RNG
scoreboard players add @s RandomItem 1
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[x=0,predicate=custom:team/any_playing_team,predicate=rr_crusade:kit/archer] run function items:give_batch/arrow
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime run function rr_crusade:items/giverandom
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem > @s MaxItemTime run scoreboard players set @s RandomItem 1
execute if predicate game:modifiers/minute_mix/on run function rr_crusade:items/minutemix

#custom prevention message
title @a[x=0,tag=preventionMSG] actionbar {color:"red",text:"You cannot spawn missiles inside of portals or bedrock"}
tag @a[x=0,tag=preventionMSG] remove preventionMSG

#Selected kit particles
execute if predicate custom:periodic_tick/3 at @e[x=0,type=armor_stand,tag=KnightStand] run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~2.3 ~ 0 0 0 0.1 1 force @a[x=0,predicate=custom:team/any_playing_team,tag=!hideParticles,predicate=rr_crusade:kit/knight]
execute if predicate custom:periodic_tick/3 at @e[x=0,type=armor_stand,tag=ArcherStand] run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~2.3 ~ 0 0 0 0.1 1 force @a[x=0,predicate=custom:team/any_playing_team,tag=!hideParticles,predicate=rr_crusade:kit/archer]
execute if predicate custom:periodic_tick/3 at @e[x=0,type=armor_stand,tag=MageStand] run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~2.3 ~ 0 0 0 0.1 1 force @a[x=0,predicate=custom:team/any_playing_team,tag=!hideParticles,predicate=rr_crusade:kit/mage]

#Suffocate players in gray glass
execute as @a[x=0,tag=!inGlass,predicate=custom:team/any_playing_team] at @s if block ~ ~ ~ light_gray_stained_glass if block ~ ~1 ~ light_gray_stained_glass run effect give @s poison infinite 4 true
execute as @a[x=0,tag=!inGlass,predicate=custom:team/any_playing_team] at @s if block ~ ~ ~ light_gray_stained_glass if block ~ ~1 ~ light_gray_stained_glass run tag @s add inGlass
execute as @a[x=0,tag=inGlass,predicate=custom:team/any_playing_team] at @s unless block ~ ~ ~ light_gray_stained_glass run tag @s add notInGlass
execute as @a[x=0,tag=inGlass,predicate=custom:team/any_playing_team] at @s unless block ~ ~1 ~ light_gray_stained_glass run tag @s add notInGlass
effect clear @a[x=0,tag=notInGlass] poison
tag @a[x=0,tag=notInGlass] remove inGlass
tag @a[x=0] remove notInGlass
tag @a[x=0,predicate=!custom:team/any_playing_team] remove inGlass

#> Nexus health & bossbars
execute if score $play_time match_data matches 1.. run bossbar set rr_crusade:blue players @a[x=0,predicate=!custom:team/lobby]
execute if score $play_time match_data matches 1.. run bossbar set rr_crusade:yellow players @a[x=0,predicate=!custom:team/lobby]
scoreboard players operation $health var = $nexus_blue_a_health match_data
execute store result bossbar rr_crusade:blue value run scoreboard players operation $health var += $nexus_blue_b_health match_data
scoreboard players operation $health var = $nexus_yellow_a_health match_data
execute store result bossbar rr_crusade:yellow value run scoreboard players operation $health var += $nexus_yellow_b_health match_data

#> Deplete health
execute if score $nexus_blue_a_health match_data matches 1.. unless entity @e[x=0,type=end_crystal,tag=nexus.blue_a] run function rr_crusade:game/restorecba
execute if score $nexus_blue_b_health match_data matches 1.. unless entity @e[x=0,type=end_crystal,tag=nexus.blue_b] run function rr_crusade:game/restorecbb
execute if score $nexus_yellow_a_health match_data matches 1.. unless entity @e[x=0,type=end_crystal,tag=nexus.yellow_a] run function rr_crusade:game/restorecya
execute if score $nexus_yellow_b_health match_data matches 1.. unless entity @e[x=0,type=end_crystal,tag=nexus.yellow_b] run function rr_crusade:game/restorecyb

#> Cooldown behavior
# Pre cooldown
execute if score $nexus_blue_a_pre_cooldown match_data matches 1.. run scoreboard players remove $nexus_blue_a_pre_cooldown match_data 1
execute unless score $nexus_blue_a_pre_cooldown match_data matches 1.. run scoreboard players reset $nexus_blue_a_pre_cooldown match_data
execute if score $nexus_blue_b_pre_cooldown match_data matches 1.. run scoreboard players remove $nexus_blue_b_pre_cooldown match_data 1
execute unless score $nexus_blue_b_pre_cooldown match_data matches 1.. run scoreboard players reset $nexus_blue_b_pre_cooldown match_data
execute if score $nexus_yellow_a_pre_cooldown match_data matches 1.. run scoreboard players remove $nexus_yellow_a_pre_cooldown match_data 1
execute unless score $nexus_yellow_a_pre_cooldown match_data matches 1.. run scoreboard players reset $nexus_yellow_a_pre_cooldown match_data
execute if score $nexus_yellow_b_pre_cooldown match_data matches 1.. run scoreboard players remove $nexus_yellow_b_pre_cooldown match_data 1
execute unless score $nexus_yellow_b_pre_cooldown match_data matches 1.. run scoreboard players reset $nexus_yellow_b_pre_cooldown match_data

# Actual cooldown
execute if score $nexus_blue_a_cooldown match_data matches 0.. run scoreboard players remove $nexus_blue_a_cooldown match_data 1
execute unless score $nexus_blue_a_cooldown match_data matches 0.. run scoreboard players reset $nexus_blue_a_cooldown match_data
execute if score $nexus_blue_b_cooldown match_data matches 0.. run scoreboard players remove $nexus_blue_b_cooldown match_data 1
execute unless score $nexus_blue_b_cooldown match_data matches 0.. run scoreboard players reset $nexus_blue_b_cooldown match_data
execute if score $nexus_yellow_a_cooldown match_data matches 0.. run scoreboard players remove $nexus_yellow_a_cooldown match_data 1
execute unless score $nexus_yellow_a_cooldown match_data matches 0.. run scoreboard players reset $nexus_yellow_a_cooldown match_data
execute if score $nexus_yellow_b_cooldown match_data matches 0.. run scoreboard players remove $nexus_yellow_b_cooldown match_data 1
execute unless score $nexus_yellow_b_cooldown match_data matches 0.. run scoreboard players reset $nexus_yellow_b_cooldown match_data

# Glass during cooldown
execute if score $nexus_blue_a_health match_data matches 1.. if score $nexus_blue_a_cooldown match_data matches 1.. run fill 36 47 -35 40 51 -39 minecraft:tinted_glass
execute if score $nexus_blue_b_health match_data matches 1.. if score $nexus_blue_b_cooldown match_data matches 1.. run fill -16 47 -35 -12 51 -39 minecraft:tinted_glass
execute if score $nexus_yellow_a_health match_data matches 1.. if score $nexus_yellow_a_cooldown match_data matches 1.. run fill -12 47 35 -16 51 39 minecraft:tinted_glass
execute if score $nexus_yellow_b_health match_data matches 1.. if score $nexus_yellow_b_cooldown match_data matches 1.. run fill 36 47 35 40 51 39 minecraft:tinted_glass

# Glass after cooldown
execute if score $nexus_blue_a_health match_data matches 1.. if score $nexus_blue_a_cooldown match_data matches 0 positioned 36 47 -39 run function rr_crusade:game/nexus_glass_dynamic_fill_replace_tinted_glass with storage rocketriders:teams blue.color_palette
execute if score $nexus_blue_b_health match_data matches 1.. if score $nexus_blue_b_cooldown match_data matches 0 positioned -16 47 -39 run function rr_crusade:game/nexus_glass_dynamic_fill_replace_tinted_glass with storage rocketriders:teams blue.color_palette
execute if score $nexus_yellow_a_health match_data matches 1.. if score $nexus_yellow_a_cooldown match_data matches 0 positioned -16 47 35 run function rr_crusade:game/nexus_glass_dynamic_fill_replace_tinted_glass with storage rocketriders:teams yellow.color_palette
execute if score $nexus_yellow_b_health match_data matches 1.. if score $nexus_yellow_b_cooldown match_data matches 0 positioned 36 47 35 run function rr_crusade:game/nexus_glass_dynamic_fill_replace_tinted_glass with storage rocketriders:teams yellow.color_palette

# Nexuses after cooldown
execute if score $nexus_blue_a_health match_data matches 1.. if score $nexus_blue_a_cooldown match_data matches 0 run data modify entity @e[x=0,type=end_crystal,tag=nexus.blue_a,limit=1] Invulnerable set value false
execute if score $nexus_blue_b_health match_data matches 1.. if score $nexus_blue_b_cooldown match_data matches 0 run data modify entity @e[x=0,type=end_crystal,tag=nexus.blue_b,limit=1] Invulnerable set value false
execute if score $nexus_yellow_a_health match_data matches 1.. if score $nexus_yellow_a_cooldown match_data matches 0 run data modify entity @e[x=0,type=end_crystal,tag=nexus.yellow_a,limit=1] Invulnerable set value false
execute if score $nexus_yellow_b_health match_data matches 1.. if score $nexus_yellow_b_cooldown match_data matches 0 run data modify entity @e[x=0,type=end_crystal,tag=nexus.yellow_b,limit=1] Invulnerable set value false

# Sounds after cooldown
execute if score $nexus_blue_a_health match_data matches 1.. if score $nexus_blue_a_cooldown match_data matches 0 positioned 38 49 -37 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 2
execute if score $nexus_blue_b_health match_data matches 1.. if score $nexus_blue_b_cooldown match_data matches 0 positioned -14 49 -37 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 2
execute if score $nexus_yellow_a_health match_data matches 1.. if score $nexus_yellow_a_cooldown match_data matches 0 positioned -14 49 37 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 2
execute if score $nexus_yellow_b_health match_data matches 1.. if score $nexus_yellow_b_cooldown match_data matches 0 positioned 38 49 37 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 2

#> Win condition
execute if function game:check/blue_portal_broken if function game:check/yellow_portal_broken run function game:winbothcheck
execute unless predicate game:outcome/both_won if function game:check/blue_portal_broken run function rr_crusade:game/winyellow
execute unless predicate game:outcome/both_won if function game:check/yellow_portal_broken run function rr_crusade:game/winblue
