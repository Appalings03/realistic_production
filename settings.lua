local order = {
    type = "string-setting",
    name = "RM-stp-order",
    order = "cgp-c-b",
    setting_type = "startup",
    default_value = "aw",
    allowed_values = {"aw", "dw"},
}

local bool = {

}


data:extend({
    order,
    bool,
})