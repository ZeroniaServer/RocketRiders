function everytick:cluster
function rr_powerups:everytick/spawnables
clear @a[x=0,predicate=custom:team/any_playing_team] #custom:clear
clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{id:"nova_rocket"}]
clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{id:"booster_rocket"}]
clear @a[x=0,predicate=custom:team/any_playing_team] #rr_powerups:clear
clear @a[x=0,predicate=custom:team/any_playing_team] #rr_sandbox:clear
execute if entity @s[scores={endtimer=1}] run dialog clear @a[x=0]
execute if entity @s[scores={endtimer=1}] run clear @a[x=0,predicate=custom:team/any_playing_team] written_book
execute if entity @s[scores={endtimer=1}] as @a[x=0,predicate=custom:team/any_playing_team] run loot replace entity @s hotbar.0 loot items:books/nomicon/post_game
scoreboard players reset @a[x=0] nomicon

execute if entity @s[scores={endtimer=1}] as @a[x=0] run function custom:unequip_elytra
