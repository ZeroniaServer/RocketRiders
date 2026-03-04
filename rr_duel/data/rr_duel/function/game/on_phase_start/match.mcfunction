#tracking players and locking join pads
execute as @a[x=0,predicate=custom:team/any_playing_team] run function rr_duel:game/player_tracking/add_tracker

execute as @a[x=0,predicate=custom:team/blue] run function rr_duel:forfeit/calculate
execute as @a[x=0,predicate=custom:team/yellow] run function rr_duel:forfeit/calculate
scoreboard players display name Blue: RoundsWon [{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}},":"]
scoreboard players display name Yellow: RoundsWon [{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}},":"]
bossbar set rr:startgame name ["",{"text":"A 1v1 Duel match is currently in progress!","color":"dark_red"}]
bossbar set rr:startgame color red
scoreboard players set @s Rounds 1
tellraw @a[x=0,predicate=!custom:team/lobby] [{"text":"\nBeginning Round ","color":"red"},{"score":{"name":"@s","objective":"Rounds"},"color":"dark_red","bold":true},{"text":"."}]

function rr_duel:forced_settings
