# feet
execute if block ~-0.2 ~ ~-0.2 #custom:fire run return 1
execute if block ~-0.2 ~ ~0.2 #custom:fire run return 1
execute if block ~0.2 ~ ~-0.2 #custom:fire run return 1
execute if block ~0.2 ~ ~0.2 #custom:fire run return 1

# crawling/swimming/flying
execute positioned ~ ~0.401 ~ store success score $player_is_horizontal var unless entity @s[dx=0]
execute if score $player_is_horizontal var matches 1 if block ~-0.2 ~0.4 ~-0.2 #custom:fire run return 1
execute if score $player_is_horizontal var matches 1 if block ~-0.2 ~0.4 ~0.2 #custom:fire run return 1
execute if score $player_is_horizontal var matches 1 if block ~0.2 ~0.4 ~-0.2 #custom:fire run return 1
execute if score $player_is_horizontal var matches 1 if block ~0.2 ~0.4 ~0.2 #custom:fire run return 1
execute if score $player_is_horizontal var matches 1 run return fail

# body or sneaking
execute if block ~-0.2 ~1 ~-0.2 #custom:fire run return 1
execute if block ~-0.2 ~1 ~0.2 #custom:fire run return 1
execute if block ~0.2 ~1 ~-0.2 #custom:fire run return 1
execute if block ~0.2 ~1 ~0.2 #custom:fire run return 1

# standing
execute unless predicate custom:player/is_sneaking if block ~-0.2 ~1.2 ~-0.2 #custom:fire run return 1
execute unless predicate custom:player/is_sneaking if block ~-0.2 ~1.2 ~0.2 #custom:fire run return 1
execute unless predicate custom:player/is_sneaking if block ~0.2 ~1.2 ~-0.2 #custom:fire run return 1
execute unless predicate custom:player/is_sneaking if block ~0.2 ~1.2 ~0.2 #custom:fire run return 1

return fail
