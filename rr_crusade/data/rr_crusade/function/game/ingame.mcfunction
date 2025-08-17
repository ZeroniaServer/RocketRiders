#leave midgame
execute unless predicate rr:is_cubekrowd run function rr_crusade:game/leavemidgame

#general
function rr_crusade:game/cancel_utility

#middle wall
execute as @e[x=0,type=marker,tag=crusadeWall] at @s run function rr_crusade:game/wallplacement

#regenerate glass every 30 seconds
scoreboard players add @e[x=0,type=marker,tag=crusadeWall] CmdData 1
execute as @e[x=0,type=marker,tag=crusadeWall,scores={CmdData=2400..}] run function rr_crusade:game/glassplacement
execute as @e[x=0,type=marker,tag=crusadeWall,scores={CmdData=2400..}] run scoreboard players set @s CmdData 0

#place pathways
function rr_crusade:arenaclear/pathways

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function rr_crusade:items/util/givearrows
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_crusade:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_crusade:items/minutemix

#custom prevention message
execute as @a[x=0,tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of portal or bedrock.","color":"red"}]
tag @a[x=0,tag=preventionMSG] remove preventionMSG

#Selected kit particles
execute if score $dust CmdData matches 1 as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,tag=!hideParticles,scores={crusadekit=1}] at @s at @e[x=0,type=armor_stand,tag=KnightStand,limit=1,sort=nearest] run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~2.3 ~ 0 0 0 0.1 1 force @s
execute if score $dust CmdData matches 1 as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,tag=!hideParticles,scores={crusadekit=2}] at @s at @e[x=0,type=armor_stand,tag=ArcherStand,limit=1,sort=nearest] run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~2.3 ~ 0 0 0 0.1 1 force @s
execute if score $dust CmdData matches 1 as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,tag=!hideParticles,scores={crusadekit=3}] at @s at @e[x=0,type=armor_stand,tag=MageStand,limit=1,sort=nearest] run particle minecraft:dust{color:[0,1,0],scale:1} ~ ~2.3 ~ 0 0 0 0.1 1 force @s

#Mage Wand
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team,scores={useWand=1..}] run function rr_crusade:game/usewand

#Top layer regen
execute as @e[x=0,type=marker,tag=airDetectBlue,limit=1] at @s run function rr_crusade:game/airdetectblue
execute as @e[x=0,type=marker,tag=airDetectYellow,limit=1] at @s run function rr_crusade:game/airdetectyellow

#Archer arrow pickup
execute as @e[x=0,type=item] if items entity @s contents arrow at @s run function rr_crusade:game/arrow_item

#Set banners/light blocks
#Yellow A
execute unless block -14 53 38 minecraft:yellow_banner run setblock -14 53 38 minecraft:yellow_banner[rotation=8]{patterns:[{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute unless block -14 52 40 minecraft:yellow_wall_banner run setblock -14 52 40 minecraft:yellow_wall_banner[facing=south]{patterns:[{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
fill -16 51 40 -12 47 40 light[level=1]
#Yellow B
execute unless block 38 53 38 minecraft:yellow_banner run setblock 38 53 38 minecraft:yellow_banner[rotation=8]{patterns:[{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_bottom",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:curly_border",color:"yellow"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
execute unless block 38 52 40 minecraft:yellow_wall_banner run setblock 38 52 40 minecraft:yellow_wall_banner[facing=south]{patterns:[{pattern:"minecraft:stripe_right",color:"orange"},{pattern:"minecraft:stripe_bottom",color:"orange"},{pattern:"minecraft:stripe_top",color:"orange"},{pattern:"minecraft:curly_border",color:"yellow"},{pattern:"minecraft:stripe_left",color:"orange"},{pattern:"minecraft:stripe_middle",color:"orange"},{pattern:"minecraft:border",color:"yellow"}]}
fill 36 51 40 40 47 40 light[level=1]
#Blue A
execute unless block 38 53 -38 minecraft:blue_banner run setblock 38 53 -38 minecraft:blue_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute unless block 38 52 -40 minecraft:blue_wall_banner run setblock 38 52 -40 minecraft:blue_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
fill 36 51 -40 40 47 -40 light[level=1]
#Blue B
execute unless block -14 53 -38 minecraft:blue_banner run setblock -14 53 -38 minecraft:blue_banner[rotation=0]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
execute unless block -14 52 -40 minecraft:blue_wall_banner run setblock -14 52 -40 minecraft:blue_wall_banner[facing=north]{patterns:[{pattern:"minecraft:stripe_right",color:"cyan"},{pattern:"minecraft:stripe_bottom",color:"cyan"},{pattern:"minecraft:stripe_top",color:"cyan"},{pattern:"minecraft:curly_border",color:"blue"},{pattern:"minecraft:stripe_left",color:"cyan"},{pattern:"minecraft:stripe_middle",color:"cyan"},{pattern:"minecraft:border",color:"blue"}]}
fill -16 51 -40 -12 47 -40 light[level=1]

#Spawnpoints
execute as @a[x=0,team=Blue,nbt=!{respawn:{pos:[I;12,64,-66]}}] run spawnpoint @s 12 64 -66 0
execute as @a[x=0,team=Yellow,nbt=!{respawn:{pos:[I;12,64,66]}}] run spawnpoint @s 12 64 66 -180

#Suffocate players in gray glass
execute as @a[x=0,tag=!inGlass,predicate=custom:on_blue_or_yellow_team] at @s if block ~ ~ ~ light_gray_stained_glass if block ~ ~1 ~ light_gray_stained_glass run effect give @s poison infinite 4 true
execute as @a[x=0,tag=!inGlass,predicate=custom:on_blue_or_yellow_team] at @s if block ~ ~ ~ light_gray_stained_glass if block ~ ~1 ~ light_gray_stained_glass run tag @s add inGlass
execute as @a[x=0,tag=inGlass,predicate=custom:on_blue_or_yellow_team] at @s unless block ~ ~ ~ light_gray_stained_glass run tag @s add notInGlass
execute as @a[x=0,tag=inGlass,predicate=custom:on_blue_or_yellow_team] at @s unless block ~ ~1 ~ light_gray_stained_glass run tag @s add notInGlass
effect clear @a[x=0,tag=notInGlass] poison
tag @a[x=0,tag=notInGlass] remove inGlass
tag @a[x=0] remove notInGlass
tag @a[x=0,team=!Blue,team=!Yellow] remove inGlass

#> Kit signs + obsidian
execute unless block 14 64 -64 oak_wall_sign run setblock 14 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 1"},"color":"#09FF00"},{"text":"Knight","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 12 64 -63 oak_wall_sign run setblock 12 64 -63 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 2"},"color":"#09FF00"},{"text":"Archer","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 10 64 -64 oak_wall_sign run setblock 10 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 3"},"color":"#09FF00"},{"text":"Mage","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 10 64 64 oak_wall_sign run setblock 10 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 1"},"color":"#09FF00"},{"text":"Knight","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 12 64 63 oak_wall_sign run setblock 12 64 63 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 2"},"color":"#09FF00"},{"text":"Archer","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 14 64 64 oak_wall_sign run setblock 14 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 3"},"color":"#09FF00"},{"text":"Mage","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
execute unless block 10 64 -63 obsidian run setblock 10 64 -63 obsidian
execute unless block 12 64 -62 obsidian run setblock 12 64 -62 obsidian
execute unless block 14 64 -63 obsidian run setblock 14 64 -63 obsidian
execute unless block 10 63 -63 obsidian run setblock 10 63 -63 obsidian
execute unless block 12 63 -62 obsidian run setblock 12 63 -62 obsidian
execute unless block 14 63 -63 obsidian run setblock 14 63 -63 obsidian
execute unless block 10 64 63 obsidian run setblock 10 64 63 obsidian
execute unless block 12 64 62 obsidian run setblock 12 64 62 obsidian
execute unless block 14 64 63 obsidian run setblock 14 64 63 obsidian
execute unless block 10 63 63 obsidian run setblock 10 63 63 obsidian
execute unless block 12 63 62 obsidian run setblock 12 63 62 obsidian
execute unless block 14 63 63 obsidian run setblock 14 63 63 obsidian

#> Crystal health & bossbars
execute if score @s gametime matches 1.. run bossbar set rr_crusade:blue players @a[x=0,team=!Lobby]
execute if score @s gametime matches 1.. run bossbar set rr_crusade:yellow players @a[x=0,team=!Lobby]
execute store result bossbar rr_crusade:blue value run scoreboard players get $BlueShield crusadehp
execute store result bossbar rr_crusade:yellow value run scoreboard players get $YellowShield crusadehp

#> Deplete health
execute if score $BlueShield crusadehp matches 1.. if score $CBA crusadehp matches 1.. unless entity @e[x=0,type=end_crystal,tag=CrusadeBlueA] run function rr_crusade:game/restorecba
execute if score $BlueShield crusadehp matches 1.. if score $CBB crusadehp matches 1.. unless entity @e[x=0,type=end_crystal,tag=CrusadeBlueB] run function rr_crusade:game/restorecbb
execute if score $YellowShield crusadehp matches 1.. if score $CYA crusadehp matches 1.. unless entity @e[x=0,type=end_crystal,tag=CrusadeYellowA] run function rr_crusade:game/restorecya
execute if score $YellowShield crusadehp matches 1.. if score $CYB crusadehp matches 1.. unless entity @e[x=0,type=end_crystal,tag=CrusadeYellowB] run function rr_crusade:game/restorecyb

#> Cooldown behavior
# Pre cooldown
execute if score $CBAprecd crusadehp matches 1.. run scoreboard players remove $CBAprecd crusadehp 1
execute if score $CBBprecd crusadehp matches 1.. run scoreboard players remove $CBBprecd crusadehp 1
execute if score $CYAprecd crusadehp matches 1.. run scoreboard players remove $CYAprecd crusadehp 1
execute if score $CYBprecd crusadehp matches 1.. run scoreboard players remove $CYBprecd crusadehp 1

# Actual cooldown
execute if score $CBAcd crusadehp matches 0.. run scoreboard players remove $CBAcd crusadehp 1
execute if score $CBBcd crusadehp matches 0.. run scoreboard players remove $CBBcd crusadehp 1
execute if score $CYAcd crusadehp matches 0.. run scoreboard players remove $CYAcd crusadehp 1
execute if score $CYBcd crusadehp matches 0.. run scoreboard players remove $CYBcd crusadehp 1

# Glass during cooldown
execute if score $CBA crusadehp matches 1.. if score $CBAcd crusadehp matches 1.. run fill 36 47 -35 40 51 -39 minecraft:tinted_glass
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 1.. run fill -16 47 -35 -12 51 -39 minecraft:tinted_glass
execute if score $CYA crusadehp matches 1.. if score $CYAcd crusadehp matches 1.. run fill -12 47 35 -16 51 39 minecraft:tinted_glass
execute if score $CYB crusadehp matches 1.. if score $CYBcd crusadehp matches 1.. run fill 36 47 35 40 51 39 minecraft:tinted_glass

# Glass after cooldown
execute if score $CBA crusadehp matches 1.. if score $CBAcd crusadehp matches 0 run fill 36 47 -35 40 51 -39 minecraft:blue_stained_glass replace tinted_glass
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 0 run fill -16 47 -35 -12 51 -39 minecraft:blue_stained_glass replace tinted_glass
execute if score $CYA crusadehp matches 1.. if score $CYAcd crusadehp matches 0 run fill -12 47 35 -16 51 39 minecraft:yellow_stained_glass replace tinted_glass
execute if score $CYB crusadehp matches 1.. if score $CYBcd crusadehp matches 0 run fill 36 47 35 40 51 39 minecraft:yellow_stained_glass replace tinted_glass

# End crystals after cooldown
execute if score $CBA crusadehp matches 1.. if score $CBAcd crusadehp matches 0 run data modify entity @e[x=0,type=end_crystal,tag=CrusadeBlueA,limit=1] Invulnerable set value 0b
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 0 run data modify entity @e[x=0,type=end_crystal,tag=CrusadeBlueB,limit=1] Invulnerable set value 0b
execute if score $CYA crusadehp matches 1.. if score $CYAcd crusadehp matches 0 run data modify entity @e[x=0,type=end_crystal,tag=CrusadeYellowA,limit=1] Invulnerable set value 0b
execute if score $CYB crusadehp matches 1.. if score $CYBcd crusadehp matches 0 run data modify entity @e[x=0,type=end_crystal,tag=CrusadeYellow,limit=1] Invulnerable set value 0b

# Sounds after cooldown
execute if score $CBA crusadehp matches 1.. if score $CBAcd crusadehp matches 0 positioned 38 49 -37 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 2
execute if score $CBB crusadehp matches 1.. if score $CBBcd crusadehp matches 0 positioned -14 49 -37 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 2
execute if score $CYA crusadehp matches 1.. if score $CYAcd crusadehp matches 0 positioned -14 49 37 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 2
execute if score $CYB crusadehp matches 1.. if score $CYBcd crusadehp matches 0 positioned 38 49 37 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 2

#> Win condition
execute if predicate rr_crusade:blue_portal_revealed unless block 4 45 -67 nether_portal if predicate rr_crusade:yellow_portal_revealed unless block 4 45 67 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon] if predicate rr_crusade:blue_portal_revealed unless block 4 45 -67 nether_portal run function rr_crusade:game/winyellow
execute if entity @s[tag=!BothWon] if predicate rr_crusade:yellow_portal_revealed unless block 4 45 67 nether_portal run function rr_crusade:game/winblue