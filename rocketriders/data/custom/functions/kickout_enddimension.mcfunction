tag @a[team=!Developer,nbt={Dimension:1}] add kickoutEnd
tag @a[team=Developer,tag=unofficialDev,nbt={Dimension:1}] add kickoutEnd
gamemode adventure @a[tag=kickoutEnd]
team join Lobby @a[tag=kickoutEnd]
tag @a[tag=kickoutEnd,tag=unofficialDev] remove unofficialDev
execute as @a[tag=kickoutEnd,nbt={Dimension:1}] in overworld run tp @s ~ ~ ~
kill @a[tag=kickoutEnd]
tag @a[tag=kickoutEnd] remove kickoutEnd