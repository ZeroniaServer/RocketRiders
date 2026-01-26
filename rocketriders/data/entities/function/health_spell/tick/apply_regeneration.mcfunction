effect give @s minecraft:regeneration 3 1 true
execute rotated 0 0 anchored eyes run particle minecraft:heart ^ ^0.5 ^ 0 0 0 0 1 force @a[x=0,predicate=custom:in_arena,tag=!hideParticles]
playsound minecraft:block.brewing_stand.brew player @s ~ ~ ~ 0.5 2
