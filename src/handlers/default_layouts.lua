local awful = require("awful")

return {
    init = function(user_layouts)
        tag.connect_signal(
            "request::default_layouts",
            function()
                awful.layout.append_default_layouts(user_layouts)
            end
        )
    end
}
