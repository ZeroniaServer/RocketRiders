##Utility function for chaining Vortex explosions
scoreboard players set @s[tag=!origin,tag=chained] vortexBoom 10
tag @e[tag=Vortex,limit=4,sort=nearest,distance=1..4,scores={vortexBoom=0..},tag=!origin,tag=!chained,type=marker] add chained