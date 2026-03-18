tp @a[x=0,predicate=custom:team/blue,predicate=rr_powerups:oncrystalblue] 12 64 -66 0 0
execute as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.ender_eye.death master @s
execute if entity @s[scores={PowerupCrystal=19..,captureYellow=98..}] run tellraw @a[x=0,predicate=custom:team/blue] {"text":"Crystal Crafter Deactivated!","color":"red","bold":true}
scoreboard players reset @s PowerupCrystal
fill 14 63 -68 10 66 -72 air destroy
fill 14 63 -67 10 63 -67 air destroy
execute positioned 12 66 -69 run playsound minecraft:block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 0
kill @e[x=0,type=armor_stand,tag=PUCrystalDeco]