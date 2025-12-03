execute if score $extra_match_repetitions config matches 2147483647 run return 0

##Notifies players that settings are being repeated for a certain game and updates settings sign
execute if score $match_repeat_amount global matches 1 run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"| "},{color:"gray",italic:true,text:"(Keeping settings for "},{italic:true,color:"white",text:"1"},{italic:true,color:"gray",text:" more game!)"}]
execute if score $match_repeat_amount global matches 2.. run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"| "},{color:"gray",italic:true,text:"(Keeping settings for "},{italic:true,color:"white",score:{name:"$match_repeat_amount",objective:"global"}},{color:"gray",italic:true,text:" games!)"}]

#Deducts one repetition
scoreboard players remove $match_repeat_amount global 1
execute if score $match_repeat_amount global matches ..0 run scoreboard players reset $match_repeat_amount global
tellraw @a[x=0] ""
