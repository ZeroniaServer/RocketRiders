scoreboard players remove $CBB crusadehp 5
scoreboard players remove $BlueShield crusadehp 5
execute unless score $CBB crusadehp matches 1.. run tellraw @a[team=Yellow] ["\n",{"text":"✔ ","color":"green"},{"text":"Blue Crystal ","color":"blue"},{"text":"B","bold":true,"color":"dark_aqua"},{"text":" has been destroyed!","color":"blue"}]
execute unless score $CBB crusadehp matches 1.. run tellraw @a[team=Blue] ["\n",{"text":"⚠ ","color":"red"},{"text":"Blue Crystal ","color":"blue"},{"text":"B","bold":true,"color":"dark_aqua"},{"text":" has been destroyed!","color":"blue"}]
execute unless score $CBB crusadehp matches 1.. run tellraw @a[team=!Yellow,team=!Blue] ["\n",{"text":"Blue Crystal ","color":"blue"},{"text":"B","bold":true,"color":"dark_aqua"},{"text":" has been destroyed!","color":"blue"}]
execute unless score $CBB crusadehp matches 1.. as @a[team=Yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CBB crusadehp matches 1.. as @a[team=Yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CBB crusadehp matches 1.. as @a[team=Blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CBB crusadehp matches 1.. as @a[team=Blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CBB crusadehp matches 1.. run gamerule showDeathMessages false
execute if score $CBB crusadehp matches 1.. positioned -14 49 -37 as @e[type=player,team=!Spectator,team=!Developer,team=!Lobby,distance=..5] run tellraw @a ["",{"selector":"@s"},{"text":" went too close to an End Crystal","color":"white"}]
execute if score $CBB crusadehp matches 1.. positioned -14 49 -37 run kill @a[team=!Spectator,team=!Developer,team=!Lobby,distance=..5]
execute if score $CBB crusadehp matches 1.. positioned -14 49 -37 run gamerule showDeathMessages true
execute if score $CBB crusadehp matches 1.. run fill -16 47 -35 -12 51 -39 minecraft:blue_stained_glass
execute if score $CBB crusadehp matches 1.. run summon end_crystal -14 49 -37 {Tags:["CrusadeEntity","CrusadeBlueB"],BeamTarget:{X:12,Y:50,Z:-52},ShowBottom:0b}
execute if score $CBB crusadehp matches 1.. positioned -14 49 -37 run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.8
execute if score $CBB crusadehp matches 1.. positioned -14 49 -37 run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 2 2

#> Expose Portals
execute if score $BlueShield crusadehp matches -1000..0 run tellraw @a[team=Yellow] ["\n",{"text":"Both Blue Crystals have been destroyed!","color":"blue"},{"text":"\nA portal has been exposed; destroy it to win!","color":"dark_aqua","italic":true}]
execute if score $BlueShield crusadehp matches -1000..0 run tellraw @a[team=Blue] ["\n",{"text":"Both of our Crystals have been destroyed!","color":"blue"},{"text":"\nOur portal is no longer protected; don't let them destroy it!","color":"dark_aqua","italic":true}]
execute if score $BlueShield crusadehp matches -1000..0 run tellraw @a[team=!Yellow,team=!Blue] ["\n",{"text":"Both Blue Crystals have been destroyed!","color":"blue"}]
execute if score $BlueShield crusadehp matches -1000..0 run fill 20 45 -52 4 55 -66 minecraft:blue_stained_glass
execute if score $BlueShield crusadehp matches -1000..0 run fill 21 44 -67 21 56 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 21 56 -67 3 56 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 3 56 -67 3 44 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 3 44 -67 21 44 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 4 45 -67 20 55 -67 nether_portal

execute unless score $CBB crusadehp matches 1.. run tellraw @a [""]