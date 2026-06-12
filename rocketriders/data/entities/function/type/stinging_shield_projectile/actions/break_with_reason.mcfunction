execute on origin run tag @s add break_with_reason.thrower
$title @a[limit=1,tag=break_with_reason.thrower] actionbar {color:"red",text:"$(message)"}
execute as @a[limit=1,tag=break_with_reason.thrower] run function custom:player/delay_actionbar
execute on origin run tag @s remove break_with_reason.thrower

function entities:type/stinging_shield_projectile/actions/break

return 1
