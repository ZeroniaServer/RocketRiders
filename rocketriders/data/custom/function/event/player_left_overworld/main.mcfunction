# arguments: name, uuid
## There is no useful executor or selectable player in this context. Use $(name) macro variable to reference their username.

# remove from team to prevent their next join message from being an unexpected color
$team leave $(name)

# leave message (if they disconnected on CK or switched to a different dimension)
execute store success score $do_leave_message var unless predicate rr:has_join_and_leave_messages
$execute if score $do_leave_message var matches 0 at $(name) unless dimension minecraft:overworld run scoreboard players set $do_leave_message var 1

$data modify storage rocketriders:main player_left_overworld.name set value "$(name)"
$scoreboard players operation $was_on_arena_team var = $(name) was_on_arena_team

execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 1 unless predicate game:gamemode_components/red_for_blue unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] ["",{color:"blue",storage:"rocketriders:main",nbt:"player_left_overworld.name"},{color:"dark_aqua",text:" left the match!"}]
execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 1 if predicate game:gamemode_components/red_for_blue unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] ["",{color:"dark_red",storage:"rocketriders:main",nbt:"player_left_overworld.name"},{color:"red",text:" left the match!"}]
execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 2 unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] ["",{color:"gold",storage:"rocketriders:main",nbt:"player_left_overworld.name"},{color:"yellow",text:" left the match!"}]

execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 1 unless predicate game:gamemode_components/red_for_blue if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] ["",{color:"blue",storage:"rocketriders:main",nbt:"player_left_overworld.name"},{color:"dark_aqua",text:" forfeited the match!"}]
execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 1 if predicate game:gamemode_components/red_for_blue if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] ["",{color:"dark_red",storage:"rocketriders:main",nbt:"player_left_overworld.name"},{color:"red",text:" forfeited the match!"}]
execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 2 if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] ["",{color:"gold",storage:"rocketriders:main",nbt:"player_left_overworld.name"},{color:"yellow",text:" forfeited the match!"}]

execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 3 run tellraw @a[x=0] ["",{color:"dark_gray",storage:"rocketriders:main",nbt:"player_left_overworld.name"},{color:"gray",text:" is no longer spectating the match!"}]
