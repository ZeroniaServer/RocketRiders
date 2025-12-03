execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

execute if score $extra_match_repetitions config matches 2147483647 run return run tellraw @s [{color:"red",text:"Repeat Settings is not adjustable when set to "},{italic:true,text:"repeat forever"}]

# increment (wrap around)
scoreboard players add $extra_match_repetitions config 1
execute store result score $match_repeat_amount global run scoreboard players operation $extra_match_repetitions config %= $4 constant
execute if score $extra_match_repetitions config matches 0 run scoreboard players reset $extra_match_repetitions config
scoreboard players add $match_repeat_amount global 1

# output
data modify block -69 190 76 front_text.messages[1] set value [{bold:true,color:"black",score:{name:"$match_repeat_amount",objective:"global"}},{bold:false,text:"x"}]
execute if score $match_repeat_amount global matches 1 run tellraw @s ["",{color:"gray",italic:true,text:"These settings will apply for "},{bold:true,color:"white",text:"1"},{color:"gray",italic:true,text:" game."}]
execute unless score $match_repeat_amount global matches 1 run tellraw @s ["",{color:"gray",italic:true,text:"These settings will apply for "},{bold:true,color:"white",score:{name:"$match_repeat_amount",objective:"global"}},{color:"gray",italic:true,text:" games."}]
