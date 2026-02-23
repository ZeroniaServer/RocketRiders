execute unless predicate game:gamemode_components/red_for_blue run title @s[predicate=custom:team/blue] title {"text":"You lowered a flag!","color":"blue"}
execute if predicate game:gamemode_components/red_for_blue run title @s[predicate=custom:team/blue] title {"text":"You lowered a flag!","color":"dark_red"}
execute unless predicate game:gamemode_components/red_for_blue run title @s[predicate=custom:team/blue] subtitle {"text":"Break the glass again to steal it!","color":"dark_aqua"}
execute if predicate game:gamemode_components/red_for_blue run title @s[predicate=custom:team/blue] subtitle {"text":"Break the glass again to steal it!","color":"red"}
title @s[predicate=custom:team/yellow] title {"text":"You lowered a flag!","color":"gold"}
title @s[predicate=custom:team/yellow] subtitle {"text":"Break the glass again to steal it!","color":"yellow"}