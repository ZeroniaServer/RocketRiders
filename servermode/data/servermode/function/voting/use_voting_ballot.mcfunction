execute unless predicate rr:has_voting run return run tellraw @s {color:"red",text:"The voting ballot may only be used on the CK voting lobbies."}

execute unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=ServerModeVoting] run return run tellraw @s {color:"red",text:"The voting ballot may only be used during a voting phase."}

function servermode:voting/show_dialog
