#Set kit to previous upon joining
execute as @a[x=0,tag=JoinBlue] unless score @s crusadekit = @s crusadekit run scoreboard players set @s crusadekit 1
execute as @a[x=0,tag=JoinYellow] unless score @s crusadekit = @s crusadekit run scoreboard players set @s crusadekit 1
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue,scores={crusadekit=1}] run function rr_crusade:items/kit/give/knight
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue,scores={crusadekit=2}] run function rr_crusade:items/kit/give/archer
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue,scores={crusadekit=3}] run function rr_crusade:items/kit/give/mage
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow,scores={crusadekit=1}] run function rr_crusade:items/kit/give/knight
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow,scores={crusadekit=2}] run function rr_crusade:items/kit/give/archer
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow,scores={crusadekit=3}] run function rr_crusade:items/kit/give/mage
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue,scores={crusadekit=1}] run function servermode:kitcrusade/knight
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue,scores={crusadekit=2}] run function servermode:kitcrusade/archer
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinBlue,scores={crusadekit=3}] run function servermode:kitcrusade/mage
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow,scores={crusadekit=1}] run function servermode:kitcrusade/knight
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow,scores={crusadekit=2}] run function servermode:kitcrusade/archer
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,tag=JoinYellow,scores={crusadekit=3}] run function servermode:kitcrusade/mage

#Notify Join
execute if entity @s[tag=GameStarted,tag=!SMActive] run tellraw @a[x=0,tag=JoinBlue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Knight Sword ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=!SMActive] run tellraw @a[x=0,tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Knight Sword ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[x=0,tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]

#Give first item to anyone who joins within 1st second
execute if entity @s[tag=GameStarted,scores={gametime=3..20}] run function rr_crusade:items/givefirst

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

execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Blue,scores={crusadekit=1}] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Knight Sword ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Blue,scores={crusadekit=2}] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Blue,scores={crusadekit=3}] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Fire Wand ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[x=0,team=Blue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Yellow,scores={crusadekit=1}] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Knight Sword ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Yellow,scores={crusadekit=2}] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[x=0,team=Yellow,scores={crusadekit=3}] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Fire Wand ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[x=0,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
#Hotfix for being able to keep charging bow from queue
execute if entity @s[scores={count=600}] run clear @a[x=0,team=Blue,scores={crusadekit=2}] bow
execute if entity @s[scores={count=600}] run clear @a[x=0,team=Yellow,scores={crusadekit=2}] bow
execute if entity @s[scores={count=600}] as @a[x=0,team=Blue,scores={crusadekit=2}] run item replace entity @s hotbar.0 with bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1},{id:"sharpness",lvl:4}]}
execute if entity @s[scores={count=600}] as @a[x=0,team=Yellow,scores={crusadekit=2}] run item replace entity @s hotbar.0 with bow{display:{Name:'{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1},{id:"sharpness",lvl:4}]}
execute if entity @s[scores={count=600}] as @a[x=0,team=Blue,scores={crusadekit=2}] run tag @s remove fullOffhand
execute if entity @s[scores={count=600}] as @a[x=0,team=Yellow,scores={crusadekit=2}] run tag @s remove fullOffhand
#Hotfix for losing shield in queue
execute if entity @s[scores={count=600}] run clear @a[x=0,team=Blue,scores={crusadekit=1}] shield
execute if entity @s[scores={count=600}] run clear @a[x=0,team=Yellow,scores={crusadekit=1}] shield
execute if entity @s[scores={count=600}] as @a[x=0,team=Blue,scores={crusadekit=1}] run item replace entity @s weapon.offhand with shield{Damage:326,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:11,Patterns:[{Pattern:"flo",Color:3},{Pattern:"bo",Color:3}]}}
execute if entity @s[scores={count=600}] as @a[x=0,team=Yellow,scores={crusadekit=1}] run item replace entity @s[team=Yellow] weapon.offhand with shield{Damage:326,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:4,Patterns:[{Pattern:"flo",Color:1},{Pattern:"bo",Color:1}]}}
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted