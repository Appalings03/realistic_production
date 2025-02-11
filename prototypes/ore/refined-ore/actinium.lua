-- actinium.lua created automatically
require("__realistic_production__/prototypes/globals")

local actinium_ore_item = {
    type = "item",
    name = "actinium-ore",
    icon = globals.graphics.path.."actinium_ore.png",
    icon_size = 32,
    subgroup = "raw-ressource",
    order ="c[actinium-ore]",
    place_results = "actinium-ore",
    stack_size = 50
}

local actinium_ore_recipe = {
    type = "recipe",
    name = "actinium-ore",
    enabled = false,
    category = "crafting",
    energy_required = 10,
    ingredients = {
        {"", 5},
        {"", 5},
    },
    result = "actinium-ore",
}

local actinium_ore_tech ={
    type = "technology",
    name = "actinium-ore-seperator",
    icon = globals.graphics.path.."actinium_ore.png",
    icon_size = 128,
    prerequisites = {""},
    unit = {
        count = 150,
        ingredients = {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1}
        },
        time = 30
    },
    effects = {
        {
            type = "unlock-recipe",
            recipe = "actinium-ore",
        },
        order = "c-c-a"
    }
}

data:extend({
    actinium_ore_item,
    actinium_ore_recipe,
    actinium_ore_tech,
})    