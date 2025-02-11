-- arsenic.lua created automatically
local ex_item = {
    type = "item",
    name = "b",
    icon = "__modname__/graphics/icons/ex.png",
    icon_size = 32,
    subgroup = "raw-resources",
    order = "c[ex]",
    place_result = "ex",
    stack_size = 50
}

-- Blast Furnace Recipe Prototype
local ex_recipe = {
    type = "recipe",
    name = "ex",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {"steel-plate", },
        {"stone-brick", },
        {"advanced-circuit", }
    },
    result = "ex"
}

-- Blast Furnace Technology Prototype
local ex_tech = {
    type = "technology",
    name = "ex",
    icon = "__modname__/graphics/technology/ex.png",
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
            recipe = "ex"
        }
    },
    order = "c-c-a"
}
data:extend({
    ex_item,
    ex_recipe,
    ex_tech,
})