# Kill snowball
execute on vehicle run kill @s[type=snowball]

# Convert to a shield entity
data remove entity @s data.shield_projectile
function entities:shield/init
