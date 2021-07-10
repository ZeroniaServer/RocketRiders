#Items
execute as @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function servermode:givegear
item replace entity @a[tag=JoinBlue] hotbar.0 with minecraft:diamond_pickaxe{display:{Name:'{"translate":"Pickaxe","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A tool used to destroy and obtain blocks"}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"silk_touch",lvl:1}]}
item replace entity @a[tag=JoinBlue] weapon.offhand with minecraft:firework_rocket{display:{Name:'{"translate":"Fireworks","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"For propulsion"}']},Fireworks:{Flight:3b}} 64

execute as @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function servermode:givegear
item replace entity @a[tag=JoinYellow] hotbar.0 with minecraft:diamond_pickaxe{display:{Name:'{"translate":"Pickaxe","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A tool used to destroy and obtain blocks"}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"silk_touch",lvl:1}]}
item replace entity @a[tag=JoinYellow] weapon.offhand with minecraft:firework_rocket{display:{Name:'{"translate":"Fireworks","color":"yellow","bold":true,"italic":false}',Lore:['{"translate":"For propulsion"}']},Fireworks:{Flight:3b}} 64

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute as @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
scoreboard players set @s[scores={count=1..}] sandboxRandom 78
execute as @s[scores={count=1..}] run gamerule doTileDrops true
execute as @s[scores={count=1..600}] run scoreboard players set @a dropPickaxe 0
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted