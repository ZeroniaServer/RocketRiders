# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate custom:team/any_arena_team run return run tellraw @s {"text":"You cannot modify Time of Day while on a team","color":"red"}

# open dialog
function arenaclear:time_of_day/show_dialog
