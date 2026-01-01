execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run return fail

execute if predicate game:phase/match/play run function rr_duel:forced_settings

#Disable modifiers
function modifiers:disablemodifiers

tag @s add duelLast
