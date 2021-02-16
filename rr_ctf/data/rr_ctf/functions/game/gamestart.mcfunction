#Items
execute as @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function servermode:givegear
replaceitem entity @a[tag=JoinBlue] hotbar.0 minecraft:netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"blue\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},CanDestroy:["minecraft:red_stained_glass","minecraft:orange_stained_glass","minecraft:yellow_stained_glass","minecraft:lime_stained_glass","minecraft:green_stained_glass","minecraft:cyan_stained_glass","minecraft:light_blue_stained_glass","minecraft:blue_stained_glass","minecraft:magenta_stained_glass","minecraft:purple_stained_glass","minecraft:pink_stained_glass","minecraft:white_stained_glass","minecraft:light_gray_stained_glass","minecraft:gray_stained_glass","minecraft:black_stained_glass","minecraft:brown_stained_glass"],HideFlags:31,Unbreakable:1b,Enchantments:[{id:sharpness,lvl:4}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.2,Operation:0,UUID:[I;346953296,-1115273365,-1997860529,1241626160],Slot:"mainhand"}]}

execute as @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function servermode:givegear
replaceitem entity @a[tag=JoinYellow] hotbar.0 minecraft:netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},CanDestroy:["minecraft:red_stained_glass","minecraft:orange_stained_glass","minecraft:yellow_stained_glass","minecraft:lime_stained_glass","minecraft:green_stained_glass","minecraft:cyan_stained_glass","minecraft:light_blue_stained_glass","minecraft:blue_stained_glass","minecraft:magenta_stained_glass","minecraft:purple_stained_glass","minecraft:pink_stained_glass","minecraft:white_stained_glass","minecraft:light_gray_stained_glass","minecraft:gray_stained_glass","minecraft:black_stained_glass","minecraft:brown_stained_glass"],HideFlags:31,Unbreakable:1b,Enchantments:[{id:sharpness,lvl:4}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.2,Operation:0,UUID:[I;346953296,-1115273365,-1997860529,1241626160],Slot:"mainhand"}]}

#Notify Join
execute as @s[tag=GameStarted,tag=!SMActive] run tellraw @a[tag=JoinBlue] [{"text":"Drop your ","color":"aqua","italic":"true"},{"text":"Piercing Pickaxe ","color":"blue","bold":"true","italic":"false"},{"text":"to leave the match.","color":"aqua","italic":"true"}]
execute as @s[tag=GameStarted,tag=SMActive] run tellraw @a[tag=JoinBlue] [{"text":"Use ","color":"aqua","italic":"true"},{"text":"/leave ","color":"blue","bold":"true","italic":"false"},{"text":"to leave the match.","color":"aqua","italic":"true"}]
execute as @s[tag=GameStarted,tag=!SMActive] run tellraw @a[tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":"true"},{"text":"Piercing Pickaxe ","color":"gold","bold":"true","italic":"false"},{"text":"to leave the match.","color":"yellow","italic":"true"}]
execute as @s[tag=GameStarted,tag=SMActive] run tellraw @a[tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":"true"},{"text":"/leave ","color":"gold","bold":"true","italic":"false"},{"text":"to leave the match.","color":"yellow","italic":"true"}]

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute as @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
execute as @s[tag=!GameStarted] run scoreboard players set @a dropPickaxe 0
execute as @s[tag=!GameStarted] run scoreboard players set @s canopyStreak 0
execute as @s[tag=!GameStarted] run scoreboard players reset @a MineWhiteGlass
execute as @s[tag=!GameStarted] run scoreboard players reset @a MinePurpleGlass
execute as @s[scores={count=600}] run summon area_effect_cloud 38 63 -66 {Tags:["airDetectBlue"],Radius:0,Duration:2000000}
execute as @s[scores={count=600}] run summon area_effect_cloud 38 63 66 {Tags:["airDetectYellow"],Radius:0,Duration:2000000}
execute as @s[scores={count=600},tag=!GameEnd] run clear @a netherite_pickaxe
execute as @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Blue] [{"text":"Drop your ","color":"aqua","italic":"true"},{"text":"Piercing Pickaxe ","color":"blue","bold":"true","italic":"false"},{"text":"to leave the match.","color":"aqua","italic":"true"}]
execute as @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Yellow] [{"text":"Drop your ","color":"yellow","italic":"true"},{"text":"Piercing Pickaxe ","color":"gold","bold":"true","italic":"false"},{"text":"to leave the match.","color":"yellow","italic":"true"}]
execute as @s[scores={count=600},tag=SMActive] run tellraw @a[team=Blue] [{"text":"Use ","color":"aqua","italic":"true"},{"text":"/leave ","color":"blue","bold":"true","italic":"false"},{"text":"to leave the match.","color":"aqua","italic":"true"}]
execute as @s[scores={count=600},tag=SMActive] run tellraw @a[team=Yellow] [{"text":"Use ","color":"yellow","italic":"true"},{"text":"/leave ","color":"gold","bold":"true","italic":"false"},{"text":"to leave the match.","color":"yellow","italic":"true"}]
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted