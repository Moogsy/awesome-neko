local top_right_bar = require("starry.top_right_bar")
return {
    init = function(user_settings)
        screen.connect_signal(
            "request::desktop_decoration",
            function(screen)
                top_right_bar.init(screen, user_settings)
            end
        )
    end
}
