# arguments: yaw, pitch, random_radius

$execute rotated $(yaw) $(pitch) positioned ^ ^ ^$(radius) as @e[distance=..10,type=area_effect_cloud,tag=!health_spell.this,predicate=entities:type/health_spell] if score @s entity.age < #this entity.age if function entities:type/health_spell/tick/check_too_close run return 0
$execute rotated $(yaw) $(pitch) run particle minecraft:composter ^ ^ ^$(random_radius) 0 0 0 0 1 force @a[x=0,predicate=custom:in_arena,predicate=custom:team/$(team),tag=!hideParticles]
$execute rotated $(yaw) $(pitch) run particle minecraft:electric_spark ^ ^ ^$(random_radius) 0 0 0 0 1 force @a[x=0,predicate=custom:in_arena,predicate=!custom:team/$(team),tag=!hideParticles]
