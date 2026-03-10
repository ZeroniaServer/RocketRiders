# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate custom:team/any_arena_team run return run tellraw @s {"text":"You cannot modify Item Delay while on a team","color":"red"}
execute if predicate game:match_components/duel_settings_locked run return run tellraw @s {"text":"Game Rules are not adjustable in this game mode.","color":"dark_gray","italic":true}
execute if predicate game:match_components/no_item_timer run return run tellraw @s {"text":"There is no item timer in this game mode.","color":"dark_gray","italic":true}
execute if predicate game:modifiers/minute_mix/on run return run tellraw @s {"text":"Item Delay is not adjustable with the Minute Mix modifier enabled.","color":"dark_gray","italic":true}
execute if predicate game:game_rules/item_delay/locked run return run tellraw @s {"text":"Item Delay is not adjustable in this game mode.","color":"dark_gray","italic":true}

# open dialog
function arenaclear:itemdelay/show_dialog
