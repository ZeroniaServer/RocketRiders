## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=tnt,tag=punchable_tnt.this.body]

## Set up data
data modify entity @s data.punchable_tnt set value {neck:{}}

data merge entity @s {Invulnerable:true,width:0,height:0.03}

## Summon brain
tag @s add punchable_tnt.this.neck
execute at @s positioned ~ ~1 ~ summon interaction positioned ~ ~-1 ~ run function entities:type/punchable_tnt/init/brain
tag @s remove punchable_tnt.this.neck
