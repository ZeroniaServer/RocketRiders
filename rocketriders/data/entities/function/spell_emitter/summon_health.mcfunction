execute unless entity @s[type=player] run return run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:health_spell/init"}}

tag @s add spell_emitter.origin
function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:health_spell/init"}}
tag @s remove spell_emitter.origin
