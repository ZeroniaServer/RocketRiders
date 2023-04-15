##Operator command - tests valid arenaclear based on enabled items
execute if entity @e[type=armor_stand,tag=Selection,tag=!GameStarted] unless entity @e[type=armor_stand,tag=Selection,tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning] run tag @s add validClear
#Check how many categories are disabled (locked)/off (mutually exclusive) - if 3 or more then don't clear
execute if entity @e[type=armor_stand,tag=Selection,tag=!rngNormal] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=normalOff] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!rngHeavy] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=heavyOff] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!rngLightning] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=lightningOff] run scoreboard players add $test ClearArena 1
execute if score $test ClearArena matches 3.. run tag @s remove validClear
scoreboard players reset $test ClearArena
execute if entity @e[type=armor_stand,tag=Selection,tag=Molerat,tag=!WasMolerat] run tag @s add MoleratStop
execute if entity @e[type=armor_stand,tag=Selection,tag=!Molerat,tag=WasMolerat] run tag @s add MoleratStop
execute unless entity @e[type=armor_stand,tag=Selection,tag=!GameStarted] run tellraw @s {"text":"You can only run this when the game has ended","color":"red"}
execute if entity @e[type=armor_stand,tag=Selection,tag=!GameStarted] if entity @s[tag=!validClear] run tellraw @s {"text":"You must have at least one Missile enabled to start the game","color":"red"}
execute if entity @s[tag=validClear,tag=MoleratStop,tag=!moleratConfirm] if entity @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled] run scoreboard players enable @s moleratConfirm
execute if entity @s[tag=validClear,tag=MoleratStop,tag=!moleratConfirm] at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 1
execute if entity @s[tag=validClear,tag=MoleratStop,tag=!moleratConfirm] if entity @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled] run tellraw @s ["","\n",{"text":"====================================================","color":"dark_gray"},"\n",{"text":"[WARNING]","bold":true,"color":"red"},{"text":" Toggling the "},{"text":"Molerat","color":"aqua"},{"text":" Modifier will cause lag due to the many fill commands needed to place/remove the wall."},"\n",{"text":"Are you sure you want to confirm game settings? ","color":"gold"},{"text":"[CONFIRM]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger moleratConfirm set 1"}},"\n",{"text":"====================================================","color":"dark_gray"},"\n"]
execute if entity @s[tag=validClear] unless entity @s[tag=MoleratStop,tag=!moleratConfirm] at @s run playsound minecraft:ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1
execute if entity @s[tag=validClear] unless entity @s[tag=MoleratStop,tag=!moleratConfirm] as @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=!needsForceClear] run function arenaclear:areaclear
execute if entity @s[tag=validClear] unless entity @s[tag=MoleratStop,tag=!moleratConfirm] if entity @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run tellraw @s {"text":"Warning: Force clearing arena since previous gamemode was uninstalled.","color":"red"}
execute if entity @s[tag=validClear] unless entity @s[tag=MoleratStop,tag=!moleratConfirm] as @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run function arenaclear:forceareaclear
execute if entity @s[tag=validClear] unless entity @s[tag=MoleratStop,tag=!moleratConfirm] unless entity @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled] run tellraw @s {"text":"Error: Cannot clear arena because no gamemodes are installed/enabled.","color":"red"}
tag @s remove validClear
execute if entity @s[tag=moleratConfirm] run scoreboard players reset @a[predicate=custom:indimension] moleratConfirm
tag @s[tag=moleratConfirm] remove MoleratStop
tag @s[tag=moleratConfirm] remove moleratConfirm