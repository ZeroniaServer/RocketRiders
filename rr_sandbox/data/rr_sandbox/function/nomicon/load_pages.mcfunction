data remove storage rocketriders:nomicon dialogs

##
## Weapons/Tools
##
data modify storage rocketriders:nomicon dialogs.weapons_and_tools.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": [\
    {\
      "text": "Rocket",\
      "color": "blue",\
      "bold": true\
    },\
    {\
      "text": "-",\
      "color": "gray"\
    },\
    {\
      "text": "nomicon",\
      "color": "gold"\
    }\
  ],\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "underlined": true,\
        "shadow_color": 0,\
        "text": "                                                                "\
      },\
      "width": 400\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "bold": true,\
          "text": "\nWeapons/Tools\n"\
        },\
        {\
          "bold": false,\
          "underlined": true,\
          "shadow_color": 0,\
          "text": "\n                                                                "\
        }\
      ],\
      "width": 400\
    }\
  ],\
  "pause": false,\
  "after_action": "none",\
  "yes": {\
    "label": "Back",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1"\
    }\
  },\
  "no": {\
    "label": "Done",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1000001"\
    }\
  }\
}
function rr_sandbox:nomicon/load_pages/append_item_give_one {dialog_name: "weapons_and_tools", trigger_input_id: 42, item_loot_table: "items:misc/shooting_saber", indefinite_article: "a", item_plain_name: "Shooting Saber", color: "white", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "weapons_and_tools", trigger_input_id: 21, item_loot_table: "items:misc/arrow", item_plain_name_singular: "Arrow", item_plain_name_plural: "Arrows", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_give_one {dialog_name: "weapons_and_tools", trigger_input_id: 43, item_loot_table: "items:misc/piercing_pickaxe", indefinite_article: "a", item_plain_name: "Piercing Pickaxe", color: "white", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_give_one {dialog_name: "weapons_and_tools", trigger_input_id: 44, item_loot_table: "items:misc/knight_sword", indefinite_article: "a", item_plain_name: "Knight Sword", color: "white", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "weapons_and_tools", trigger_input_id: 45, item_loot_table: "items:misc/knight_shield", item_plain_name_singular: "Knight Shield", item_plain_name_plural: "Knight Shields", color: "white", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_give_one {dialog_name: "weapons_and_tools", trigger_input_id: 46, item_loot_table: "items:misc/spell_wand", indefinite_article: "a", item_plain_name: "Spell Wand", color: "white", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "weapons_and_tools", trigger_input_id: 47, item_loot_table: "items:misc/spell_book/fire", item_plain_name_singular: "§6\ud83d\udd25§r Spell Book", item_plain_name_plural: "§6\ud83d\udd25§r Spell Books", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "weapons_and_tools", trigger_input_id: 63, item_loot_table: "items:misc/spell_book/health", item_plain_name_singular: "§a\u2764§r Spell Book", item_plain_name_plural: "§a\u2764§r Spell Books", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "weapons_and_tools", trigger_input_id: 64, item_loot_table: "items:misc/spell_book/damage", item_plain_name_singular: "§7\u2620§r Spell Book", item_plain_name_plural: "§7\u2620§r Spell Books", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "weapons_and_tools", trigger_input_id: 65, item_loot_table: "items:misc/spell_book/wind", item_plain_name_singular: "§b\ud83c\udf00§r Spell Book", item_plain_name_plural: "§b\ud83c\udf00§r Spell Books", color: "light_purple", include_in_full_list: true}

##
## Missiles
##
data modify storage rocketriders:nomicon dialogs.missiles.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": [\
    {\
      "text": "Rocket",\
      "color": "blue",\
      "bold": true\
    },\
    {\
      "text": "-",\
      "color": "gray"\
    },\
    {\
      "text": "nomicon",\
      "color": "gold"\
    }\
  ],\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "underlined": true,\
        "shadow_color": 0,\
        "text": "                                                                "\
      },\
      "width": 400\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "bold": true,\
          "text": "\nMissiles\n"\
        },\
        {\
          "bold": false,\
          "underlined": true,\
          "shadow_color": 0,\
          "text": "\n                                                                "\
        }\
      ],\
      "width": 400\
    }\
  ],\
  "pause": false,\
  "after_action": "none",\
  "yes": {\
    "label": "Back",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1"\
    }\
  },\
  "no": {\
    "label": "Done",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1000001"\
    }\
  }\
}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 2, item_loot_table: "items:missile/normal/ant", item_plain_name_singular: "A.N.T.", item_plain_name_plural: "A.N.T.s", color: "green", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 3, item_loot_table: "items:missile/normal/blade", item_plain_name_singular: "Blade", item_plain_name_plural: "Blade", color: "green", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 4, item_loot_table: "items:missile/normal/catapult", item_plain_name_singular: "Catapult", item_plain_name_plural: "Catapults", color: "green", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 7, item_loot_table: "items:missile/normal/chronullifier", item_plain_name_singular: "Chronullifier", item_plain_name_plural: "Chronullifiers", color: "green", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 9, item_loot_table: "items:missile/normal/citadel", item_plain_name_singular: "Citadel", item_plain_name_plural: "Citadels", color: "green", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 8, item_loot_table: "items:missile/normal/elder_guardian", item_plain_name_singular: "Elder Guardian", item_plain_name_plural: "Elder Guardians", color: "green", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 10, item_loot_table: "items:missile/normal/gemini", item_plain_name_singular: "Gemini", item_plain_name_plural: "Geminis", color: "green", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 6, item_loot_table: "items:missile/normal/lifter", item_plain_name_singular: "Lifter", item_plain_name_plural: "Lifters", color: "green", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 5, item_loot_table: "items:missile/normal/slasher", item_plain_name_singular: "Slasher", item_plain_name_plural: "Slashers", color: "green", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 48, item_loot_table: "items:missile/normal/tomatwo", item_plain_name_singular: "TomaTwo", item_plain_name_plural: "TomaTwos", color: "green", include_in_full_list: true}

function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 12, item_loot_table: "items:missile/lightning/hurricane", item_plain_name_singular: "Hurricane", item_plain_name_plural: "Hurricanes", color: "yellow", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 11, item_loot_table: "items:missile/lightning/thunderbolt", item_plain_name_singular: "Thunderbolt", item_plain_name_plural: "Thunderbolts", color: "yellow", include_in_full_list: true}

function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 13, item_loot_table: "items:missile/heavy/auxiliary", item_plain_name_singular: "Auxiliary", item_plain_name_plural: "Auxiliaries", color: "dark_red", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 16, item_loot_table: "items:missile/heavy/juggerbuster", item_plain_name_singular: "Juggerbuster", item_plain_name_plural: "Juggerbusters", color: "dark_red", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 15, item_loot_table: "items:missile/heavy/rifter", item_plain_name_singular: "Rifter", item_plain_name_plural: "Rifters", color: "dark_red", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 14, item_loot_table: "items:missile/heavy/warhead", item_plain_name_singular: "Warhead", item_plain_name_plural: "Warheads", color: "dark_red", include_in_full_list: true}

function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 20, item_loot_table: "items:missile/special/broadsword", item_plain_name_singular: "Broadsword", item_plain_name_plural: "Broadswords", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 18, item_loot_table: "items:missile/special/bullet", item_plain_name_singular: "Bullet", item_plain_name_plural: "Bullets", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 19, item_loot_table: "items:missile/special/duplex", item_plain_name_singular: "Duplex", item_plain_name_plural: "Duplexes", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 17, item_loot_table: "items:missile/special/hypersonic", item_plain_name_singular: "Hypersonic", item_plain_name_plural: "Hypersonics", color: "dark_purple", include_in_full_list: true}

function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "missiles", trigger_input_id: 49, item_loot_table: "items:missile/surprise/all", item_plain_name_singular: "Surprise Egg", item_plain_name_plural: "Surprise Eggs", color: "white", include_in_full_list: true}

##
## Utilities
##
data modify storage rocketriders:nomicon dialogs.utilities.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": [\
    {\
      "text": "Rocket",\
      "color": "blue",\
      "bold": true\
    },\
    {\
      "text": "-",\
      "color": "gray"\
    },\
    {\
      "text": "nomicon",\
      "color": "gold"\
    }\
  ],\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "underlined": true,\
        "shadow_color": 0,\
        "text": "                                                                "\
      },\
      "width": 400\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "bold": true,\
          "text": "\nUtilities\n"\
        },\
        {\
          "bold": false,\
          "underlined": true,\
          "shadow_color": 0,\
          "text": "\n                                                                "\
        }\
      ],\
      "width": 400\
    }\
  ],\
  "pause": false,\
  "after_action": "none",\
  "yes": {\
    "label": "Back",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1"\
    }\
  },\
  "no": {\
    "label": "Done",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1000001"\
    }\
  }\
}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 21, item_loot_table: "items:misc/arrow", item_plain_name_singular: "Arrow", item_plain_name_plural: "Arrows", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 22, item_loot_table: "items:util/canopy", item_plain_name_singular: "Canopy", item_plain_name_plural: "Canopies", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 23, item_loot_table: "items:util/fireball", item_plain_name_singular: "Fireball", item_plain_name_plural: "Fireballs", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 24, item_loot_table: "items:util/cluster_fireball", item_plain_name_singular: "Cluster Fireball", item_plain_name_plural: "Cluster Fireballs", color: "light_purple", include_in_full_list: true}
execute unless predicate game:match_components/stackable_nova_rockets run function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "utilities", trigger_input_id: 25, item_loot_table: "items:util/nova_rocket", item_plain_name_singular: "Nova Rocket", item_plain_name_plural: "Nova Rockets", color: "light_purple", include_in_full_list: true}
execute if predicate game:match_components/stackable_nova_rockets run function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 25, item_loot_table: "items:util/nova_rocket", item_plain_name_singular: "Nova Rocket", item_plain_name_plural: "Nova Rockets", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 26, item_loot_table: "items:util/shield", item_plain_name_singular: "Shield", item_plain_name_plural: "Shields", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 27, item_loot_table: "items:util/obsidian_shield", item_plain_name_singular: "Obsidian Shield", item_plain_name_plural: "Obsidian Shields", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 28, item_loot_table: "items:util/splash", item_plain_name_singular: "Splash", item_plain_name_plural: "Splashes", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 29, item_loot_table: "items:util/vortex", item_plain_name_singular: "Vortex", item_plain_name_plural: "Vortices", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 30, item_loot_table: "items:util/icbm", item_plain_name_singular: "ICBM", item_plain_name_plural: "ICBMs", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 31, item_loot_table: "items:util/stinging_shield", item_plain_name_singular: "Stinging Shield", item_plain_name_plural: "Stinging Shields", color: "dark_purple", include_in_full_list: false}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "utilities", trigger_input_id: 32, item_loot_table: "items:util/lava_splash", item_plain_name_singular: "Lava Splash", item_plain_name_plural: "Lava Splashes", color: "dark_purple", include_in_full_list: false}

##
## Powerups
##
data modify storage rocketriders:nomicon dialogs.powerups.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": [\
    {\
      "text": "Rocket",\
      "color": "blue",\
      "bold": true\
    },\
    {\
      "text": "-",\
      "color": "gray"\
    },\
    {\
      "text": "nomicon",\
      "color": "gold"\
    }\
  ],\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "underlined": true,\
        "shadow_color": 0,\
        "text": "                                                                "\
      },\
      "width": 400\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "bold": true,\
          "text": "\nPowerups\n"\
        },\
        {\
          "bold": false,\
          "underlined": true,\
          "shadow_color": 0,\
          "text": "\n                                                                "\
        }\
      ],\
      "width": 400\
    }\
  ],\
  "pause": false,\
  "after_action": "none",\
  "yes": {\
    "label": "Back",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1"\
    }\
  },\
  "no": {\
    "label": "Done",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1000001"\
    }\
  }\
}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "powerups", trigger_input_id: 31, item_loot_table: "items:util/stinging_shield", item_plain_name_singular: "Stinging Shield", item_plain_name_plural: "Stinging Shields", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "powerups", trigger_input_id: 32, item_loot_table: "items:util/lava_splash", item_plain_name_singular: "Lava Splash", item_plain_name_plural: "Lava Splashes", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "powerups", trigger_input_id: 33, item_loot_table: "items:misc/slap_fish", item_plain_name_singular: "Slap Fish", item_plain_name_plural: "Slap Fish", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "powerups", trigger_input_id: 34, item_loot_table: "items:misc/totem_of_undying", item_plain_name_singular: "Totem of Undying", item_plain_name_plural: "Totems of Undying", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_elytra {dialog_name: "powerups", normal_trigger_input_id: 35, unbreakable_trigger_input_id: 60, deactivate_trigger_input_id: 62, color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "powerups", trigger_input_id: 36, item_loot_table: "items:misc/trident", item_plain_name_singular: "Trident", item_plain_name_plural: "Tridents", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_activate_times {dialog_name: "powerups", 30_seconds_trigger_input_id: 37, permanent_trigger_input_id: 55, deactivate_trigger_input_id: 56, item_loot_table: {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"items:misc/shooting_saber"}],functions:[{function:"minecraft:reference",name:"items:shooting_saber/set_infinity"}]}]}, item_plain_name: "Infinity Saber", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "powerups", trigger_input_id: 38, item_loot_table: "items:misc/tipped_arrow_blindness", item_plain_name_singular: "Blindness Arrow", item_plain_name_plural: "Blindness Arrows", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "powerups", trigger_input_id: 39, item_loot_table: "items:misc/tipped_arrow_levitation", item_plain_name_singular: "Levitation Arrow", item_plain_name_plural: "Levitation Arrows", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "powerups", trigger_input_id: 40, item_loot_table: "items:misc/tipped_arrow_slowness", item_plain_name_singular: "Slowness Arrow", item_plain_name_plural: "Slowness Arrows", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "powerups", trigger_input_id: 41, item_loot_table: "items:misc/tipped_arrow_wither", item_plain_name_singular: "Wither Arrow", item_plain_name_plural: "Wither Arrows", color: "dark_purple", include_in_full_list: true}

##
## Experimental/Unused
##
data modify storage rocketriders:nomicon dialogs.experimental.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": [\
    {\
      "text": "Rocket",\
      "color": "blue",\
      "bold": true\
    },\
    {\
      "text": "-",\
      "color": "gray"\
    },\
    {\
      "text": "nomicon",\
      "color": "gold"\
    }\
  ],\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "underlined": true,\
        "shadow_color": 0,\
        "text": "                                                                "\
      },\
      "width": 400\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "bold": true,\
          "text": "\nExperimental/Unused\n"\
        },\
        {\
          "bold": false,\
          "underlined": true,\
          "shadow_color": 0,\
          "text": "\n                                                                "\
        }\
      ],\
      "width": 400\
    }\
  ],\
  "pause": false,\
  "after_action": "none",\
  "yes": {\
    "label": "Back",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1"\
    }\
  },\
  "no": {\
    "label": "Done",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1000001"\
    }\
  }\
}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "experimental", trigger_input_id: 54, item_loot_table: "items:experimental/building_block", item_plain_name_singular: "Building Block", item_plain_name_plural: "Building Blocks", color: "white", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_activate_times {dialog_name: "experimental", 30_seconds_trigger_input_id: 53, permanent_trigger_input_id: 57, deactivate_trigger_input_id: 58, item_loot_table: {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"items:misc/shooting_saber"}],functions:[{function:"minecraft:reference",name:"items:shooting_saber/set_multishot"}]}]}, item_plain_name: "Multishot Saber", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "experimental", trigger_input_id: 50, item_loot_table: "items:experimental/invisibility_potion", item_plain_name_singular: "Invisibility Potion", item_plain_name_plural: "Invisibility Potions", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "experimental", trigger_input_id: 52, item_loot_table: "items:experimental/spectral_arrow", item_plain_name_singular: "Spectral Arrow", item_plain_name_plural: "Spectral Arrows", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "experimental", trigger_input_id: 51, item_loot_table: "items:experimental/jump_boost_potion", item_plain_name_singular: "Jump Boost Potion", item_plain_name_plural: "Jump Boost Potions", color: "dark_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item {dialog_name: "experimental", trigger_input_id: 59, item_loot_table: "items:experimental/booster_rocket", item_plain_name_singular: "Elytra Booster Rocket", item_plain_name_plural: "Elytra Booster Rockets", color: "light_purple", include_in_full_list: true}
function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "experimental", trigger_input_id: 61, item_loot_table: "items:experimental/lunging_spear", item_plain_name_singular: "Lunging Spear", item_plain_name_plural: "Lunging Spears", color: "white", include_in_full_list: true}

##
## All
##

data modify storage rocketriders:nomicon dialogs.all.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": [\
    {\
      "text": "Rocket",\
      "color": "blue",\
      "bold": true\
    },\
    {\
      "text": "-",\
      "color": "gray"\
    },\
    {\
      "text": "nomicon",\
      "color": "gold"\
    }\
  ],\
  "body": [],\
  "pause": false,\
  "after_action": "none",\
  "yes": {\
    "label": "Back",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1"\
    }\
  },\
  "no": {\
    "label": "Done",\
    "action": {\
      "type": "run_command",\
      "command": "trigger nomicon set 1000001"\
    }\
  }\
}
data modify storage rocketriders:nomicon dialogs.all.dialog.body append from storage rocketriders:nomicon dialogs.weapons_and_tools.dialog.body[]
data modify storage rocketriders:nomicon dialogs.all.dialog.body append from storage rocketriders:nomicon dialogs.missiles.dialog.body[]
data modify storage rocketriders:nomicon dialogs.all.dialog.body append from storage rocketriders:nomicon dialogs.utilities.dialog.body[]
data modify storage rocketriders:nomicon dialogs.all.dialog.body append from storage rocketriders:nomicon dialogs.powerups.dialog.body[]
data modify storage rocketriders:nomicon dialogs.all.dialog.body append from storage rocketriders:nomicon dialogs.experimental.dialog.body[]

data remove storage rocketriders:nomicon dialogs.all.dialog.body[{__include_in_full_list__:false}]

# Remove top separator from every section
data remove storage rocketriders:nomicon dialogs.all.dialog.body[0]
data remove storage rocketriders:nomicon dialogs.missiles.dialog.body[0]
data remove storage rocketriders:nomicon dialogs.utilities.dialog.body[0]
data remove storage rocketriders:nomicon dialogs.powerups.dialog.body[0]
data remove storage rocketriders:nomicon dialogs.weapons_and_tools.dialog.body[0]
data remove storage rocketriders:nomicon dialogs.experimental.dialog.body[0]
