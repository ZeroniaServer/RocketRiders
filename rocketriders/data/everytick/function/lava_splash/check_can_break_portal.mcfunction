execute unless predicate game:game_rules/snipe_portals/on run return fail

execute if predicate custom:in_blue_half on origin if predicate custom:team/blue run return fail
execute if predicate custom:in_yellow_half on origin if predicate custom:team/yellow run return fail

tag @s add lava_splash.can_break_portal
