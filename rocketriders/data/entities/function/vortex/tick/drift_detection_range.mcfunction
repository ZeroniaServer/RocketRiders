# arguments: distance

$execute if predicate entities:origin_team/blue unless predicate game:phase/match/over on vehicle positioned as @s positioned ~ ~-1.6 ~ facing entity @p[distance=..$(distance),predicate=custom:team/yellow,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex/tick/drift

$execute if predicate entities:origin_team/yellow unless predicate game:phase/match/over on vehicle positioned as @s positioned ~ ~-1.6 ~ facing entity @p[distance=..$(distance),predicate=custom:team/blue,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex/tick/drift

execute on origin run tag @s add vortex.origin
$execute if predicate entities:origin_team/none unless predicate game:phase/match/over on vehicle positioned as @s positioned ~ ~-1.6 ~ facing entity @p[distance=..$(distance),tag=!vortex.origin,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex/tick/drift
execute on origin run tag @s remove vortex.origin
