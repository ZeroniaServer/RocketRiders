execute unless entity @e[type=marker,tag=GlassSetMarker] run summon minecraft:marker 12 53 0 {Tags:["CrusadeEntity","GlassSetMarker"]}
scoreboard players set @e[type=marker,tag=GlassSetMarker] CmdData 20
function rr_crusade:game/glassovertime