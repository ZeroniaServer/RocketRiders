execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run fill 18 53 6 6 53 -6 air
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run playsound minecraft:block.amethyst_cluster.break master @a[x=0] ~ ~ ~ 3 0
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run playsound minecraft:block.amethyst_cluster.break master @a[x=0] ~ ~ ~ 3 0.6
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run playsound minecraft:block.amethyst_cluster.break master @a[x=0] ~ ~ ~ 3 0.7
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run particle minecraft:falling_obsidian_tear ~ ~ ~ 3 0 3 0.1 100 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run particle minecraft:explosion ~ ~ ~ 3 0 3 0.1 20 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run scoreboard players remove @s captureYellow 1
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run scoreboard players remove @s captureBlue 1
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run scoreboard players set @s capturePoint 0
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run tag @a[x=0,tag=onCapturePoint] add CheckCry
scoreboard players add @a[x=0,tag=CheckCry] CryAboutIt 1
tag @a[x=0,scores={CryAboutIt=60..}] remove CheckCry
scoreboard players reset @a[x=0,tag=!CheckCry,scores={CryAboutIt=1..}] CryAboutIt

execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run bossbar set rr_powerups:capture_progress name {"text":"Platform Temporarily Disabled","bold":true,"color":"dark_red"}
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run bossbar set rr_powerups:capture_progress color red
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run bossbar set rr_powerups:capture_progress max 200
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run scoreboard players set @s CmdData 200

execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run kill @e[x=0,type=marker,tag=BlueCrystalSpot]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run kill @e[x=0,type=marker,tag=YellowCrystalSpot]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run kill @e[x=0,type=#custom:crystal,tag=PUCrystalEntity]

execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run tag @s add BrokenPlatform

execute as @e[x=0,type=marker,tag=captureMiddle,tag=BrokenPlatform] store result bossbar rr_powerups:capture_progress value run scoreboard players get @s CmdData
scoreboard players remove @e[x=0,type=marker,tag=captureMiddle,tag=BrokenPlatform] CmdData 1

execute as @e[x=0,type=marker,tag=captureMiddle,tag=BrokenPlatform,scores={CmdData=..-1}] run tag @s add FixPlatform
execute as @e[x=0,type=marker,tag=captureMiddle,tag=FixPlatform] run bossbar set rr_powerups:capture_progress max 100
execute as @e[x=0,type=marker,tag=captureMiddle,tag=FixPlatform] at @s run particle minecraft:falling_obsidian_tear ~ ~ ~ 3 0 3 0.1 100 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=FixPlatform] at @s run particle minecraft:explosion ~ ~ ~ 3 0 3 0.1 20 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=FixPlatform] at @s run playsound minecraft:block.amethyst_cluster.place master @a[x=0] ~ ~ ~ 3 0
execute as @e[x=0,type=marker,tag=captureMiddle,tag=FixPlatform] at @s run playsound minecraft:block.amethyst_cluster.place master @a[x=0] ~ ~ ~ 3 0.6
execute as @e[x=0,type=marker,tag=captureMiddle,tag=FixPlatform] at @s run playsound minecraft:block.amethyst_cluster.place master @a[x=0] ~ ~ ~ 3 0.7
execute as @e[x=0,type=marker,tag=captureMiddle,tag=FixPlatform] run tag @s remove BrokenPlatform
execute as @e[x=0,type=marker,tag=captureMiddle,tag=FixPlatform] run scoreboard players reset @s CmdData
execute as @e[x=0,type=marker,tag=captureMiddle,tag=FixPlatform] run tag @s remove FixPlatform


#Crystals deplete platforms
scoreboard players add @e[x=0,type=end_crystal,tag=PUCrystalPerma] capturePoint 1
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s unless score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 1.. run data merge entity @s {beam_target:[I;18,52,0]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 1 run data merge entity @s {beam_target:[I;6,52,0]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 2 run data merge entity @s {beam_target:[I;12,52,6]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 3 run data merge entity @s {beam_target:[I;12,52,-6]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 4 run data merge entity @s {beam_target:[I;7,52,3]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 5 run data merge entity @s {beam_target:[I;7,52,-3]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 6 run data merge entity @s {beam_target:[I;17,52,3]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 7 run data merge entity @s {beam_target:[I;17,52,-3]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 8 run data merge entity @s {beam_target:[I;9,52,5]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 9 run data merge entity @s {beam_target:[I;9,52,-5]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 10 run data merge entity @s {beam_target:[I;15,52,5]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 11 run data merge entity @s {beam_target:[I;15,52,-5]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 12 run data merge entity @s {beam_target:[I;16,52,4]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 13 run data merge entity @s {beam_target:[I;8,52,4]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 14 run data merge entity @s {beam_target:[I;8,52,-4]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 15 run data merge entity @s {beam_target:[I;16,52,-4]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[x=0,type=marker,tag=captureMiddle,limit=1] CmdData matches 16 run data merge entity @s {beam_target:[I;12,52,0]}

execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run scoreboard players add @e[x=0,type=marker,tag=captureMiddle] CmdData 1
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run playsound minecraft:block.glass.break master @a[x=0] ~ ~ ~ 1 0.8
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run playsound minecraft:block.respawn_anchor.set_spawn master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run summon item_display ~ ~ ~ {Tags:["PUCrystalEntity","PUCrystalPerma"],Passengers:[{id:"end_crystal",Invulnerable:1b,ShowBottom:0b,Tags:["PUCrystal","PUCrystalEntity","PUCrystalPerma"]}]}
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=40..}] on vehicle run kill @s
execute as @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run kill @s
scoreboard players reset @e[x=0,type=end_crystal,tag=PUCrystalPerma,scores={capturePoint=40..}] capturePoint