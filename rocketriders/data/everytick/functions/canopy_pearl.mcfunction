##Kills pearl if owner player dies
##Needs to happen for fake deaths like portals and give-back system
scoreboard players operation $tempuuid playerUUID = @s pearlOwnerUUID
execute if entity @a[predicate=custom:matches_uuid,scores={deathCooldown=1..}] run kill @s
scoreboard players reset $tempuuid playerUUID