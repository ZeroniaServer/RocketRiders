scoreboard players remove $CBA crusadehp 5
scoreboard players remove $BlueShield crusadehp 5
execute unless score $CBA crusadehp matches 1.. run tellraw @a ["",{"text":"Blue Crystal ","color":"blue"},{"text":"A","bold":true,"color":"dark_aqua"},{"text":" has been destroyed!","color":"blue"}]
execute unless score $CBA crusadehp matches 1.. as @a[team=Yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CBA crusadehp matches 1.. as @a[team=Yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CBA crusadehp matches 1.. as @a[team=Blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CBA crusadehp matches 1.. as @a[team=Blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CBA crusadehp matches 1.. run gamerule showDeathMessages false
execute if score $CBA crusadehp matches 1.. positioned 38 49 -37 run execute as @e[type=player,team=!Spectator,team=!Developer,team=!Lobby,distance=..5] run tellraw @a ["",{"selector":"@s"},{"text":" went too close to an End Crystal","color":"white"}]
execute if score $CBA crusadehp matches 1.. positioned 38 49 -37 run kill @a[team=!Spectator,team=!Developer,team=!Lobby,distance=..5]
execute if score $CBA crusadehp matches 1.. run gamerule showDeathMessages true
execute if score $CBA crusadehp matches 1.. run fill 36 47 -35 40 51 -39 minecraft:blue_stained_glass
execute if score $CBA crusadehp matches 1.. run summon end_crystal 38 49 -37 {Tags:["CrusadeEntity","CrusadeBlueA"],BeamTarget:{X:12,Y:50,Z:-52},ShowBottom:0b}
execute if score $CBA crusadehp matches 1.. positioned 38 49 -37 run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.8
execute if score $CBA crusadehp matches 1.. positioned 38 49 -37 run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 2 2

#> Expose Portals
execute if score $BlueShield crusadehp matches -1000..0 run tellraw @a[team=Yellow] {"text":"Both Blue Crystals have been destroyed! A portal has been exposed, destroy it to win!","color":"blue"}
execute if score $BlueShield crusadehp matches -1000..0 run tellraw @a[team=Blue] {"text":"Both of our Crystals have been destroyed! Our portal is no longer protected, don't let them destroy it!","color":"blue"}
execute if score $BlueShield crusadehp matches -1000..0 run fill 20 45 -52 4 55 -66 minecraft:blue_stained_glass
execute if score $BlueShield crusadehp matches -1000..0 run fill 21 44 -67 21 56 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 21 56 -67 3 56 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 3 56 -67 3 44 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 3 44 -67 21 44 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 4 45 -67 20 55 -67 nether_portal