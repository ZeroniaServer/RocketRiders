# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute unless predicate game:arena_details/__can_restore_defaults run tellraw @s {color:"dark_gray",italic:true,text:"This action cannot be performed in this game mode."}

# restore defaults
tag @e[limit=1,x=0,type=armor_stand,tag=Selection] add DefaultCustomizer
execute if predicate custom:player/is_pressing_sneak_key run tag @e[limit=1,x=0,type=armor_stand,tag=Selection] add DefaultCustomizerAll
