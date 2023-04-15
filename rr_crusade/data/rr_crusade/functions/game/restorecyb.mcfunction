scoreboard players remove $CYB crusadehp 5
scoreboard players remove $YellowShield crusadehp 5
execute unless score $CYB crusadehp matches 1.. run tellraw @a[predicate=custom:indimension,team=Blue] ["\n",{"text":"✔ ","color":"green"},{"text":"Yellow Crystal ","color":"gold"},{"text":"B","bold":true,"color":"yellow"},{"text":" has been destroyed!","color":"gold"}]
execute unless score $CYB crusadehp matches 1.. run tellraw @a[predicate=custom:indimension,team=Yellow] ["\n",{"text":"⚠ ","color":"red"},{"text":"Yellow Crystal ","color":"gold"},{"text":"B","bold":true,"color":"yellow"},{"text":" has been destroyed!","color":"gold"}]
execute unless score $CYB crusadehp matches 1.. run tellraw @a[predicate=custom:indimension,team=!Yellow,team=!Blue] ["\n",{"text":"Yellow Crystal ","color":"gold"},{"text":"B","bold":true,"color":"yellow"},{"text":" has been destroyed!","color":"gold"}]
execute unless score $CYB crusadehp matches 1.. as @a[predicate=custom:indimension,team=Blue] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CYB crusadehp matches 1.. as @a[predicate=custom:indimension,team=Blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CYB crusadehp matches 1.. as @a[predicate=custom:indimension,team=Yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CYB crusadehp matches 1.. as @a[predicate=custom:indimension,team=Yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CYB crusadehp matches 1.. run gamerule showDeathMessages false
execute if score $CYB crusadehp matches 1.. positioned 38 49 37 as @e[type=player,team=!Spectator,team=!Developer,team=!Lobby,distance=..5] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" went too close to an End Crystal","color":"white"}]
execute if score $CYB crusadehp matches 1.. positioned 38 49 37 run kill @a[predicate=custom:indimension,team=!Spectator,team=!Developer,team=!Lobby,distance=..5]
execute if score $CYB crusadehp matches 1.. run gamerule showDeathMessages true
execute if score $CYB crusadehp matches 1.. run fill 36 47 35 40 51 39 minecraft:yellow_stained_glass
execute if score $CYB crusadehp matches 1.. run summon end_crystal 38 49 37 {Tags:["CrusadeEntity","CrusadeYellowB"],BeamTarget:{X:12,Y:50,Z:52},ShowBottom:0b}
execute if score $CYB crusadehp matches 1.. positioned 38 49 37 run playsound minecraft:block.glass.break master @a[predicate=custom:indimension] ~ ~ ~ 1 0.8
execute if score $CYB crusadehp matches 1.. positioned 38 49 37 run playsound minecraft:block.respawn_anchor.set_spawn master @a[predicate=custom:indimension] ~ ~ ~ 2 2

#> Expose Portals
execute if score $YellowShield crusadehp matches -1000..0 run tellraw @a[predicate=custom:indimension,team=Blue] ["\n",{"text":"Both Yellow Crystals have been destroyed!","color":"gold"},{"text":"\nA portal has been exposed; destroy it to win!","color":"yellow","italic":true}]
execute if score $YellowShield crusadehp matches -1000..0 run tellraw @a[predicate=custom:indimension,team=Yellow] ["\n",{"text":"Both of our Crystals have been destroyed!","color":"gold"},{"text":"\nOur portal is no longer protected; don't let them destroy it!","color":"yellow","italic":true}]
execute if score $YellowShield crusadehp matches -1000..0 run tellraw @a[predicate=custom:indimension,team=!Yellow,team=!Blue] ["\n",{"text":"Both Yellow Crystals have been destroyed!","color":"gold"}]
execute if score $YellowShield crusadehp matches -1000..0 run fill 4 45 52 20 55 66 minecraft:yellow_stained_glass
execute if score $YellowShield crusadehp matches -1000..0 run fill 21 44 67 21 56 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 21 56 67 3 56 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 3 44 67 3 56 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 3 44 67 21 44 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 20 55 67 4 45 67 minecraft:nether_portal

execute unless score $CYB crusadehp matches 1.. run tellraw @a[predicate=custom:indimension] [""]