scoreboard players reset @s event.player_uses_writable_book
execute unless predicate game:phase/match/play run return fail

scoreboard players set $using_spell_wand var 0
execute if items entity @s weapon.mainhand writable_book[custom_data~{id:"spell_wand"}] run scoreboard players set $using_spell_wand var 1
execute if score $using_spell_wand var matches 0 unless items entity @s weapon.mainhand writable_book if items entity @s weapon.offhand writable_book[custom_data~{id:"spell_wand"}] run scoreboard players set $using_spell_wand var 1
execute if score $using_spell_wand var matches 1 run return run execute if predicate custom:team/any_playing_team run function rr_crusade:game/usewand
