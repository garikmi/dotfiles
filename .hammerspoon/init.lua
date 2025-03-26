--hs.hotkey.bind({"ctrl", "shift"}, "Q", function()
--    hs.execute("open -a 'Chromium'", true)
--end)

--hs.hotkey.bind({"ctrl", "shift", "cmd"}, "A", function()
--    hs.execute("open -a 'Terminal'", true)
--end)

--hs.hotkey.bind({"cmd"}, "v", function()
--  hs.eventtap.keyStroke({"cmd", "alt", "shift"}, "v")
--  hs.alert.show("PASTING")
--end)

hs.window.animationDuration=0

hs.hotkey.bind({"cmd", "ctrl"}, "C", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.x = scrn_f.x + (scrn_f.w / 2) - (win_f.w / 2)
    win_f.y = scrn_f.y + (scrn_f.h / 2) - (win_f.h / 2)

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "shift", "ctrl"}, "C", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w - scrn_f.w / 6
    win_f.h = scrn_f.h - scrn_f.h / 4

    win_f.x = scrn_f.x + (scrn_f.w / 2) - (win_f.w / 2)
    win_f.y = scrn_f.y + (scrn_f.h / 2) - (win_f.h / 2)

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "Left", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w / 2
    win_f.h = scrn_f.h

    win_f.x = scrn_f.x
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "shift", "ctrl"}, "Left", function()
    local wins = hs.window.orderedWindows()

    if #wins >= 2 then
        local mWin = wins[1]
        local mF = mWin:frame()
        local scrn = mWin:screen()
        local scrnF = scrn:frame()

        for i = 2, #wins do
            local sWin = wins[i]
            local sF = sWin:frame()

            if sF.x >= scrnF.x and sF.x <= scrnF.x + scrnF.w and
                sF.y >= scrnF.y and sF.y <= scrnF.y + scrnF.h
            then
                mF.w = scrnF.w / 2
                mF.h = scrnF.h
                mF.x = scrnF.x
                mF.y = scrnF.y
                mWin:setFrame(mF)

                sF.w = scrnF.w / 2
                sF.h = scrnF.h
                sF.x = scrnF.x + sF.w
                sF.y = scrnF.y
                sWin:setFrame(sF)

                break
            else
                -- No secondary window on the same screen was found . . .
            end
        end
    end
end)

hs.hotkey.bind({"cmd", "ctrl"}, "Right", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w / 2
    win_f.h = scrn_f.h

    win_f.x = scrn_f.x + win_f.w
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "shift", "ctrl"}, "Right", function()
    local wins = hs.window.orderedWindows()

    if #wins >= 2 then
        local mWin = wins[1]
        local mF = mWin:frame()
        local scrn = mWin:screen()
        local scrnF = scrn:frame()

        for i = 2, #wins do
            local sWin = wins[i]
            local sF = sWin:frame()

            if sF.x >= scrnF.x and sF.x <= scrnF.x + scrnF.w and
                sF.y >= scrnF.y and sF.y <= scrnF.y + scrnF.h
            then
                mF.w = scrnF.w / 2
                mF.h = scrnF.h
                mF.x = scrnF.x + sF.w
                mF.y = scrnF.y
                mWin:setFrame(mF)

                sF.w = scrnF.w / 2
                sF.h = scrnF.h
                sF.x = scrnF.x
                sF.y = scrnF.y
                sWin:setFrame(sF)

                break
            else
                -- No secondary window on the same screen was found . . .
            end
        end
    end
end)

hs.hotkey.bind({"cmd", "ctrl"}, "Up", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w
    win_f.h = scrn_f.h / 2

    win_f.x = scrn_f.x
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "shift", "ctrl"}, "Up", function()
    local wins = hs.window.orderedWindows()

    if #wins >= 2 then
        local mWin = wins[1]
        local mF = mWin:frame()
        local scrn = mWin:screen()
        local scrnF = scrn:frame()

        for i = 2, #wins do
            local sWin = wins[i]
            local sF = sWin:frame()

            if sF.x >= scrnF.x and sF.x <= scrnF.x + scrnF.w and
                sF.y >= scrnF.y and sF.y <= scrnF.y + scrnF.h
            then
                mF.w = scrnF.w
                mF.h = scrnF.h / 2
                mF.x = scrnF.x
                mF.y = scrnF.y
                mWin:setFrame(mF)

                sF.w = scrnF.w
                sF.h = scrnF.h / 2
                sF.x = scrnF.x
                sF.y = scrnF.y + sF.h
                sWin:setFrame(sF)

                break
            else
                -- No secondary window on the same screen was found . . .
            end
        end
    end
end)

hs.hotkey.bind({"cmd", "ctrl"}, "Down", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w
    win_f.h = scrn_f.h / 2

    win_f.x = scrn_f.x
    win_f.y = scrn_f.y + win_f.h

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "shift", "ctrl"}, "Down", function()
    local wins = hs.window.orderedWindows()

    if #wins >= 2 then
        local mWin = wins[1]
        local mF = mWin:frame()
        local scrn = mWin:screen()
        local scrnF = scrn:frame()

        for i = 2, #wins do
            local sWin = wins[i]
            local sF = sWin:frame()

            if sF.x >= scrnF.x and sF.x <= scrnF.x + scrnF.w and
                sF.y >= scrnF.y and sF.y <= scrnF.y + scrnF.h
            then
                mF.w = scrnF.w
                mF.h = scrnF.h / 2
                mF.x = scrnF.x
                mF.y = scrnF.y + mF.h
                mWin:setFrame(mF)

                sF.w = scrnF.w
                sF.h = scrnF.h / 2
                sF.x = scrnF.x
                sF.y = scrnF.y
                sWin:setFrame(sF)

                break
            else
                -- No secondary window on the same screen was found . . .
            end
        end
    end
end)

hs.hotkey.bind({"cmd", "ctrl"}, "U", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w / 2
    win_f.h = scrn_f.h / 2

    win_f.x = scrn_f.x
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "J", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w / 2
    win_f.h = scrn_f.h / 2

    win_f.x = scrn_f.x
    win_f.y = scrn_f.y + win_f.h

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "I", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w / 2
    win_f.h = scrn_f.h / 2

    win_f.x = scrn_f.x + win_f.w
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "K", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w / 2
    win_f.h = scrn_f.h / 2

    win_f.x = scrn_f.x + win_f.w
    win_f.y = scrn_f.y + win_f.h

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "1", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w / 3
    win_f.h = scrn_f.h

    win_f.x = scrn_f.x
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "2", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w / 3
    win_f.h = scrn_f.h

    win_f.x = scrn_f.x + win_f.w
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "3", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w / 3
    win_f.h = scrn_f.h

    win_f.x = scrn_f.x + win_f.w * 2
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "E", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = (scrn_f.w / 3) * 2
    win_f.h = scrn_f.h

    win_f.x = scrn_f.x
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "R", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = (scrn_f.w / 3) * 2
    win_f.h = scrn_f.h

    win_f.x = scrn_f.x + (scrn_f.w / 3)
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "Return", function()
    local win = hs.window.focusedWindow()
    local win_f = win:frame()
    local scrn_f = win:screen():frame()

    win_f.w = scrn_f.w
    win_f.h = scrn_f.h

    win_f.x = scrn_f.x
    win_f.y = scrn_f.y

    win:setFrame(win_f)
end)
