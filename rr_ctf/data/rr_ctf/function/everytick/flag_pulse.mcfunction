# Break ladders without support from above or behind
function rr_ctf:everytick/flag_ladders

# Regenerate the end stone and ladders periodically
$execute if score $stage var matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
execute if score $stage var matches 0 run return 0

$execute if score $stage var matches 1 positioned ~-1 ~-1 ~ if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
$execute if score $stage var matches 1 positioned ~1 ~-1 ~ if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
$execute if score $stage var matches 1 positioned ~ ~-1 ~-1 if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
$execute if score $stage var matches 1 positioned ~ ~-1 ~1 if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
execute if score $stage var matches 1 run return 0

$execute if score $stage var matches 2 positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
$execute if score $stage var matches 2 positioned ~-1 ~-1 ~1 if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
$execute if score $stage var matches 2 positioned ~1 ~-1 ~-1 if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
$execute if score $stage var matches 2 positioned ~1 ~-1 ~1 if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
$execute if score $stage var matches 2 positioned ~-2 ~-1 ~ if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
$execute if score $stage var matches 2 positioned ~2 ~-1 ~ if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
execute if score $stage var matches 2 unless predicate custom:location/flag_needs_ladders run return 0
$execute if score $stage var matches 2 positioned ~ ~-1 ~-2 if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
$execute if score $stage var matches 2 positioned ~ ~-1 ~2 if block ~ ~ ~ #custom:flag_supports_replaceable run setblock ~ ~ ~ $(back) destroy
execute if score $stage var matches 2 run return 0

# Ladders
execute if score $stage var matches 3.. unless predicate custom:location/flag_needs_ladders run return 0

execute if score $stage var matches 3 unless block ~2 ~-1 ~ #custom:cannot_support_ladders if block ~3 ~-1 ~ #custom:flag_supports_replaceable run setblock ~3 ~-1 ~ minecraft:ladder[facing=east] destroy
execute if score $stage var matches 3 unless block ~-2 ~-1 ~ #custom:cannot_support_ladders if block ~-3 ~-1 ~ #custom:flag_supports_replaceable run setblock ~-3 ~-1 ~ minecraft:ladder[facing=west] destroy
execute if score $stage var matches 3 unless block ~ ~-1 ~2 #custom:cannot_support_ladders if block ~ ~-1 ~3 #custom:flag_supports_replaceable run setblock ~ ~-1 ~3 minecraft:ladder[facing=south] destroy
execute if score $stage var matches 3 unless block ~ ~-1 ~-2 #custom:cannot_support_ladders if block ~ ~-1 ~-3 #custom:flag_supports_replaceable run setblock ~ ~-1 ~-3 minecraft:ladder[facing=north] destroy
execute if score $stage var matches 3 run return 0

execute if score $stage var matches 4 positioned ~ ~-2 ~ if predicate custom:location/flag_ladder_can_generate run function rr_ctf:everytick/flag_pulse_ladders
execute if score $stage var matches 5 positioned ~ ~-3 ~ if predicate custom:location/flag_ladder_can_generate run function rr_ctf:everytick/flag_pulse_ladders
execute if score $stage var matches 6 positioned ~ ~-4 ~ if predicate custom:location/flag_ladder_can_generate run function rr_ctf:everytick/flag_pulse_ladders
execute if score $stage var matches 7 positioned ~ ~-5 ~ if predicate custom:location/flag_ladder_can_generate run function rr_ctf:everytick/flag_pulse_ladders
