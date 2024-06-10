##Full hotbar check
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] if entity @e[x=0,type=armor_stand,tag=Selection,tag=doHotbarLimit] run function items:invcount
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!doHotbarLimit] run scoreboard players set @s invCount 0
tag @a[x=0,tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[x=0,tag=!fullHotbar,tag=cursorItem,scores={invCount=8..}] add fullHotbar
tag @a[x=0,tag=fullHotbar,tag=!cursorItem,scores={invCount=..8}] remove fullHotbar
tag @a[x=0,tag=fullHotbar,tag=cursorItem,scores={invCount=..7}] remove fullHotbar