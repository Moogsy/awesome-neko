return {
    init = function(user_settings)
        require("src.handlers.default_layouts").init(user_settings.layouts)
        require("src.handlers.wallpapers").init()
        require("src.handlers.desktop_decoration").init()
    end
}
