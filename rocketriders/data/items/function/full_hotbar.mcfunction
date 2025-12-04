##Full hotbar check
execute unless predicate game:game_rules/disable_hotbar_limit/on as @a[x=0,predicate=custom:team/any_playing_team] run function items:invcount
execute if predicate game:game_rules/disable_hotbar_limit/on as @a[x=0,predicate=custom:team/any_playing_team] run scoreboard players set @s invCount 0
tag @a[x=0,tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[x=0,tag=!fullHotbar,tag=cursorItem,scores={invCount=8..}] add fullHotbar
tag @a[x=0,tag=fullHotbar,tag=!cursorItem,scores={invCount=..8}] remove fullHotbar
tag @a[x=0,tag=fullHotbar,tag=cursorItem,scores={invCount=..7}] remove fullHotbar