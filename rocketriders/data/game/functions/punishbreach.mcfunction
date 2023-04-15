##Commands run for players who try to breach through to the lobby
execute if entity @s[team=Blue,nbt={SpawnX:12,SpawnY:64,SpawnZ:-66}] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" tried to breach the Lobby"}]
execute if entity @s[team=Yellow,nbt={SpawnX:12,SpawnY:64,SpawnZ:66}] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" tried to breach the Lobby"}]
execute if entity @s[team=Blue,nbt={SpawnX:12,SpawnY:64,SpawnZ:-66}] run effect give @s poison 4 255 true
execute if entity @s[team=Yellow,nbt={SpawnX:12,SpawnY:64,SpawnZ:66}] run effect give @s poison 4 255 true
execute unless entity @e[type=armor_stand,tag=Selection,tag=customSpawns] run tp @s[team=Blue] 12 64 -66 0 0
execute unless entity @e[type=armor_stand,tag=Selection,tag=customSpawns] run tp @s[team=Yellow] 12 64 66 -180 0
scoreboard players add @s[team=Blue,nbt={SpawnX:12,SpawnY:64,SpawnZ:-66}] deaths 1
scoreboard players add @s[team=Blue,nbt={SpawnX:12,SpawnY:64,SpawnZ:-66}] death 1
scoreboard players add @s[team=Yellow,nbt={SpawnX:12,SpawnY:64,SpawnZ:66}] deaths 1
scoreboard players add @s[team=Yellow,nbt={SpawnX:12,SpawnY:64,SpawnZ:66}] death 1