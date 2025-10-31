#Items
execute as @a[x=0,tag=JoinBlue] run function custom:update_armor
execute as @a[x=0,tag=JoinYellow] run function custom:update_armor

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Bossbar
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"player...","color":"white"}]
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame color blue
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame value 15
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,predicate=custom:team/yellow] unless entity @a[x=0,predicate=custom:team/blue] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"player...","color":"white"}]
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,predicate=custom:team/yellow] unless entity @a[x=0,predicate=custom:team/blue] run bossbar set rr:startgame color yellow
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,predicate=custom:team/yellow] unless entity @a[x=0,predicate=custom:team/blue] run bossbar set rr:startgame value 15
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"and ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players...","color":"white"}]
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame value 0
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame color white
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] run bossbar set rr:startgame max 30

#Countdown
tag @s[scores={count=1..}] add bossbarOverride
scoreboard players set @s[scores={count=1}] count 400
execute if entity @s[scores={count=400}] run bossbar set rr:startgame name ["",{"text":"The game is starting in ","color":"green"},{"text":"10","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=400}] run bossbar set rr:startgame value 10
execute if entity @s[scores={count=400}] run bossbar set rr:startgame max 10
execute unless predicate game:match_in_play if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] run function game:restartcountdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown
execute if score @s count matches 600 as @a[x=0,predicate=custom:team/blue] run function rr_duel:forfeit/calculate
execute if score @s count matches 600 as @a[x=0,predicate=custom:team/yellow] run function rr_duel:forfeit/calculate
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/blue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to forfeit the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to forfeit the match.","color":"yellow","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/blue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to forfeit the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to forfeit the match.","color":"yellow","italic":true}]
execute if score @s count matches 600 run scoreboard players display name Blue: RoundsWon {color:"blue",text:"Blue:"}
execute if score @s count matches 600 run scoreboard players display name Yellow: RoundsWon {color:"gold",text:"Yellow:"}
execute if score @s count matches 600 run bossbar set rr:startgame name ["",{"text":"A 1v1 Duel match is currently in progress!","color":"dark_red"}]
execute if score @s count matches 600 run bossbar set rr:startgame color red
execute if score @s count matches 600 run scoreboard players set @s Rounds 1
execute if score @s count matches 600 run tellraw @a[x=0,predicate=!custom:team/lobby] [{"text":"\nBeginning Round ","color":"red"},{"score":{"name":"@s","objective":"Rounds"},"color":"dark_red","bold":true},{"text":"."}]
execute unless predicate game:match_over if score @s count matches 600 run scoreboard players set $match_in_play global 1
execute if score $game_duration global matches 2 as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute if score $game_duration global matches 2 as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute if score @s count matches 600 run function rr_duel:forced_settings