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
              "condition": "minecraft:location_check",
              "predicate": {
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
              "condition": "minecraft:location_check",
              "predicate": {
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
            }
          ]
        }
      ]
    },
    {
      "condition": "minecraft:all_of",
      "terms": [
        {
          "condition": "minecraft:reference",
          "name": "game:portal_type/crusade"
        },
        {
          "condition": "minecraft:any_of",
          "terms": [
            {
              "condition": "minecraft:all_of",
              "terms": [
                {
                  "condition": "minecraft:reference",
                  "name": "rr_crusade:blue_portal_revealed"
                },
                {
                  "condition": "minecraft:location_check",
                  "predicate": {
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
                }
              ]
            },
            {
              "condition": "minecraft:all_of",
              "terms": [
                {
                  "condition": "minecraft:reference",
                  "name": "rr_crusade:yellow_portal_revealed"
                },
                {
                  "condition": "minecraft:location_check",
                  "predicate": {
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
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

from copy import deepcopy

def get_predicate(negative_corner: tuple[float,float,float], positive_corner: tuple[float,float,float]) -> dict:
  result = deepcopy(base_predicate)
  result["terms"][0]["terms"][1]["terms"][0]["predicate"]["position"]["x"]["min"] += negative_corner[0]
  result["terms"][0]["terms"][1]["terms"][0]["predicate"]["position"]["x"]["max"] += positive_corner[0]
  result["terms"][0]["terms"][1]["terms"][0]["predicate"]["position"]["y"]["min"] += negative_corner[1]
  result["terms"][0]["terms"][1]["terms"][0]["predicate"]["position"]["y"]["max"] += positive_corner[1]
  result["terms"][0]["terms"][1]["terms"][0]["predicate"]["position"]["z"]["min"] += negative_corner[2]
  result["terms"][0]["terms"][1]["terms"][0]["predicate"]["position"]["z"]["max"] += positive_corner[2]

  result["terms"][0]["terms"][1]["terms"][1]["predicate"]["position"]["x"]["min"] += negative_corner[0]
  result["terms"][0]["terms"][1]["terms"][1]["predicate"]["position"]["x"]["max"] += positive_corner[0]
  result["terms"][0]["terms"][1]["terms"][1]["predicate"]["position"]["y"]["min"] += negative_corner[1]
  result["terms"][0]["terms"][1]["terms"][1]["predicate"]["position"]["y"]["max"] += positive_corner[1]
  result["terms"][0]["terms"][1]["terms"][1]["predicate"]["position"]["z"]["min"] += negative_corner[2]
  result["terms"][0]["terms"][1]["terms"][1]["predicate"]["position"]["z"]["max"] += positive_corner[2]

  result["terms"][1]["terms"][1]["terms"][0]["terms"][1]["predicate"]["position"]["x"]["min"] += negative_corner[0]
  result["terms"][1]["terms"][1]["terms"][0]["terms"][1]["predicate"]["position"]["x"]["max"] += positive_corner[0]
  result["terms"][1]["terms"][1]["terms"][0]["terms"][1]["predicate"]["position"]["y"]["min"] += negative_corner[1]
  result["terms"][1]["terms"][1]["terms"][0]["terms"][1]["predicate"]["position"]["y"]["max"] += positive_corner[1]
  result["terms"][1]["terms"][1]["terms"][0]["terms"][1]["predicate"]["position"]["z"]["min"] += negative_corner[2]
  result["terms"][1]["terms"][1]["terms"][0]["terms"][1]["predicate"]["position"]["z"]["max"] += positive_corner[2]

  result["terms"][1]["terms"][1]["terms"][1]["terms"][1]["predicate"]["position"]["x"]["min"] += negative_corner[0]
  result["terms"][1]["terms"][1]["terms"][1]["terms"][1]["predicate"]["position"]["x"]["max"] += positive_corner[0]
  result["terms"][1]["terms"][1]["terms"][1]["terms"][1]["predicate"]["position"]["y"]["min"] += negative_corner[1]
  result["terms"][1]["terms"][1]["terms"][1]["terms"][1]["predicate"]["position"]["y"]["max"] += positive_corner[1]
  result["terms"][1]["terms"][1]["terms"][1]["terms"][1]["predicate"]["position"]["z"]["min"] += negative_corner[2]
  result["terms"][1]["terms"][1]["terms"][1]["terms"][1]["predicate"]["position"]["z"]["max"] += positive_corner[2]
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
for i in range(1, 13 + 1):
  generate(f"radius_{i}",(-i,-i,-i),(i,i,i))
