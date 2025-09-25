data modify storage rocketriders:main options.dialog set value {\
	"type": "minecraft:notice",\
	"title": "Rocket Riders",\
	"inputs": [\
		{\
			"type": "minecraft:single_option",\
			"key": "tips",\
			"label": "Show Tips",\
			"options": [\
				{\
					"id": "0",\
					"display": {\
						"translate": "options.off"\
					}\
				},\
				{\
					"id": "1",\
					"display": {\
						"translate": "options.on"\
					}\
				}\
			]\
		},\
		{\
			"type": "minecraft:single_option",\
			"key": "parkour_tips",\
			"label": "Show Parkour Tips",\
			"options": [\
				{\
					"id": "0",\
					"display": {\
						"translate": "options.off"\
					}\
				},\
				{\
					"id": "1",\
					"display": {\
						"translate": "options.on"\
					}\
				}\
			]\
		},\
		{\
			"type": "minecraft:single_option",\
			"key": "particles",\
			"label": "Particles",\
			"options": [\
				{\
					"id": "0",\
					"display": {\
						"translate": "options.off"\
					}\
				},\
				{\
					"id": "1",\
					"display": {\
						"translate": "options.on"\
					}\
				}\
			]\
		},\
		{\
			"type": "minecraft:single_option",\
			"key": "do_hotbar_auto_fill",\
			"label": "Auto-Fill Hotbar",\
			"options": [\
				{\
					"id": "0",\
					"display": {\
						"translate": "options.off"\
					}\
				},\
				{\
					"id": "1",\
					"display": {\
						"translate": "options.on"\
					}\
				}\
			]\
		}\
	],\
	"action": {\
		"label": "Done",\
		"action": {\
			"type": "minecraft:dynamic/run_command",\
            "template": "trigger options set 100000$(do_hotbar_auto_fill)$(particles)$(parkour_tips)$(tips)"\
		}\
	}\
}

execute if entity @s[tag=!hideTips] run data modify storage rocketriders:main options.dialog.inputs[0].options[1].initial set value true
execute if entity @s[tag=!hideParkourTips] run data modify storage rocketriders:main options.dialog.inputs[1].options[1].initial set value true
execute if entity @s[tag=!hideParticles] run data modify storage rocketriders:main options.dialog.inputs[2].options[1].initial set value true
execute if entity @s[tag=do_hotbar_auto_fill] run data modify storage rocketriders:main options.dialog.inputs[3].options[1].initial set value true

function custom:show_dialog with storage rocketriders:main options
