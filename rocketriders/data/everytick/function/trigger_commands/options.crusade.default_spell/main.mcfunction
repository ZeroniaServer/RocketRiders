# Default to dialog
execute if score @s options.crusade.default_spell matches 1 run return run dialog show @s {type:"minecraft:multi_action",title:"Default Spell Book",exit_action:{label:{translate:"gui.cancel"}},columns:1,body:[{type:"minecraft:plain_message",contents:"Hover each option to see what that spell does.",width:400}],actions:[\
  {action:{type:"minecraft:run_command",command:"trigger options.crusade.default_spell set 1001"},label:{bold:true,color:"gold",text:"Fire"},tooltip:"Shoots 3 small fireballs that burn enemies and ignite nearby TNT blocks on impact."},\
  {action:{type:"minecraft:run_command",command:"trigger options.crusade.default_spell set 1002"},label:{bold:true,color:"green",text:"Health"},tooltip:"Creates a large cloud around you that heals yourself and any player in your team. The cloud shrinks over time, lasting for 10 seconds."},\
  {action:{type:"minecraft:run_command",command:"trigger options.crusade.default_spell set 1003"},label:{bold:true,color:"dark_gray",text:"Damage"},tooltip:"Shoots a spell cloud that veers towards the nearest enemy and gives them the Wither effect. If it hits an enemy, it will ricochet towards another nearby enemy.\n\nUse this to apply 3-4 hearts of damage to enemies in hard to reach places."},\
  {action:{type:"minecraft:run_command",command:"trigger options.crusade.default_spell set 1004"},label:{bold:true,color:"aqua",text:"Wind"},tooltip:"Shoots 3 wind charges that blast away players (with prejudice against enemies) and primed TNT on impact, and deflect projectiles.\n\nUse this to boost yourself upwards, knock enemies into the void, deflect enemies' projectiles, and stop missiles from exploding by pushing away the TNT before it explodes."},\
]}

# Fire
execute if score @s options.crusade.default_spell matches 1001 run return run function everytick:trigger_commands/options.crusade.default_spell/fire

# Health
execute if score @s options.crusade.default_spell matches 1002 run return run function everytick:trigger_commands/options.crusade.default_spell/health

# Damage
execute if score @s options.crusade.default_spell matches 1003 run return run function everytick:trigger_commands/options.crusade.default_spell/damage

# Wind
execute if score @s options.crusade.default_spell matches 1004 run return run function everytick:trigger_commands/options.crusade.default_spell/wind

# Fallback
tellraw @s {color:"red",text:"That is not a valid input"}
