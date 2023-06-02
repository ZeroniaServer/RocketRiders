scoreboard players operation $tempUUID playerUUID = @s playerUUID
execute unless entity @a[team=!Lobby,team=!Spectator,scores={crusadekit=3},predicate=custom:matches_uuid] run kill