scoreboard players remove $CYA crusadehp 5
scoreboard players remove $YellowShield crusadehp 5
execute unless score $CYA crusadehp matches 1.. run tellraw @a ["",{"text":"Yellow Crystal ","color":"yellow"},{"text":"A","bold":true,"color":"gold"},{"text":" has been destroyed!","color":"yellow"}]
execute unless score $CYA crusadehp matches 1.. as @a[team=Blue] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CYA crusadehp matches 1.. as @a[team=Blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CYA crusadehp matches 1.. as @a[team=Yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CYA crusadehp matches 1.. as @a[team=Yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CYA crusadehp matches 1.. run gamerule showDeathMessages false
execute if score $CYA crusadehp matches 1.. positioned -14 49 37 run execute as @e[type=player,team=!Spectator,team=!Developer,team=!Lobby,distance=..5] run tellraw @a ["",{"selector":"@s"},{"text":" went too close to an End Crystal","color":"white"}]
execute if score $CYA crusadehp matches 1.. positioned -14 49 37 run kill @a[team=!Spectator,team=!Developer,team=!Lobby,distance=..5]
execute if score $CYA crusadehp matches 1.. run gamerule showDeathMessages true
execute if score $CYA crusadehp matches 1.. run fill -12 47 35 -16 51 39 minecraft:yellow_stained_glass
execute if score $CYA crusadehp matches 1.. run summon end_crystal -14 49 37 {Tags:["CrusadeEntity","CrusadeYellowA"],BeamTarget:{X:12,Y:50,Z:52},ShowBottom:0b}
execute if score $CYA crusadehp matches 1.. positioned -14 49 37 run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.8
execute if score $CYA crusadehp matches 1.. positioned -14 49 37 run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 2 2

#> Expose Portals
execute if score $YellowShield crusadehp matches -1000..0 run tellraw @a[team=Blue] {"text":"Both Yellow Crystals have been destroyed! A portal has been exposed, destroy it to win!","color":"yellow"}
execute if score $YellowShield crusadehp matches -1000..0 run tellraw @a[team=Yellow] {"text":"Both of our Crystals have been destroyed! Our portal is no longer protected, don't let them destroy it!","color":"yellow"}
execute if score $YellowShield crusadehp matches -1000..0 run fill 4 45 52 20 55 66 minecraft:yellow_stained_glass
execute if score $YellowShield crusadehp matches -1000..0 run fill 21 44 67 21 56 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 21 56 67 3 56 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 3 44 67 3 56 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 3 44 67 21 44 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 20 55 67 4 45 67 minecraft:nether_portal