execute positioned ^ ^ ^1 as @e[distance=..0.5,predicate=custom:wind_spells_deflect,predicate=!custom:has_vehicle,predicate=custom:in_arena,sort=nearest] if function entities:wind_spell/tick/check_brain_age_is_not_low run return run function entities:wind_spell/tick/deflect_projectile
execute as @e[distance=..1.25,predicate=custom:wind_spells_deflect,predicate=!custom:has_vehicle,predicate=custom:in_arena,sort=nearest] if function entities:wind_spell/tick/check_brain_age_is_not_low run return run function entities:wind_spell/tick/deflect_projectile

return fail
