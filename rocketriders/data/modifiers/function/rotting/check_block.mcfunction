# Separate limits for near bases versus for in the middle of the arena ("primary rot zone"). This makes the main rotting area act normally even if there's lots of rotting spread outside of that zone.
execute if predicate custom:in_primary_rot_zone store result score $this_rot_zone_count var if entity @e[x=0,type=#entities:rot_brain_entity_type,predicate=custom:in_primary_rot_zone,predicate=entities:type/rot/brain]
execute if predicate custom:in_primary_rot_zone if score $this_rot_zone_count var matches 100.. run return fail
execute unless predicate custom:in_primary_rot_zone store result score $this_rot_zone_count var if entity @e[x=0,type=#entities:rot_brain_entity_type,predicate=!custom:in_primary_rot_zone,predicate=entities:type/rot/brain]
execute unless predicate custom:in_primary_rot_zone if score $this_rot_zone_count var matches 50.. run return fail

# If the block isn't already rotting and the cap is not full, start a rot at this block
execute if block ~ ~ ~ #modifiers:can_rot align xyz unless entity @e[limit=1,dx=0,type=#entities:rot_brain_entity_type,predicate=entities:type/rot/brain] positioned ~0.5 ~0.5 ~0.5 summon marker run function entities:type/rot/init
