particle minecraft:instant_effect{color:0x6F6F6F,power:1.7} ^ ^ ^-0.3 0.35 0.35 0.35 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
particle minecraft:instant_effect{color:0x2F2F2F,power:1.7} ^ ^ ^-0.3 0.35 0.35 0.35 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
particle minecraft:raid_omen ~ ~ ~ 0 0 0 1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
playsound minecraft:entity.evoker.cast_spell master @a[x=0] ~ ~ ~ 1 0
kill @s
