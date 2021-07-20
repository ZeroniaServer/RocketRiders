#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function servermode:givegear
function game:saberblue

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function servermode:givegear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted