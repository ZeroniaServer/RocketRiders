tp @a[x=0,predicate=custom:team/yellow,predicate=rr_powerups:oncrystalyellow] 12 64 66 -180 0
execute as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:entity.ender_eye.death master @s
tellraw @a[x=0,predicate=custom:team/yellow] {"text":"Crystal Crafter Deactivated!","color":"red","bold":true}
scoreboard players reset @s PowerupCrystal
fill 14 63 68 10 66 72 air destroy
fill 14 63 67 10 63 67 air destroy
execute positioned 12 66 69 run playsound minecraft:block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 0
kill @e[x=0,type=armor_stand,tag=PUCrystalDeco]