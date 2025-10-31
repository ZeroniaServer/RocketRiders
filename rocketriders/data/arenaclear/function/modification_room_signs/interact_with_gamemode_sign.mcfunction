execute unless predicate custom:player_is_holding_shift run scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={refreshsigns=..0}] SetGamemode 1
execute if predicate custom:player_is_holding_shift run scoreboard players remove @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={refreshsigns=..0}] SetGamemode 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={refreshsigns=..0}] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1

advancement grant @s only lobby:inform_sign_cycling
