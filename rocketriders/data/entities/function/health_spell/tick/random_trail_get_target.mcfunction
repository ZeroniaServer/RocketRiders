# arguments: yaw, pitch, radius

$execute rotated $(yaw) $(pitch) positioned ^ ^ ^$(radius) as @e[distance=..10,type=area_effect_cloud,tag=!health_spell.this,predicate=entities:type/health_spell] if score @s entity.age < #this entity.age if function entities:health_spell/tick/check_too_close run return 0

$execute rotated $(yaw) -$(pitch) run tp @s ^ ^ ^$(radius)
data modify storage rocketriders:main health_spell.target set from entity @s Pos
$execute rotated $(yaw) $(pitch) positioned ^ ^ ^$(radius) run function entities:health_spell/tick/random_trail_spawn with storage rocketriders:main health_spell
