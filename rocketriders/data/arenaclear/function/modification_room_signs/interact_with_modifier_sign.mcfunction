# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# cycle options
execute unless predicate custom:player/is_pressing_sneak_key run scoreboard players add $modification_room.selected_modifier global 1
execute unless predicate custom:player/is_pressing_sneak_key unless predicate game:feature_flags/1_4_0_update/on if score $modification_room.selected_modifier global matches 2 run scoreboard players add $modification_room.selected_modifier global 1
execute if predicate custom:player/is_pressing_sneak_key run scoreboard players remove $modification_room.selected_modifier global 1
execute if predicate custom:player/is_pressing_sneak_key unless predicate game:feature_flags/1_4_0_update/on if score $modification_room.selected_modifier global matches 2 run scoreboard players remove $modification_room.selected_modifier global 1

advancement grant @s only lobby:inform_sign_cycling
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshmodifiersign
