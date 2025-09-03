tag @s remove explosion.this

# Log kill credit
execute if data storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin run function custom:_explosion_/log_creeper_origin with entity @s {}

return 1
