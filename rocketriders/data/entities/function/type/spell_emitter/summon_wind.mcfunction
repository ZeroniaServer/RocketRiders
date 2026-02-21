execute unless entity @s[type=player] run return fail
execute unless predicate game:phase/match/play run return fail

tag @s add spell_emitter.origin
function custom:summon_persistent_marker_aec {modifiers:{nbt:{Tags:["spell_emitter","spell_type.wind"]},run:"function entities:type/spell_emitter/init/summon"}}
tag @s remove spell_emitter.origin
