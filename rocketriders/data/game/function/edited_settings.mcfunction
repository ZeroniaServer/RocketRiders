## Close modification room dialogs
dialog clear @a

## Per-gamemode upon edited settings
function #rr:upon_edited_settings

## Place facade
function game:place_facade

## Cancel yellow join pad
execute in minecraft:overworld run function game:uncancelpads
execute if predicate game:gamemode_components/one_team run function game:cancelyellow

## Shedule Molerat (asynchronous)
execute if predicate game:modifiers/molerat/on run function arenaclear:moleratplace

##Reset team balance stuff
execute unless predicate game:gamemode_components/one_team run tag @s remove YellowFull
execute unless predicate game:gamemode_components/one_team run tag @s remove YellowCapOverride
tag @s remove BlueFull
tag @s remove BlueCapOverride

##Team color
execute unless predicate game:gamemode_components/red_for_blue run team modify Blue color blue
execute if predicate game:gamemode_components/red_for_blue run team modify Blue color dark_red


tag @s add EditedSettings

execute unless predicate rr:server_mode/cubekrowd_duels unless predicate rr:server_mode/cubekrowd_voting run function lobby:cancelsettings/begin

##Stop all sounds
# execute as @a[x=0] run function everytick:stopsounds
