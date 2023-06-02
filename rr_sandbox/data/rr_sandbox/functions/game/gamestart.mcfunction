#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=JoinBlue] run function servermode:givegear
item replace entity @a[predicate=custom:indimension,tag=JoinBlue] hotbar.0 with minecraft:netherite_pickaxe{display:{Name:'{"translate":"Piercing Pickaxe","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A tool used both for"}','{"translate":"mining and melee attacks."}']},HideFlags:31,Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:4}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.2d,Operation:0,UUID:[I;346953296,-1115273365,-1997860529,1241626160],Slot:"mainhand"}]}

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=JoinYellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=JoinYellow] run function servermode:givegear
item replace entity @a[predicate=custom:indimension,tag=JoinYellow] hotbar.0 with minecraft:netherite_pickaxe{display:{Name:'{"translate":"Piercing Pickaxe","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A tool used both for"}','{"translate":"mining and melee attacks."}']},HideFlags:31,Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:4}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.2d,Operation:0,UUID:[I;346953296,-1115273365,-1997860529,1241626160],Slot:"mainhand"}]}

#Tag Removal
tag @a[predicate=custom:indimension] remove JoinBlue
tag @a[predicate=custom:indimension] remove JoinYellow

#Bossbar
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run bossbar set rr:startgame value 0
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run bossbar set rr:startgame color white

#Countdown
execute if entity @s[tag=EditedSettings] if entity @a[predicate=custom:indimension,team=Blue] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings] if entity @a[predicate=custom:indimension,team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run function game:restartcountdown

execute if entity @s[scores={count=1..600}] run scoreboard players set @a[predicate=custom:indimension] dropPickaxe 0
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted