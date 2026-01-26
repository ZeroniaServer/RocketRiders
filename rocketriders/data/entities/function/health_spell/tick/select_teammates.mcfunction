# arguments: radius, team

$execute as @a[distance=..$(radius),predicate=custom:team/$(team),predicate=!custom:has_regeneration_effect] at @s run function entities:health_spell/tick/apply_regeneration
