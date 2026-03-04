#Blue: team round wins
tag @a[x=0] remove Winner
tag @a[x=0] remove Loser
tag @s add BothWon
tag @s add CriteriaTrue

effect give @a[x=0,predicate=custom:team/blue] instant_health 1 100
effect give @a[x=0,predicate=custom:team/yellow] instant_health 1 100

function achievements:scoresreset
kill @e[x=0,type=tnt]
execute if predicate game:modifiers/punchable_tnt/on run kill @e[x=0,predicate=entities:type/punchable_tnt]
execute as @a[x=0,predicate=custom:team/blue] at @s run stopsound @s
execute as @a[x=0,predicate=custom:team/yellow] at @s run stopsound @s
execute as @a[x=0] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0
title @a[x=0,predicate=!custom:team/lobby] title {color:"gray",text:"It's a Draw!"}
title @a[x=0,predicate=!custom:team/lobby] subtitle [{bold:true,color:"green",text:""},[{score:{name:"#blue",objective:"text.main_color"}},{bold:true,score:{name:"Blue:",objective:"RoundsWon"}}]," - ",[{score:{name:"#yellow",objective:"text.main_color"}},{bold:true,score:{name:"Yellow:",objective:"RoundsWon"}}]]
tag @s add FakeGameEnd