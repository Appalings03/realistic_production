
require("__realistic_production__/prototypes/globals")
--Data Card item
--
local basic_card_item = {
    type = "item",
    name = "b",
    icon = "__modname__/graphics/icons/basic-card.png",
    icon_size = 32,
    subgroup = "raw-resources",
    order = "c[basic-card]",
    place_result = "basic-card",
    stack_size = 50
}

--Data Card Recipe

local basic_card_recipe = {
    type = "recipe",
    name = "basic-card",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {"steel-plate", },
        {"stone-brick", },
        {"advanced-circuit", }
    },
    result = "basic-card"
}

-- Data Card Technology

local basic_card_tech = {
    type = "technology",
    name = "basic-card",
    icon = "__modname__/graphics/technology/basic-card.png",
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
            recipe = "basic-card"
        }
    },
    order = "c-c-a"
}

data:extend({
    basic_card_item,
    basic_card_recipe,
    basic_card_tech,
})