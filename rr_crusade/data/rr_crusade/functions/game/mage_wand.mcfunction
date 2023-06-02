scoreboard players operation $tempUUID playerUUID = @s playerUUID
execute store success score $hasbox CmdData if entity @e[type=interaction,tag=wandbox,predicate=custom:matches_uuid,limit=1]
execute unless score $hasbox CmdData matches 1 anchored eyes positioned ^ ^ ^ summon interaction run function rr_crusade:game/wand_box
execute anchored eyes run tp @e[type=interaction,tag=wandbox,predicate=custom:matches_uuid,limit=1] ^ ^ ^
tag @s add self
execute as @e[type=interaction,tag=wandbox,predicate=custom:matches_uuid,limit=1] on target if entity @s[tag=self] at @s anchored eyes positioned ^ ^ ^ summon small_fireball run function rr_crusade:game/mini_fireball
execute as @e[type=interaction,tag=wandbox,predicate=custom:matches_uuid,limit=1] run data remove entity @s interaction
tag @s remove self