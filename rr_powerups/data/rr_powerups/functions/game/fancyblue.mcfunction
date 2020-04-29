execute as @s[scores={captureBlue=1}] unless entity @s[tag=contested] at @s run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 1.2
execute as @s[scores={captureBlue=1..}] unless entity @s[tag=contested] run particle minecraft:dust 0 1 1 2 12 55 -6 0 0.6 0 0 2 force
execute as @s[scores={captureBlue=1..}] unless entity @s[tag=contested] run particle minecraft:dust 0 1 1 2 18 55 0 0 0.6 0 0 2 force
execute as @s[scores={captureBlue=1..}] unless entity @s[tag=contested] run particle minecraft:dust 0 1 1 2 12 55 6 0 0.6 0 0 2 force
execute as @s[scores={captureBlue=1..}] unless entity @s[tag=contested] run particle minecraft:dust 0 1 1 2 6 55 0 0 0.6 0 0 2 force

execute as @s[scores={captureBlue=25}] at @s unless entity @s[tag=contested] run playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 0.8
execute as @s[scores={captureBlue=25..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 11 54 6 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=25..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 13 54 6 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=25..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 18 54 1 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=25..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 18 54 -1 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=25..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 13 54 -6 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=25..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 11 54 -6 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=25..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 6 54 -1 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=25..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 6 54 1 0 0 0 0.1 2 force

execute as @s[scores={captureBlue=50}] at @s unless entity @s[tag=contested] run playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 0.8
execute as @s[scores={captureBlue=50..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 7 54 2 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=50..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 7 54 -2 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=50..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 10 54 -5 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=50..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 10 54 5 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=50..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 14 54 -5 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=50..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 17 54 -2 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=50..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 17 54 2 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=50..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 14 54 5 0 0 0 0.1 2 force

execute as @s[scores={captureBlue=75}] at @s unless entity @s[tag=contested] run playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 0.8
execute as @s[scores={captureBlue=75..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 9 54 5 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=75..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 7 54 3 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=75..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 7 54 -3 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=75..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 9 54 -5 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=75..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 15 54 -5 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=75..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 17 54 -3 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=75..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 17 54 3 0 0 0 0.1 2 force
execute as @s[scores={captureBlue=75..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 15 54 5 0 0 0 0.1 2 force

execute as @s[scores={captureBlue=99}] at @s unless entity @s[tag=contested] if entity @a[team=Blue,tag=onCapturePoint] run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.2
execute as @s[scores={captureBlue=99}] at @s unless entity @s[tag=contested] unless entity @a[team=Blue,tag=onCapturePoint] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.2
execute as @s[scores={captureBlue=99..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 16 54 -4 0 0.6 0 0 2 force
execute as @s[scores={captureBlue=99..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 16 54 4 0 0.6 0 0 2 force
execute as @s[scores={captureBlue=99..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 8 54 4 0 0.6 0 0 2 force
execute as @s[scores={captureBlue=99..}] unless entity @s[tag=contested] run particle minecraft:dust 0 0 1 1 8 54 -4 0 0.6 0 0 2 force