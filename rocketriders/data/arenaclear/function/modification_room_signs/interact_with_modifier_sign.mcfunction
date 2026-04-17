# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# cycle options
execute unless predicate custom:player/is_pressing_sneak_key run scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] modifierID 1
execute if predicate custom:player/is_pressing_sneak_key run scoreboard players remove @e[x=0,type=armor_stand,tag=Selection,limit=1] modifierID 1
advancement grant @s only lobby:inform_sign_cycling

execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshmodifiersign
