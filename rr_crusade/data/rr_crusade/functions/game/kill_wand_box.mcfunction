scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute unless entity @a[team=!Lobby,team=!Spectator,scores={crusadekit=3},predicate=custom:matches_uuid,predicate=rr_crusade:holdwand] run kill