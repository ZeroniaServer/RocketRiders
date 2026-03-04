# arguments: name, uuid
## There is no useful executor or selectable player in this context. Use $(name) macro variable to reference their username.

# remove from team to prevent their next join message from being an unexpected color
$team leave $(name)

# leave message (if they disconnected on CK or switched to a different dimension)
execute store success score $do_leave_message var unless predicate rr:has_join_and_leave_messages
$execute if score $do_leave_message var matches 0 at $(name) unless dimension minecraft:overworld run scoreboard players set $do_leave_message var 1

$data modify storage rocketriders:main player_left_overworld.name set value "$(name)"
$scoreboard players operation $was_on_arena_team var = $(name) was_on_arena_team

execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 1 unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},[{score:{name:"#blue",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," left the match!"]
execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 2 unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.accent_color"}},[{score:{name:"#yellow",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," left the match!"]

execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 1 if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},[{score:{name:"#blue",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," forfeited the match!"]
execute if score $do_leave_message var matches 1 if predicate game:phase/match if score $was_on_arena_team var matches 2 if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.accent_color"}},[{score:{name:"#yellow",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," forfeited the match!"]

execute if score $do_leave_message var matches 1 unless predicate game:phase/match if score $was_on_arena_team var matches 1 run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},[{score:{name:"#blue",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," left the blue team!"]
execute if score $do_leave_message var matches 1 unless predicate game:phase/match if score $was_on_arena_team var matches 2 run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.accent_color"}},[{score:{name:"#yellow",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," left the yellow team!"]

execute if score $do_leave_message var matches 1 if score $was_on_arena_team var matches 3 run tellraw @a[x=0] [{score:{name:"#spectator",objective:"text.accent_color"}},[{score:{name:"#spectator",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"player_left_overworld.name",interpret:true}]," is no longer spectating the match!"]