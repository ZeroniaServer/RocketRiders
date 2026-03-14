# Default to dialog
execute if score @s crusade.respawn_as_kit matches 1 run return run dialog show @s {type:"minecraft:multi_action",title:"Respawn As Crusade Kit",exit_action:{label:{translate:"gui.cancel"}},columns:1,body:[{type:"minecraft:plain_message",contents:"Hover each option to see that kit's items.",width:400}],actions:[\
  {action:{type:"minecraft:run_command",command:"trigger crusade.respawn_as_kit set 1001"},label:{bold:true,color:"dark_green",text:"Knight"},tooltip:["",{color:"dark_aqua",text:"Main Weapon: "},{color:"aqua",text:"Sword & Shield"},[{color:"dark_purple",text:"\nUtilities:\n- "},{color:"light_purple",text:"Shield"},"\n- ",{color:"light_purple",text:"Obsidian Shield"},"\n- ",{color:"light_purple",text:"ICBM"}],[{color:"dark_green",text:"\nNormal Missiles:\n- "},{color:"green",text:"Blade"},"\n- ",{color:"green",text:"Gemini"}],[{color:"dark_red",text:"\nHeavy Missiles:\n- "},{color:"red",text:"Auxiliary"},"\n- ",{color:"red",text:"Warhead"},"\n- ",{color:"red",text:"Juggerbuster"}]]},\
  {action:{type:"minecraft:run_command",command:"trigger crusade.respawn_as_kit set 1002"},label:{bold:true,color:"red",text:"Archer"},tooltip:["",{color:"dark_aqua",text:"Main Weapon: "},{color:"aqua",text:"Shooting Saber"},[{color:"dark_purple",text:"\nUtilities:\n- "},{color:"light_purple",text:"Arrows"},"\n- ",{color:"light_purple",text:"Canopy"},"\n- ",{color:"light_purple",text:"Splash"}],[{color:"dark_green",text:"\nNormal Missiles:\n- "},{color:"green",text:"Citadel"},"\n- ",{color:"green",text:"Slasher"}],[{color:"gold",text:"\nLightning Missiles:\n- "},{color:"yellow",text:"Thunderbolt"},"\n- ",{color:"yellow",text:"Hurricane"}],[{color:"dark_purple",text:"\nSpecial Missiles:\n- "},{color:"dark_purple",text:"Broadsword"}]]},\
  {action:{type:"minecraft:run_command",command:"trigger crusade.respawn_as_kit set 1003"},label:{bold:true,color:"dark_purple",text:"Mage"},tooltip:["",{color:"dark_aqua",text:"Main Weapon: "},{color:"aqua",text:"Spell Wand"},[{color:"dark_purple",text:"\nUtilities:\n- "},{color:"light_purple",text:"Spell Book"},"\n- ",{color:"light_purple",text:"Nova Rocket"},"\n- ",{color:"light_purple",text:"Vortex"}],[{color:"dark_green",text:"\nNormal Missiles:\n- "},{color:"green",text:"A.N.T."},"\n- ",{color:"green",text:"TomaTwo"},"\n- ",{color:"green",text:"Catapult"},"\n- ",{color:"green",text:"Lifter"},"\n- ",{color:"green",text:"Chronullifier"}]]},\
]}

# Knight
execute if score @s crusade.respawn_as_kit matches 1001 run return run function everytick:trigger_commands/crusade.respawn_as_kit/knight

# Archer
execute if score @s crusade.respawn_as_kit matches 1002 run return run function everytick:trigger_commands/crusade.respawn_as_kit/archer

# Mage
execute if score @s crusade.respawn_as_kit matches 1003 run return run function everytick:trigger_commands/crusade.respawn_as_kit/mage

# Fallback
tellraw @s {color:"red",text:"That is not a valid input"}
