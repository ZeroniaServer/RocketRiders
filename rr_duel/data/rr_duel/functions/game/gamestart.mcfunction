#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue] run function servermode:givegear

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow] run function servermode:givegear

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Bossbar
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"player...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame color blue
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame value 15
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Yellow] unless entity @a[x=0,team=Blue] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"player...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Yellow] unless entity @a[x=0,team=Blue] run bossbar set rr:startgame color yellow
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Yellow] unless entity @a[x=0,team=Blue] run bossbar set rr:startgame value 15
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"and ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame value 0
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame color white
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] run bossbar set rr:startgame max 30

#Countdown
tag @s[scores={count=1..}] add bossbarOverride
scoreboard players set @s[scores={count=1}] count 400
execute if entity @s[scores={count=400}] run bossbar set rr:startgame name ["",{"text":"The game is starting in ","color":"green"},{"text":"10","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=400}] run bossbar set rr:startgame value 10
execute if entity @s[scores={count=400}] run bossbar set rr:startgame max 10
execute if entity @s[tag=EditedSettings] if entity @a[x=0,team=Blue] if entity @a[x=0,team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Blue] run function game:restartcountdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Yellow] run function game:restartcountdown
execute if entity @s[scores={count=600}] as @a[x=0,team=Blue] run function rr_duel:forfeit/calculate
execute if entity @s[scores={count=600}] as @a[x=0,team=Yellow] run function rr_duel:forfeit/calculate
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Blue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to forfeit the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to forfeit the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[x=0,team=Blue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to forfeit the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[x=0,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to forfeit the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600}] run team join Blue Blue:
execute if entity @s[scores={count=600}] run team join Yellow Yellow:
execute if entity @s[scores={count=600}] run bossbar set rr:startgame name ["",{"text":"A 1v1 Duel match is currently in progress!","color":"dark_red"}]
execute if entity @s[scores={count=600}] run bossbar set rr:startgame color red
execute if entity @s[scores={count=600}] run scoreboard players set @s Rounds 1
execute if entity @s[scores={count=600}] run tellraw @a[x=0,team=!Lobby] [{"text":"\nBeginning Round ","color":"red"},{"score":{"name":"@s","objective":"Rounds"},"color":"dark_red","bold":true},{"text":"."}]
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted
execute if entity @s[scores={gametime=2}] as @a[x=0,team=Yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute if entity @s[scores={gametime=2}] as @a[x=0,team=Blue] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute if entity @s[scores={count=600}] run function rr_duel:forced_settings