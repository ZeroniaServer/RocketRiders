scoreboard players add @s ForfeitTimeout 1
execute if entity @s[scores={ForfeitTimeout=1}] run tellraw @a[x=0] ["",{bold:true,color:"dark_red",text:"[TIMEOUT] "},{color:"red",text:"Someone left the 1v1 Duel match! They have 1 minute to rejoin; otherwise, the match will end."}]
kill @e[x=0,type=tnt]

execute if predicate game:modifiers/punchable_tnt/on run kill @e[x=0,predicate=entities:type/punchable_tnt]
execute unless predicate game:phase/match/paused as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute unless predicate game:phase/match/paused run tag @a[x=0,predicate=custom:team/any_playing_team] remove force_mount
execute unless predicate game:phase/match/paused run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute unless predicate game:phase/match/paused run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
scoreboard players set @s RandomItem -3
execute if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run return run scoreboard players reset $1v1_duel_time_out_period global

bossbar add rr_duel:forfeit_timer {color:"red",text:"You win by default in..."}
bossbar set rr_duel:forfeit_timer color red
bossbar set rr_duel:forfeit_timer max 1200
execute store result bossbar rr_duel:forfeit_timer value run scoreboard players get @s ForfeitTimeout
scoreboard players set $forfeit_timer_seconds_remaining var 1200
scoreboard players operation $forfeit_timer_seconds_remaining var -= @s ForfeitTimeout
scoreboard players operation $forfeit_timer_seconds_remaining var /= $20 constant
execute if score $forfeit_timer_seconds_remaining var matches 2.. unless predicate game:gamemode_components/red_for_blue if entity @a[x=0,predicate=custom:team/blue] run bossbar set rr_duel:forfeit_timer name [{color:"red",text:""},{color:"blue",text:"Blue"}," wins by default in ",{bold:true,color:"dark_red",score:{name:"$forfeit_timer_seconds_remaining",objective:"var"}}," seconds"]
execute if score $forfeit_timer_seconds_remaining var matches 2.. if predicate game:gamemode_components/red_for_blue if entity @a[x=0,predicate=custom:team/blue] run bossbar set rr_duel:forfeit_timer name [{color:"red",text:""},{color:"dark_red",text:"Red"}," wins by default in ",{bold:true,color:"dark_red",score:{name:"$forfeit_timer_seconds_remaining",objective:"var"}}," seconds"]
execute if score $forfeit_timer_seconds_remaining var matches ..1 unless predicate game:gamemode_components/red_for_blue if entity @a[x=0,predicate=custom:team/blue] run bossbar set rr_duel:forfeit_timer name [{color:"red",text:""},{color:"blue",text:"Blue"}," wins by default in ",{bold:true,color:"dark_red",text:"1"}," second"]
execute if score $forfeit_timer_seconds_remaining var matches ..1 if predicate game:gamemode_components/red_for_blue if entity @a[x=0,predicate=custom:team/blue] run bossbar set rr_duel:forfeit_timer name [{color:"red",text:""},{color:"dark_red",text:"Red"}," wins by default in ",{bold:true,color:"dark_red",text:"1"}," second"]
execute if score $forfeit_timer_seconds_remaining var matches 2.. if entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr_duel:forfeit_timer name [{color:"red",text:""},{color:"gold",text:"Yellow"}," wins by default in ",{bold:true,color:"dark_red",score:{name:"$forfeit_timer_seconds_remaining",objective:"var"}}," seconds"]
execute if score $forfeit_timer_seconds_remaining var matches ..1 if entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr_duel:forfeit_timer name [{color:"red",text:""},{color:"gold",text:"Yellow"}," wins by default in ",{bold:true,color:"dark_red",text:"1"}," second"]
bossbar set rr_duel:forfeit_timer players @a[x=0,predicate=!custom:team/lobby]
