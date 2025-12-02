# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:gamemode_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Portal Details are not adjustable in this gamemode."}
execute if predicate game:gamemode_components/arena/no_portal_details run return run tellraw @s {color:"dark_gray",italic:true,text:"Portal Details are incompatible with this gamemode."}
execute if predicate game:gamemode_components/no_portals run return run tellraw @s {color:"dark_gray",italic:true,text:"Portal Details are incompatible with this gamemode."}

# toggle
scoreboard players add $arena_details/portal config 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshcustomizer
