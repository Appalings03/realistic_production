local subgroup_production = {
    type = "item-group",
    name = "production",
    order = settings.startup["RM-stp-order"].value,
    icon = "",
    icon_size = 256, icon_mipmaps = 4,
}

local subgroup_mineral = {
    type = "item-group",
    name = "minerals",
    order = settings.startup["RM-stp-order"].value,
    icon = "",
    icon_size = 256, icon_mipmaps = 4,
}

local subgroup_raw_resource = {
    type = "item-group",
    name = "raw_ressources",
    order = settings.startup["RM-stp-order"].value,
    icon = "__base__/graphics/technology/circuit-network.png",
    icon_size = 256, icon_mipmaps = 4,
}

local subgroup_intermediate = {
    type = "item-group",
    name = "intermediate_products",
    order = settings.startup["RM-stp-order"].value,
    icon = "__base__/graphics/technology/circuit-network.png",
    icon_size = 256, icon_mipmaps = 4,
}

local subgroup_crafting = {
    type = "item-group",
    name = "crafting",
    order = settings.startup["RM-stp-order"].value,
    icon = "__base__/graphics/technology/circuit-network.png",
    icon_size = 256, icon_mipmaps = 4,
}

data:extend({
    subgroup_production,
    subgroup_mineral,
    subgroup_raw_resource,
    subgroup_intermediate,
    subgroup_crafting,
})