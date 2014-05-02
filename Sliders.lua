Sliders = {
    version = 0.01,
    throttled = {},
}

function Sliders.throttle(key, frequency)
    current_ms = GetFrameTimeMilliseconds() / 1000.0
    last_render_ms = Sliders.throttled[key] or 0

    if current_ms > (last_render_ms + frequency) then
        Sliders.throttled[key] = current_ms
        return false
    end

    return true
end
