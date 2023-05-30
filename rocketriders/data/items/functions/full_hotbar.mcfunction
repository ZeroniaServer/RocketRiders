##Full hotbar check
execute as @a[predicate=custom:indimension] unless entity @s[team=!Yellow,team=!Blue] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doHotbarLimit] run function items:invcount
execute as @a[predicate=custom:indimension] unless entity @s[team=!Yellow,team=!Blue] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!doHotbarLimit] run scoreboard players set @s invCount 0
tag @a[predicate=custom:indimension,tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[predicate=custom:indimension,tag=!fullHotbar,tag=cursorItem,scores={invCount=8..}] add fullHotbar
tag @a[predicate=custom:indimension,tag=fullHotbar,tag=!cursorItem,scores={invCount=..8}] remove fullHotbar
tag @a[predicate=custom:indimension,tag=fullHotbar,tag=cursorItem,scores={invCount=..7}] remove fullHotbar