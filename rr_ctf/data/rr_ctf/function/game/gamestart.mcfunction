#Items
execute as @a[x=0,tag=JoinBlue] run function game:givegear
loot replace entity @a[x=0,tag=JoinBlue] hotbar.0 loot items:misc/piercing_pickaxe

execute as @a[x=0,tag=JoinYellow] run function game:givegear
loot replace entity @a[x=0,tag=JoinYellow] hotbar.0 loot items:misc/piercing_pickaxe

#Notify Join
execute if entity @s[tag=GameStarted,tag=!SMActive] run tellraw @a[x=0,tag=JoinBlue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Piercing Pickaxe ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=!SMActive] run tellraw @a[x=0,tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Piercing Pickaxe ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[x=0,tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]

#Score Removal
scoreboard players reset @a[x=0,tag=JoinBlue] FlagsCaptured
scoreboard players reset @a[x=0,tag=JoinYellow] FlagsCaptured

#Give first item to anyone who joins within 1st second
execute if entity @s[tag=GameStarted,scores={gametime=3..20}] run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
execute if entity @s[tag=EditedSettings,tag=!SMCustom] if entity @a[x=0,team=Blue] if entity @a[x=0,team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown,tag=!SMCustom] unless entity @a[x=0,team=Blue] run function game:restartcountdown
execute if entity @s[tag=EditedSettings,tag=Countdown,tag=!SMCustom] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute if entity @s[tag=EditedSettings,tag=SMCustom] if entity @a[x=0,team=Blue] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=SMCustom] if entity @a[x=0,team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown,tag=SMCustom] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute if entity @s[tag=!GameStarted] run scoreboard players set @a[x=0] dropPickaxe 0
execute if entity @s[tag=!GameStarted] run scoreboard players set @s canopyStreak 0
execute if entity @s[tag=!GameStarted] run scoreboard players reset @a[x=0] MineWhiteGlass
execute if entity @s[tag=!GameStarted] run scoreboard players reset @a[x=0] MinePurpleGlass
execute if entity @s[tag=!GameStarted,tag=!GameEnd] run scoreboard players reset @a[x=0] FlagsCaptured
execute if entity @s[scores={count=600}] run summon marker 38 63 -66 {Tags:["airDetectBlue"]}
execute if entity @s[scores={count=600}] run summon marker 38 63 66 {Tags:["airDetectYellow"]}
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Blue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Piercing Pickaxe ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Piercing Pickaxe ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[x=0,team=Blue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[x=0,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted