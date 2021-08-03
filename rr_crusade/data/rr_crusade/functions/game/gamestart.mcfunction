#Set kit to knight upon joining
execute as @a[tag=JoinBlue] run scoreboard players set @s crusadechange 1
execute as @a[tag=JoinYellow] run scoreboard players set @s crusadechange 1

#Items
execute as @a[tag=JoinYellow,scores={crusadekit=1}] run function rr_crusade:items/kit/give/knight
execute as @a[tag=JoinBlue,scores={crusadekit=1}] run function rr_crusade:items/kit/give/knight







#Items
#execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function game:givegear
#execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function servermode:givegear

#execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function game:givegear
#execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function servermode:givegear

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted