execute unless entity @s[type=player] run return fail
execute unless predicate game:phase/match/play run return fail

tag @s add spell_emitter.origin
function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:type/health_spell/init"}}
tag @s remove spell_emitter.origin
