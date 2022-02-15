execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run fill 18 53 6 6 53 -6 air
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 3 0
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 3 0.6
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 3 0.7
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run particle minecraft:falling_obsidian_tear ~ ~ ~ 3 0 3 0.1 100 force
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] at @s run particle minecraft:explosion ~ ~ ~ 3 0 3 0.1 20 force
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run scoreboard players remove @s captureYellow 1
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run scoreboard players remove @s captureBlue 1
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run scoreboard players set @s capturePoint 0
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run tag @a[tag=onCapturePoint] add CheckCry
scoreboard players add @a[tag=CheckCry] CryAboutIt 1
tag @a[scores={CryAboutIt=60..}] remove CheckCry
scoreboard players reset @a[tag=!CheckCry,scores={CryAboutIt=1..}] CryAboutIt

execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run bossbar set rr_powerups:capture_progress name {"text":"Platform Temporarily Disabled","bold":true,"color":"dark_red"}
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run bossbar set rr_powerups:capture_progress color red
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run bossbar set rr_powerups:capture_progress max 200
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run scoreboard players set @s CmdData 200

execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run kill @e[tag=BlueCrystalSpot]
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run kill @e[tag=YellowCrystalSpot]
execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run kill @e[tag=PUCrystalEntity]

execute as @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={CmdData=17..}] run tag @s add BrokenPlatform

execute as @e[tag=captureMiddle,tag=BrokenPlatform] store result bossbar rr_powerups:capture_progress value run scoreboard players get @s CmdData
scoreboard players remove @e[tag=captureMiddle,tag=BrokenPlatform] CmdData 1

execute as @e[tag=captureMiddle,tag=BrokenPlatform,scores={CmdData=..-1}] run tag @s add FixPlatform
execute as @e[tag=captureMiddle,tag=FixPlatform] run bossbar set rr_powerups:capture_progress max 100
execute as @e[tag=captureMiddle,tag=FixPlatform] at @s run particle minecraft:falling_obsidian_tear ~ ~ ~ 3 0 3 0.1 100 force
execute as @e[tag=captureMiddle,tag=FixPlatform] at @s run particle minecraft:explosion ~ ~ ~ 3 0 3 0.1 20 force
execute as @e[tag=captureMiddle,tag=FixPlatform] at @s run playsound minecraft:block.amethyst_cluster.place master @a ~ ~ ~ 3 0
execute as @e[tag=captureMiddle,tag=FixPlatform] at @s run playsound minecraft:block.amethyst_cluster.place master @a ~ ~ ~ 3 0.6
execute as @e[tag=captureMiddle,tag=FixPlatform] at @s run playsound minecraft:block.amethyst_cluster.place master @a ~ ~ ~ 3 0.7
execute as @e[tag=captureMiddle,tag=FixPlatform] run tag @s remove BrokenPlatform
execute as @e[tag=captureMiddle,tag=FixPlatform] run scoreboard players reset @s CmdData
execute as @e[tag=captureMiddle,tag=FixPlatform] run tag @s remove FixPlatform


#Crystals deplete platforms
scoreboard players add @e[tag=PUCrystalPerma] capturePoint 1
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s unless score @e[tag=captureMiddle,limit=1] CmdData matches 1.. run data merge entity @s {BeamTarget:{X:18,Y:52,Z:0}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 1 run data merge entity @s {BeamTarget:{X:6,Y:52,Z:0}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 2 run data merge entity @s {BeamTarget:{X:12,Y:52,Z:6}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 3 run data merge entity @s {BeamTarget:{X:12,Y:52,Z:-6}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 4 run data merge entity @s {BeamTarget:{X:7,Y:52,Z:3}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 5 run data merge entity @s {BeamTarget:{X:7,Y:52,Z:-3}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 6 run data merge entity @s {BeamTarget:{X:17,Y:52,Z:3}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 7 run data merge entity @s {BeamTarget:{X:17,Y:52,Z:-3}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 8 run data merge entity @s {BeamTarget:{X:9,Y:52,Z:5}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 9 run data merge entity @s {BeamTarget:{X:9,Y:52,Z:-5}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 10 run data merge entity @s {BeamTarget:{X:15,Y:52,Z:5}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 11 run data merge entity @s {BeamTarget:{X:15,Y:52,Z:-5}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 12 run data merge entity @s {BeamTarget:{X:16,Y:52,Z:4}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 13 run data merge entity @s {BeamTarget:{X:8,Y:52,Z:4}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 14 run data merge entity @s {BeamTarget:{X:8,Y:52,Z:-4}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 15 run data merge entity @s {BeamTarget:{X:16,Y:52,Z:-4}}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=25..}] at @s if score @e[tag=captureMiddle,limit=1] CmdData matches 16 run data merge entity @s {BeamTarget:{X:12,Y:52,Z:0}}

execute as @e[tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run scoreboard players add @e[tag=captureMiddle] CmdData 1
execute as @e[tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 10 force
execute as @e[tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.8
execute as @e[tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 2 2
execute as @e[tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:0b,Tags:["PUCrystal","PUCrystalEntity","PUCrystalPerma"]}
execute as @e[tag=PUCrystalPerma,scores={capturePoint=40..}] at @s run kill @s
scoreboard players reset @e[tag=PUCrystalPerma,scores={capturePoint=40..}] capturePoint