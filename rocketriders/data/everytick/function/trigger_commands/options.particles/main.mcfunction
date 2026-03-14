# Default to toggle
execute if score @s options.particles matches 1 run tellraw @s "Toggling particles..."
execute if score @s options.particles matches 1 if entity @s[tag=hideParticles] run scoreboard players set @s options.particles 1001
execute if score @s options.particles matches 1 unless entity @s[tag=hideParticles] run scoreboard players set @s options.particles 1002

# Enable tips
execute if score @s options.particles matches 1001 run return run function everytick:trigger_commands/options.particles/enable

# Disable tips
execute if score @s options.particles matches 1002 run return run function everytick:trigger_commands/options.particles/disable

# Fallback
tellraw @s {color:"red",text:"That is not a valid input"}
