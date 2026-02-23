effect give @s minecraft:regeneration 2 1 true
execute rotated 0 0 anchored eyes run particle minecraft:heart ^ ^0.5 ^ 0 0 0 0 1 force @a[x=0,predicate=custom:in_arena,tag=!hideParticles]

execute store result score $health var run data get entity @s Health
execute store result score $max_health var run attribute @s minecraft:max_health get
execute unless score $health var >= $max_health var run playsound minecraft:block.brewing_stand.brew player @s ~ ~ ~ 0.5 2
