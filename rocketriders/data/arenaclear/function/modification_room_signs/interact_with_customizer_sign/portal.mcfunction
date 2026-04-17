# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:match_components/no_portals run return run tellraw @s {color:"dark_gray",italic:true,text:"Portal Detail is incompatible with this game mode."}
execute if predicate game:arena_details/portal/__locked_by_game_mode run return run tellraw @s {color:"dark_gray",italic:true,text:"Portal Detail is not adjustable in this game mode."}

# cycle options
execute unless predicate custom:player/is_pressing_sneak_key run scoreboard players add $arena_details/portal config 1
execute if predicate custom:player/is_pressing_sneak_key run scoreboard players remove $arena_details/portal config 1
advancement grant @s only lobby:inform_sign_cycling

execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshcustomizer
