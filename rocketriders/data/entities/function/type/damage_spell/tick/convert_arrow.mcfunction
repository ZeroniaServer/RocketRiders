ride @s mount @e[limit=1,dx=2,dy=2,dz=2,type=#arrows,predicate=custom:entity/is_moving]
execute unless predicate custom:entity/has_vehicle run return 0

execute on vehicle run loot replace entity @s[type=#arrows] contents loot items:item/tipped_arrow_wither
tag @s add damage_spell.trailing_arrow
execute positioned as @s run particle minecraft:instant_effect{color:0x6F6F6F,power:1.7} ^ ^ ^-0.3 0.35 0.35 0.35 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute positioned as @s run particle minecraft:instant_effect{color:0x2F2F2F,power:1.7} ^ ^ ^-0.3 0.35 0.35 0.35 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute positioned as @s run particle minecraft:raid_omen ~ ~ ~ 0 0 0 1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute positioned as @s run playsound minecraft:entity.evoker.cast_spell master @a[x=0] ~ ~ ~ 1 0
return 1