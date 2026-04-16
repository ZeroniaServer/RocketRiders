$fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 $(back) replace #custom:basereplace strict
$fill ~-2 ~-1 ~ ~2 ~-1 ~ $(back) replace #custom:basereplace strict
$execute if predicate custom:flag_needs_ladders run fill ~ ~-1 ~-2 ~ ~-1 ~2 $(back) replace #custom:basereplace strict
execute if predicate custom:flag_needs_ladders run fill ~3 ~-1 ~ ~3 64 ~ minecraft:ladder[facing=east] replace #custom:air strict
execute if predicate custom:flag_needs_ladders run fill ~-3 ~-1 ~ ~-3 64 ~ minecraft:ladder[facing=west] replace #custom:air strict
execute if predicate custom:flag_needs_ladders run fill ~ ~-1 ~3 ~ 64 ~3 minecraft:ladder[facing=south] replace #custom:air strict
execute if predicate custom:flag_needs_ladders run fill ~ ~-1 ~-3 ~ 64 ~-3 minecraft:ladder[facing=north] replace #custom:air strict
