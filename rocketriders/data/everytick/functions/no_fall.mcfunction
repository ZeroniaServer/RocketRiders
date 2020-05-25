#lobby players no fall damage (credit: PingiPuck)
scoreboard players add @a LeaveGame 0
tag @a[scores={LeaveGame=0},nbt={FallDistance:0.0f}] add NotFalling
scoreboard players set @a[tag=NotFalling] Falling 0
scoreboard players set @a[gamemode=!adventure] Falling 0
execute as @a[tag=NotFalling,team=Lobby] at @s unless entity @e[tag=modroomGoBack,limit=1,distance=..2] run effect clear @s jump_boost
execute if entity @s[tag=GameStarted] run effect give @a[gamemode=adventure,scores={Falling=4..}] jump_boost 1 255 true
tag @a[tag=NotFalling] remove NotFalling