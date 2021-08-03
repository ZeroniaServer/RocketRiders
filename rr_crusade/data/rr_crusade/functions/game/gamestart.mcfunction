#Set kit to knight upon joining
execute as @a[tag=JoinBlue] run scoreboard players set @s crusadechange 1
execute as @a[tag=JoinYellow] run scoreboard players set @s crusadechange 1

#Items
execute as @a[tag=JoinYellow,scores={crusadekit=1}] run function rr_crusade:items/kit/give/knight
execute as @a[tag=JoinBlue,scores={crusadekit=1}] run function rr_crusade:items/kit/give/knight

#Notify Join
execute if entity @s[tag=GameStarted,tag=!SMActive] run tellraw @a[tag=JoinBlue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Knight Sword ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[tag=JoinBlue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=!SMActive] run tellraw @a[tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Knight Sword ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Blue,scores={crusadekit=1}] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Knight Sword ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Blue,scores={crusadekit=2}] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Blue,scores={crusadekit=3}] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Fire Wand ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[team=Blue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Yellow,scores={crusadekit=1}] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Knight Sword ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Yellow,scores={crusadekit=2}] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Yellow,scores={crusadekit=3}] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Fire Wand ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted