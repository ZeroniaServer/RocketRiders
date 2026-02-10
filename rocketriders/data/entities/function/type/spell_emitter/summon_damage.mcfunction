execute unless entity @s[type=player] run return run function custom:summon_persistent_marker_aec {modifiers:{nbt:{Tags:["spell_emitter","spell_type.damage"]},run:"function entities:type/spell_emitter/init/summon"}}

tag @s add spell_emitter.origin
function custom:summon_persistent_marker_aec {modifiers:{nbt:{Tags:["spell_emitter","spell_type.damage"]},run:"function entities:type/spell_emitter/init/summon"}}
tag @s remove spell_emitter.origin
