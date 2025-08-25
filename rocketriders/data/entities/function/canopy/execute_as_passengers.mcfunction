# arguments: run

execute unless predicate entities:type/canopy run return fail
$execute at @s[tag=!canopy.small] positioned ~ ~2.25 ~ as @a[distance=..6,predicate=custom:alive,predicate=custom:on_blue_or_yellow_team,gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{y:{max:1.25},horizontal:{max:4.5}}}} positioned as @s run $(run)
$execute at @s[tag=canopy.small] positioned ~ ~2.25 ~ as @a[distance=..6,predicate=custom:alive,predicate=custom:on_blue_or_yellow_team,gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{y:{max:1.25},horizontal:{max:3}}}} positioned as @s run $(run)
