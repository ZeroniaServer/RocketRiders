# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:gamemode_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Base Details are not adjustable in this gamemode."}
execute if predicate game:gamemode_components/arena/no_base_details run return run tellraw @s {color:"dark_gray",italic:true,text:"Base Details are incompatible with this gamemode."}
execute if predicate game:arena_details/middle/layered run return run tellraw @s [{color:"dark_gray",italic:true,text:"This detail is not compatible with the 'Layered' Middle Detail."}]

# cycle options
execute unless predicate custom:player_is_holding_shift run scoreboard players add $arena_details/bottom config 1
execute if predicate custom:player_is_holding_shift run scoreboard players remove $arena_details/bottom config 1
advancement grant @s only lobby:inform_sign_cycling

execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshcustomizer
