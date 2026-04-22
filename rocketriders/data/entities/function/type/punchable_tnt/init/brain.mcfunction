## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=interaction,tag=punchable_tnt.this.neck]

## Set up data
data modify entity @s data.punchable_tnt set value {brain:{}}

data merge entity @s {Invulnerable:true,width:1.02,height:-1.02}

scoreboard players operation @s entity.age = $base_age var
