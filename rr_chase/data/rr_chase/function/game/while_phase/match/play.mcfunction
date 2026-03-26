#Item RNG (exception for arrows)
tag @s add givenArrows
tag @s add givenArrowsTwice
scoreboard players add @s RandomItem 1
execute if predicate game:item_pool/arrow unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[x=0,predicate=custom:team/blue] run function items:util/givearrows
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime run function items:giverandom
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem > @s MaxItemTime run scoreboard players set @s RandomItem 1
execute if predicate game:modifiers/minute_mix/on run function items:minutemix

#Actionbar for who's in the lead
execute as @p[predicate=custom:team/blue,tag=InLead,distance=0..22,tag=!DelayActionbar] run title @s actionbar [{"text":"You're in the lead! Run to the Finish Flag to win!","color":"white","bold":true}]

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
execute unless predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/blue] at @s if entity @s[x=-15,y=33,z=-74,dx=54,dy=40,dz=28] run tag @s add onBlue
execute if predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/blue] at @s if entity @s[x=-15,y=33,z=-74,dx=54,dy=40,dz=10] run tag @s add onBlue
tag @a[x=0,predicate=custom:team/blue] remove InLead
execute positioned 12 64 65 run tag @p[gamemode=!spectator,predicate=custom:team/blue,predicate=custom:in_arena,tag=!onBlue,predicate=custom:alive] add InLead
execute unless predicate game:modifiers/hardcore/on as @a[limit=1,x=0,predicate=custom:team/blue,tag=InLead] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{z:{max:-45}}}}} run tag @s remove InLead
execute if predicate game:modifiers/hardcore/on as @a[limit=1,x=0,predicate=custom:team/blue,tag=InLead] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{z:{max:-63}}}}} run tag @s remove InLead

#Bossbar for who's in the lead
bossbar set rr:startgame players @a[x=0,predicate=custom:team/lobby]
bossbar set rr_chase:lead players @a[x=0,predicate=!custom:team/lobby]
bossbar set rr_chase:lead color red
execute if entity @p[predicate=custom:team/blue,tag=InLead] run bossbar set rr_chase:lead name [{color:"red",text:""},{bold:true,color:"dark_red",selector:"@p[predicate=custom:team/blue,tag=InLead]"}," is in the lead!"]
execute unless entity @p[predicate=custom:team/blue,tag=InLead] run bossbar set rr_chase:lead name {color:"red",text:"No one is in the lead!"}
execute unless entity @p[predicate=custom:team/blue,tag=InLead] run bossbar set rr_chase:lead value 0
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=100..110] run bossbar set rr_chase:lead value 1
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=89..99] run bossbar set rr_chase:lead value 2
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=78..88] run bossbar set rr_chase:lead value 3
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=67..77] run bossbar set rr_chase:lead value 4
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=56..66] run bossbar set rr_chase:lead value 5
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=45..55] run bossbar set rr_chase:lead value 6
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=34..44] run bossbar set rr_chase:lead value 7
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=23..33] run bossbar set rr_chase:lead value 8
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=12..22] run bossbar set rr_chase:lead value 9
execute positioned 12 64 65 if entity @p[predicate=custom:team/blue,tag=InLead,distance=0..11] run bossbar set rr_chase:lead value 10

#Tablist icon for who's in the lead
scoreboard players display numberformat @a[x=0,tag=!InLead] flag_tablist_display blank
execute as @a[limit=1,x=0,tag=InLead] run scoreboard players display numberformat @s flag_tablist_display fixed {score:{name:"#yellow",objective:"text.flag"}}

#Glowing for who's in the lead (blink if Sonar is enabled)
execute unless predicate game:modifiers/sonar/on run effect clear @a[x=0,tag=!InLead] glowing
execute unless predicate game:modifiers/sonar/on run effect give @a[limit=1,x=0,tag=InLead] glowing infinite 0 true
execute if predicate game:modifiers/sonar/on run scoreboard players operation $glowing_period var = $gametime global
execute if predicate game:modifiers/sonar/on run scoreboard players operation $glowing_period var %= $20 constant
execute if predicate game:modifiers/sonar/on if score $glowing_period var matches 0..9 run effect clear @a[limit=1,x=0,tag=InLead] glowing

#Win
execute positioned 12 64 65 if score $match_play_time global matches 0..4 run tp @a[distance=..2,predicate=custom:team/blue] 12 64 -66 0 0
execute positioned 12 64 65 run tag @a[limit=1,distance=..2,gamemode=!spectator,predicate=custom:team/blue] add Winner
execute as @a[limit=1,x=0,predicate=custom:team/blue,tag=Winner] run title @s actionbar ""
execute if entity @a[limit=1,x=0,predicate=custom:team/blue,tag=Winner] run tag @a[x=0,predicate=custom:team/blue,tag=!Winner] add Loser
execute if entity @a[limit=1,x=0,predicate=custom:team/blue,tag=Winner] run function rr_chase:game/win
