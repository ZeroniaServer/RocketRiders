execute if predicate game:game_started run function rr_duel:forced_settings

#Disable modifiers
function modifiers:disablemodifiers

#Add needed settings and modifiers
tag @s add WindDown
tag @s add doPrevention
tag @s add doHotbarLimit
tag @s remove doStacking

function arenaclear:baseplacement
function arenaclear:detailplacement

tag @s add duelLast