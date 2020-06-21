#lobby players no fall damage (credit: PingiPuck)
scoreboard players add @a LeaveGame 0
tag @a[scores={LeaveGame=0},nbt={FallDistance:0.0f}] add NotFalling
scoreboard players set @a[tag=NotFalling] Falling 0
scoreboard players set @a[team=!Lobby] Falling 0
effect clear @a[tag=NotFalling,team=Lobby] jump_boost
effect give @a[team=Lobby,scores={Falling=4..}] jump_boost 1 255 true
tag @a[tag=NotFalling] remove NotFalling