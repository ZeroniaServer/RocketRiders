## Place facade
function game:place_facade

## Shedule Molerat (asynchronous)
execute if predicate game:modifiers/molerat/on run function arenaclear:moleratplace

##Reset team balance stuff
tag @s[tag=!onlyBlue] remove YellowFull
tag @s[tag=!onlyBlue] remove YellowCapOverride
tag @s remove BlueFull
tag @s remove BlueCapOverride

tag @s add EditedSettings

execute unless predicate rr:server_mode/cubekrowd_duels unless predicate rr:server_mode/cubekrowd_voting run function lobby:cancelsettings/begin

##Stop all sounds
# execute as @a[x=0] run function everytick:stopsounds
