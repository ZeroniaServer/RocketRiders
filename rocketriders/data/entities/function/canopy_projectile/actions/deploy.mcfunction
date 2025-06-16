# Kill ender pearl
execute on vehicle run kill @s[type=ender_pearl]

# Convert to a canopy entity
data remove entity @s data.canopy_projectile
function entities:canopy/init
