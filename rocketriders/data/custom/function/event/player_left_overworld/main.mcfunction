# arguments: name, uuid
## There is no useful executor or selectable player in this context. Use $(name) macro variable to reference their username.

# ensure leave detection score is set
$scoreboard players reset $(name) event.player_joins_overworld.state

# remove from team to prevent their next join message from being an unexpected color
$team leave $(name)

# leave team message (if they disconnected on CK or switched to a different dimension)
execute store success score $do_leave_message var if predicate rr:has_custom_leave_messages
$execute if score $do_leave_message var matches 0 at $(name) unless dimension minecraft:overworld run scoreboard players set $do_leave_message var 1
execute if predicate game:phase/match/closing/outcome run scoreboard players set $do_leave_message var 0

execute if score $do_leave_message var matches 0 run return 0

$data modify storage rocketriders:main player_left_overworld.name set value "$(name)"
$scoreboard players operation $last_arena_team var = $(name) last_arena_team

execute if score $last_arena_team var matches 3 run return run tellraw @a[x=0] [{score:{name:"#spectator",objective:"text.accent_color"}},[{score:{name:"#spectator",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," is no longer spectating the match!"]

execute if predicate game:match_components/one_team unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run return run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},[{score:{name:"#blue",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," left the match!"]
execute unless predicate game:match_components/one_team if score $last_arena_team var matches 1 unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run return run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},[{score:{name:"#blue",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," left the ",{score:{name:"#blue",objective:"text.team_name_lowercase"}}," team!"]
execute unless predicate game:match_components/one_team if score $last_arena_team var matches 2 unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run return run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.accent_color"}},[{score:{name:"#yellow",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," left the ",{score:{name:"#yellow",objective:"text.team_name_lowercase"}}," team!"]

execute if score $last_arena_team var matches 1 if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run return run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},[{score:{name:"#blue",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," forfeited the match!"]
execute if score $last_arena_team var matches 2 if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run return run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.accent_color"}},[{score:{name:"#yellow",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," forfeited the match!"]
