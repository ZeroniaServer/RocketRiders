scoreboard objectives remove text.flag_color
scoreboard objectives remove FallDistance
scoreboard objectives remove flag.is_nova_attached
scoreboard objectives remove flag.is_dead

function game:forcestop
schedule function game:match_components/reset 5t
