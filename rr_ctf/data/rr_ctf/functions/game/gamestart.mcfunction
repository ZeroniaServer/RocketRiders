#Items
execute as @a[tag=JoinBlue] run function game:givegear
replaceitem entity @a[tag=JoinBlue] hotbar.0 minecraft:diamond_pickaxe{display:{Name:"{\"translate\":\"Pickaxe\",\"color\":\"blue\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used to destroy and obtain blocks\"}"]},HideFlags:7,Unbreakable:1b}

execute as @a[tag=JoinYellow] run function game:givegear
replaceitem entity @a[tag=JoinYellow] hotbar.0 minecraft:diamond_pickaxe{display:{Name:"{\"translate\":\"Pickaxe\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used to destroy and obtain blocks\"}"]},HideFlags:7,Unbreakable:1b}

#Notify Join
execute as @s[tag=GameStarted] run tellraw @a[tag=JoinBlue] [{"text":"Drop your ","color":"aqua","italic":"true"},{"text":"Pickaxe ","color":"blue","bold":"true","italic":"false"},{"text":"to leave the match.","color":"aqua","italic":"true"}]
execute as @s[tag=GameStarted] run tellraw @a[tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":"true"},{"text":"Pickaxe ","color":"gold","bold":"true","italic":"false"},{"text":"to leave the match.","color":"yellow","italic":"true"}]

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute as @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
execute as @s[scores={count=1..600}] run scoreboard players set @a dropPickaxe 0
execute as @s[scores={count=600}] run tellraw @a[team=Blue] [{"text":"Drop your ","color":"aqua","italic":"true"},{"text":"Pickaxe ","color":"blue","bold":"true","italic":"false"},{"text":"to leave the match.","color":"aqua","italic":"true"}]
execute as @s[scores={count=600}] run tellraw @a[team=Yellow] [{"text":"Drop your ","color":"yellow","italic":"true"},{"text":"Pickaxe ","color":"gold","bold":"true","italic":"false"},{"text":"to leave the match.","color":"yellow","italic":"true"}]
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted