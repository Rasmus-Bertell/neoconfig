-- See all available options at
-- https://github.com/bmewburn/intelephense-docs/blob/master/installation.md

local init_options = {
        licenceKey = "{{default.license.intelephense}}",
}

local telemetry = {
        enabled = {{default.telemetry.enable}},
}

local settings = {
        intelephense = {
                telemetry = telemetry,
        },
}

require("lspconfig").intelephense.setup({
        init_options = init_options,
        settings     = settings,
})
