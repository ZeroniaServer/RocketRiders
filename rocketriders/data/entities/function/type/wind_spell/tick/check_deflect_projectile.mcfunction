execute positioned ^ ^ ^1 as @e[distance=..0.5,predicate=custom:entity/deflectable_by_wind_spells,predicate=!custom:entity/has_vehicle,predicate=custom:in_arena,sort=nearest] if function entities:type/wind_spell/tick/check_brain_age_is_not_low run return run function entities:type/wind_spell/tick/deflect_projectile
execute as @e[distance=..1.25,predicate=custom:entity/deflectable_by_wind_spells,predicate=!custom:entity/has_vehicle,predicate=custom:in_arena,sort=nearest] if function entities:type/wind_spell/tick/check_brain_age_is_not_low run return run function entities:type/wind_spell/tick/deflect_projectile

return fail
