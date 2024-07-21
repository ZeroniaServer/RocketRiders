data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}
item replace entity @s contents with lingering_potion[custom_data={splash:1b},potion_contents={potion:"minecraft:water",custom_color:3237342,custom_effects:[{duration:1,id:"minecraft:saturation",amplifier:0b,show_particles:0b}]}]
tag @s add splash
tag @s add self
execute on origin at @s anchored eyes run tp @e[x=0,type=potion,tag=self] @s
function everytick:projectile
tag @s add motioned
tag @s remove self