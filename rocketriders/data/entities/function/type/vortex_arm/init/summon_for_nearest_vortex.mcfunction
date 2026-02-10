data merge entity @s {Item:{id:"paper",components:{item_model:"air"}},Invulnerable:true,NoGravity:true}

data modify entity @s Owner set from entity @n[predicate=entities:type/vortex/brain,predicate=!entities:vortex_has_max_arms] UUID

tp @s ~ ~ ~
function entities:type/vortex_arm/init
