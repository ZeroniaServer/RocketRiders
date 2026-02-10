# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:repeat_settings/forever run return run tellraw @s [{color:"red",text:"Repeat Settings is not adjustable when set to "},{italic:true,text:"repeat forever"}]

# cycle options
execute unless predicate custom:player_is_holding_shift run scoreboard players add $extra_match_repetitions config 1
execute if predicate custom:player_is_holding_shift run scoreboard players remove $extra_match_repetitions config 1
advancement grant @s only lobby:inform_sign_cycling

execute store result score $match_repeat_amount global run scoreboard players operation $extra_match_repetitions config %= $4 constant
execute if score $extra_match_repetitions config matches 0 run scoreboard players reset $extra_match_repetitions config
scoreboard players add $match_repeat_amount global 1

# output
data modify block -69 190 76 front_text.messages[1] set value [{bold:true,color:"black",score:{name:"$match_repeat_amount",objective:"global"}},{bold:false,text:"x"}]
execute if score $match_repeat_amount global matches 1 run tellraw @s ["",{color:"gray",italic:true,text:"These settings will apply for "},{bold:true,color:"white",text:"1"},{color:"gray",italic:true,text:" match."}]
execute unless score $match_repeat_amount global matches 1 run tellraw @s ["",{color:"gray",italic:true,text:"These settings will apply for "},{bold:true,color:"white",score:{name:"$match_repeat_amount",objective:"global"}},{color:"gray",italic:true,text:" matches."}]
