# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# cycle options (skip upcoming 1.4 modifiers unless the feature flag is enabled)
execute unless predicate custom:player/is_pressing_sneak_key run function arenaclear:selected_modifier/next
execute if predicate custom:player/is_pressing_sneak_key run function arenaclear:selected_modifier/back

advancement grant @s only lobby:inform_sign_cycling
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshmodifiersign
