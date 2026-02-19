base_predicate = {
  "condition": "minecraft:any_of",
  "terms": [
    {
      "condition": "minecraft:all_of",
      "terms": [
        {
          "condition": "minecraft:reference",
          "name": "game:portal_type/default"
        },
        {
          "condition": "minecraft:any_of",
          "terms": [
            {
              "condition": "minecraft:all_of",
              "terms": [
                {
                  "condition": "minecraft:reference",
                  "name": "game:blue_portal_revealed"
                },
                {
                  "condition": "minecraft:location_check",
                  "predicate": {
                    "dimension": "minecraft:overworld",
                    "position": {
                      "x": {
                        "min": -10,
                        "max": 35
                      },
                      "y": {
                        "min": 37,
                        "max": 59
                      },
                      "z": {
                        "min": -74,
                        "max": -73
                      }
                    }
                  }
                },
                {
                  "condition": "minecraft:inverted",
                  "term": {
                    "condition": "minecraft:location_check",
                    "_exclusive_": True,
                    "predicate": {
                      "position": {
                        "z": -73
                      }
                    }
                  }
                }
              ]
            },
            {
              "condition": "minecraft:all_of",
              "terms": [
                {
                  "condition": "minecraft:reference",
                  "name": "game:yellow_portal_revealed"
                },
                {
                  "condition": "minecraft:location_check",
                  "predicate": {
                    "dimension": "minecraft:overworld",
                    "position": {
                      "x": {
                        "min": -10,
                        "max": 35
                      },
                      "y": {
                        "min": 37,
                        "max": 59
                      },
                      "z": {
                        "min": 74,
                        "max": 75
                      }
                    }
                  }
                },
                {
                  "condition": "minecraft:inverted",
                  "term": {
                    "condition": "minecraft:location_check",
                    "_exclusive_": True,
                    "predicate": {
                      "position": {
                        "z": 75
                      }
                    }
                  }
                }
              ]
            }
          ]
        },
        {
          "condition": "minecraft:inverted",
          "term": {
            "condition": "minecraft:location_check",
            "_exclusive_": True,
            "predicate": {
              "position": {
                "x": 35
              }
            }
          }
        },
        {
          "condition": "minecraft:inverted",
          "term": {
            "condition": "minecraft:location_check",
            "_exclusive_": True,
            "predicate": {
              "position": {
                "y": 59
              }
            }
          }
        }
      ]
    },
    {
      "condition": "minecraft:all_of",
      "terms": [
        {
          "condition": "minecraft:reference",
          "name": "game:portal_type/small"
        },
        {
          "condition": "minecraft:any_of",
          "terms": [
            {
              "condition": "minecraft:all_of",
              "terms": [
                {
                  "condition": "minecraft:reference",
                  "name": "game:blue_portal_revealed"
                },
                {
                  "condition": "minecraft:location_check",
                  "predicate": {
                    "dimension": "minecraft:overworld",
                    "position": {
                      "x": {
                        "min": 4,
                        "max": 21
                      },
                      "y": {
                        "min": 45,
                        "max": 56
                      },
                      "z": {
                        "min": -67,
                        "max": -66
                      }
                    }
                  }
                },
                {
                  "condition": "minecraft:inverted",
                  "term": {
                    "condition": "minecraft:location_check",
                    "_exclusive_": True,
                    "predicate": {
                      "position": {
                        "z": -66
                      }
                    }
                  }
                }
              ]
            },
            {
              "condition": "minecraft:all_of",
              "terms": [
                {
                  "condition": "minecraft:reference",
                  "name": "game:yellow_portal_revealed"
                },
                {
                  "condition": "minecraft:location_check",
                  "predicate": {
                    "dimension": "minecraft:overworld",
                    "position": {
                      "x": {
                        "min": 4,
                        "max": 21
                      },
                      "y": {
                        "min": 45,
                        "max": 56
                      },
                      "z": {
                        "min": 67,
                        "max": 68
                      }
                    }
                  }
                },
                {
                  "condition": "minecraft:inverted",
                  "term": {
                    "condition": "minecraft:location_check",
                    "_exclusive_": True,
                    "predicate": {
                      "position": {
                        "z": 68
                      }
                    }
                  }
                }
              ]
            }
          ]
        },
        {
          "condition": "minecraft:inverted",
          "term": {
            "condition": "minecraft:location_check",
            "_exclusive_": True,
            "predicate": {
              "position": {
                "x": 21
              }
            }
          }
        },
        {
          "condition": "minecraft:inverted",
          "term": {
            "condition": "minecraft:location_check",
            "_exclusive_": True,
            "predicate": {
              "position": {
                "y": 56
              }
            }
          }
        }
      ]
    }
  ]
}

from copy import deepcopy
from typing import Any

def get_predicate(negative_corner: tuple[float,float,float], positive_corner: tuple[float,float,float]) -> dict:
  def modify_value(value: Any) -> Any:
    if isinstance(value,dict):
      if "term" in value:
        modify_value(value["term"])
      if "terms" in value:
        modify_value(value["terms"])
      if "condition" in value and value["condition"] == "minecraft:location_check":
        if "_exclusive_" in value:
          if "x" in value["predicate"]["position"]: value["predicate"]["position"]["x"] -= negative_corner[0]
          if "y" in value["predicate"]["position"]: value["predicate"]["position"]["y"] -= negative_corner[1]
          if "z" in value["predicate"]["position"]: value["predicate"]["position"]["z"] -= negative_corner[2]
          del value["_exclusive_"]
        else:
          value["predicate"]["position"]["x"]["min"] -= positive_corner[0]
          value["predicate"]["position"]["x"]["max"] -= negative_corner[0]
          value["predicate"]["position"]["y"]["min"] -= positive_corner[1]
          value["predicate"]["position"]["y"]["max"] -= negative_corner[1]
          value["predicate"]["position"]["z"]["min"] -= positive_corner[2]
          value["predicate"]["position"]["z"]["max"] -= negative_corner[2]
    if isinstance(value,list):
      for term in value:
        modify_value(term)
    
  result = deepcopy(base_predicate)
  modify_value(result)
  return result

from json import dumps

def generate(name: str, negative_corner: tuple[float,float,float], positive_corner: tuple[float,float,float]) -> None:

  with open(f"{name}.json","w") as file:
    file.write(
      dumps(
        get_predicate(
          negative_corner,
          positive_corner
        ), 
        indent = "  "
      )
      + "\n"
    )

# point
generate("point",(0,0,0),(0,0,0))
# radii
for i in range(1, 18 + 1):
  generate(f"radius_{i}",(-i,-i,-i),(i,i,i))
# entity hitboxes
generate(f"player_normal",(-0.3,0,-0.3),(0.3,0,0.3))
generate(f"player_small",(-0.2,0,-0.2),(0.2,0,0.2))
generate(f"canopy_projectile",(-3,0,-3),(3,1,3))
generate(f"shield_projectile",(-3,-3,0),(3,3,0))
generate(f"stinging_shield_projectile",(-2,-4,0),(2,0,0))

print("Done")
