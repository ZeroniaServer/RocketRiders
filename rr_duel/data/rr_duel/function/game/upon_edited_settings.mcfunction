execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run return fail

execute if predicate game:match_in_play run function rr_duel:forced_settings

#Disable modifiers
function modifiers:disablemodifiers

#Add needed settings and modifiers
tag @s add doPrevention
tag @s add doHotbarLimit

tag @s add duelLast
