##Utility function to prevent lobby players from taking fall damage (credit: PingiPuck)
scoreboard players add @a[predicate=custom:indimension] LeaveGame 0
tag @a[predicate=custom:indimension,scores={LeaveGame=0},nbt={FallDistance:0.0f}] add NotFalling
scoreboard players set @a[predicate=custom:indimension,tag=NotFalling] Falling 0
scoreboard players set @a[predicate=custom:indimension,team=!Lobby] Falling 0
effect clear @a[predicate=custom:indimension,tag=NotFalling,team=Lobby] jump_boost
effect give @a[predicate=custom:indimension,team=Lobby,scores={Falling=4..}] jump_boost 1 255 true
tag @a[predicate=custom:indimension,tag=NotFalling] remove NotFalling