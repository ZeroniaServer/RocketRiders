################################################
## REFRESHSIGNS: Core function for refreshing ##
## customizer signs based on enabled status   ##
################################################

function arenaclear:refreshmodifiersign
function arenaclear:refreshoptionssigns
function arenaclear:refreshitemsigns

#Temporarily blocks usage of Gamemode sign
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,scores={refreshsigns=..0},type=armor_stand] SetGamemode 1"}}'}