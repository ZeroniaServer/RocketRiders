scoreboard players remove $CBA crusadehp 2
scoreboard players remove $BlueShield crusadehp 2
execute unless score $CBA crusadehp matches 1.. run tellraw @a ["",{"text":"Blue Crystal ","color":"blue"},{"text":"A","bold":true,"color":"dark_aqua"},{"text":" has been destroyed!","color":"blue"}]
execute unless score $CBA crusadehp matches 1.. as @a[team=Yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute unless score $CBA crusadehp matches 1.. as @a[team=Yellow] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 2
execute unless score $CBA crusadehp matches 1.. as @a[team=Blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute unless score $CBA crusadehp matches 1.. as @a[team=Blue] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0

execute if score $CBA crusadehp matches 1.. run fill 22 58 -28 26 62 -32 blue_stained_glass
execute if score $CBA crusadehp matches 1.. run summon end_crystal 24 60 -30 {Tags:["CrusadeEntity","CrusadeBlueA"],BeamTarget:{X:12,Y:54,Z:-52},ShowBottom:0b}
execute if score $CBA crusadehp matches 1.. positioned 24 60 -30 run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.8
execute if score $CBA crusadehp matches 1.. positioned 24 60 -30 run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 2 2

#> Expose Portals
execute if score $BlueShield crusadehp matches -1000..0 run tellraw @a[team=Yellow] {"text":"Both Blue Crystals have been destroyed! A portal has been exposed below the Blue Castle Bridge, destroy it to win!","color":"blue"}
execute if score $BlueShield crusadehp matches -1000..0 run tellraw @a[team=Blue] {"text":"Both of our Crystals have been destroyed! Our portal below the bridge has been exposed, don't let them destroy it!","color":"blue"}
execute if score $BlueShield crusadehp matches -1000..0 run fill 10 52 -52 14 56 -66 minecraft:blue_stained_glass
execute if score $BlueShield crusadehp matches -1000..0 run fill 9 51 -59 9 57 -59 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 9 57 -59 15 57 -59 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 15 57 -59 15 51 -59 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 15 51 -59 9 51 -59 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 10 52 -59 14 56 -59 air
execute if score $BlueShield crusadehp matches -1000..0 run setblock 12 52 -59 fire