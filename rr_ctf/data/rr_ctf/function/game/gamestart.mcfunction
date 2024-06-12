#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue] run function servermode:givegear
item replace entity @a[x=0,tag=JoinBlue] hotbar.0 with minecraft:netherite_pickaxe[custom_name='{"translate":"Piercing Pickaxe","color":"blue","bold":true,"italic":false}',lore=['{"translate":"A tool used both for"}','{"translate":"mining and melee attacks."}'],can_break={predicates:[{blocks:["minecraft:red_stained_glass","minecraft:orange_stained_glass","minecraft:yellow_stained_glass","minecraft:lime_stained_glass","minecraft:green_stained_glass","minecraft:cyan_stained_glass","minecraft:light_blue_stained_glass","minecraft:blue_stained_glass","minecraft:magenta_stained_glass","minecraft:purple_stained_glass","minecraft:pink_stained_glass","minecraft:white_stained_glass","minecraft:light_gray_stained_glass","minecraft:gray_stained_glass","minecraft:black_stained_glass","minecraft:brown_stained_glass"]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{sharpness:4},show_in_tooltip:0b},attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.attack_speed",amount:-2.2d,slot:"mainhand",name:"generic.attack_speed",id:"rr_ctf:piercing_pickaxe_attack_speed",show_in_tooltip:0b}]

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow] run function servermode:givegear
item replace entity @a[x=0,tag=JoinYellow] hotbar.0 with minecraft:netherite_pickaxe[custom_name='{"translate":"Piercing Pickaxe","color":"gold","bold":true,"italic":false}',lore=['{"translate":"A tool used both for"}','{"translate":"mining and melee attacks."}'],can_break={predicates:[{blocks:["minecraft:red_stained_glass","minecraft:orange_stained_glass","minecraft:yellow_stained_glass","minecraft:lime_stained_glass","minecraft:green_stained_glass","minecraft:cyan_stained_glass","minecraft:light_blue_stained_glass","minecraft:blue_stained_glass","minecraft:magenta_stained_glass","minecraft:purple_stained_glass","minecraft:pink_stained_glass","minecraft:white_stained_glass","minecraft:light_gray_stained_glass","minecraft:gray_stained_glass","minecraft:black_stained_glass","minecraft:brown_stained_glass"]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{sharpness:4},show_in_tooltip:0b},attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.attack_speed",amount:-2.2d,slot:"mainhand",name:"generic.attack_speed",id:"rr_ctf:piercing_pickaxe_attack_speed",show_in_tooltip:0b}]

#Notify Join
execute if entity @s[tag=GameStarted,tag=!SMActive] run tellraw @a[x=0,tag=JoinBlue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Piercing Pickaxe ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
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
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Blue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Piercing Pickaxe ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Piercing Pickaxe ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[x=0,team=Blue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[x=0,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted