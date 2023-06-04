##Utility function to prevent lobby players from taking fall damage (credit: PingiPuck)
scoreboard players add @a[x=0] LeaveGame 0
tag @a[x=0,scores={LeaveGame=0},nbt={FallDistance:0.0f}] add NotFalling
scoreboard players set @a[x=0,tag=NotFalling] Falling 0
scoreboard players set @a[x=0,team=!Lobby] Falling 0
effect clear @a[x=0,tag=NotFalling,team=Lobby] jump_boost
effect give @a[x=0,team=Lobby,scores={Falling=4..}] jump_boost 1 255 true
tag @a[x=0,tag=NotFalling] remove NotFalling