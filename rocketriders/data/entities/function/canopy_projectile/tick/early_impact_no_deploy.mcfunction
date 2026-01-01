kill @s

function custom:game_rules/freeze_damage/on
execute unless predicate game:modifiers/no_fall_damage/on on origin run damage @s 5 minecraft:ender_pearl
function custom:game_rules/freeze_damage/off
