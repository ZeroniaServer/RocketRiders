#Item RNG (exception for arrows)
tag @s add givenArrows
tag @s add givenArrowsTwice
scoreboard players add @s RandomItem 1
execute if predicate game:game_rules/show_debug_logs/on if predicate game:item_pool/arrow unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime if entity @s[tag=!gaveFirstItem] run function custom:log {message:["(rr_chase:game/while_phase/match/play) Giving arrows to all blue players"]}
execute if predicate game:item_pool/arrow unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[x=0,predicate=custom:team/blue] run function items:give_batch/arrow
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime run function items:giverandom
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem > @s MaxItemTime run scoreboard players set @s RandomItem 1
execute if predicate game:modifiers/minute_mix/on run function items:minutemix

#Crystals
function rr_chase:chaseblocks/chasecrystal

# Respawn chase blocks
scoreboard players set $ChaseBlockCheck CmdData 0
execute as @e[x=0,type=marker,tag=ChaseBlock] run scoreboard players add $ChaseBlockCheck CmdData 1
execute if score $ChaseBlockCheck CmdData matches ..145 run scoreboard players set $ChaseBlocks CmdData 5
execute if score $ChaseBlockCheck CmdData matches ..145 run function rr_chase:chaseblocks/spawn

#Chase Blocks
function rr_chase:chaseblocks/pickup

#Tag who's in the lead
tag @a[limit=1,x=0,tag=InLead] add was_in_the_lead
tag @a[x=0] remove InLead
execute unless predicate game:modifiers/hardcore/on positioned 12 64 64 run tag @e[limit=1,sort=nearest,distance=0..,type=player,gamemode=!spectator,predicate=!custom:location/on_blue_base,predicate=custom:team/blue,predicate=custom:in_arena] add InLead
execute if predicate game:modifiers/hardcore/on positioned 12 64 65 run tag @e[limit=1,sort=nearest,distance=0..,type=player,gamemode=!spectator,predicate=!custom:location/on_blue_base,predicate=custom:team/blue,predicate=custom:in_arena] add InLead
execute unless predicate game:modifiers/hardcore/on as @a[limit=1,x=0,tag=InLead] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{z:{max:-45}}}}} run tag @s remove InLead
execute if predicate game:modifiers/hardcore/on as @a[limit=1,x=0,tag=InLead] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:location":{position:{z:{max:-63}}}}} run tag @s remove InLead

#Actionbar for who's in the lead
title @a[limit=1,x=0,tag=was_in_the_lead,tag=!InLead,tag=!DelayActionbar] actionbar ""
title @a[limit=1,x=0,tag=InLead,tag=!DelayActionbar] actionbar {bold:true,text:"You're in the lead! Run to the Checkered Flag to win!"}
tag @a[x=0] remove was_in_the_lead

#Bossbar for who's in the lead
bossbar set rr:startgame players @a[x=0,predicate=custom:team/lobby]
bossbar set rr_chase:lead players @a[x=0,predicate=!custom:team/lobby]
execute if predicate game:blue_team_skin/blue run bossbar set rr_chase:lead color blue
execute if predicate game:blue_team_skin/any_red_skin run bossbar set rr_chase:lead color red
execute as @a[limit=1,x=0,tag=InLead] run bossbar set rr_chase:lead name [{score:{name:"@s",objective:"text.accent_color"}},{bold:true,selector:"@s"}," is in the lead!"]
execute unless entity @a[limit=1,x=0,tag=InLead] run bossbar set rr_chase:lead name [{score:{name:"#blue",objective:"text.accent_color"}},"No one is in the lead!"]
execute unless entity @a[limit=1,x=0,tag=InLead] run bossbar set rr_chase:lead value 0
execute positioned 12 64 64 if entity @a[limit=1,distance=100..110,tag=InLead] run bossbar set rr_chase:lead value 1
execute positioned 12 64 64 if entity @a[limit=1,distance=89..99,tag=InLead] run bossbar set rr_chase:lead value 2
execute positioned 12 64 64 if entity @a[limit=1,distance=78..88,tag=InLead] run bossbar set rr_chase:lead value 3
execute positioned 12 64 64 if entity @a[limit=1,distance=67..77,tag=InLead] run bossbar set rr_chase:lead value 4
execute positioned 12 64 64 if entity @a[limit=1,distance=56..66,tag=InLead] run bossbar set rr_chase:lead value 5
execute positioned 12 64 64 if entity @a[limit=1,distance=45..55,tag=InLead] run bossbar set rr_chase:lead value 6
execute positioned 12 64 64 if entity @a[limit=1,distance=34..44,tag=InLead] run bossbar set rr_chase:lead value 7
execute positioned 12 64 64 if entity @a[limit=1,distance=23..33,tag=InLead] run bossbar set rr_chase:lead value 8
execute positioned 12 64 64 if entity @a[limit=1,distance=12..22,tag=InLead] run bossbar set rr_chase:lead value 9
execute positioned 12 64 64 if entity @a[limit=1,distance=0..11,tag=InLead] run bossbar set rr_chase:lead value 10

#Tablist icon for who's in the lead
scoreboard players display numberformat @a[x=0,tag=!InLead] flag_tablist_display blank
execute as @a[limit=1,x=0,tag=InLead] run scoreboard players display numberformat @s flag_tablist_display fixed {score:{name:"#yellow",objective:"text.flag"}}

#Glowing for who's in the lead (blink if Sonar is enabled)
execute unless predicate game:modifiers/sonar/on run effect clear @a[x=0,tag=!InLead] glowing
execute unless predicate game:modifiers/sonar/on run effect give @a[limit=1,x=0,tag=InLead] glowing infinite 0 true
execute if predicate game:modifiers/sonar/on run scoreboard players operation $glowing_period var = $time match_data
execute if predicate game:modifiers/sonar/on run scoreboard players operation $glowing_period var %= $20 constant
execute if predicate game:modifiers/sonar/on if score $glowing_period var matches 0..9 run effect clear @a[limit=1,x=0,tag=InLead] glowing

#Win
execute unless predicate game:modifiers/hardcore/on positioned 12 64 64 run tag @a[limit=1,distance=..2,gamemode=!spectator,predicate=custom:team/blue] add Winner
execute if predicate game:modifiers/hardcore/on positioned 12 64 65 run tag @a[limit=1,distance=..2,gamemode=!spectator,predicate=custom:team/blue] add Winner
execute as @a[limit=1,x=0,tag=Winner,predicate=custom:team/blue] run title @s actionbar ""
execute if entity @a[limit=1,x=0,tag=Winner,predicate=custom:team/blue] run tag @a[x=0,predicate=custom:team/blue,tag=!Winner] add Loser
execute if entity @a[limit=1,x=0,tag=Winner,predicate=custom:team/blue] run function rr_chase:game/win
