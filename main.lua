local debugCounter = false -- disable by default

function love.load()
    
end

function love.update(dt)
    
end

function love.keypressed(key, scancode, isrepeat)
    if key == "p" and debugCounter == false then
        debugCounter = true
    elseif key == "p" and debugCounter == true then
        debugCounter = false
    end
end

function love.draw()
    addbox(0, 0)
    if debugCounter == true then
        love.graphics.print("FPS:"..tostring(love.timer.getFPS()), 0, 0)
        love.graphics.print("Memory(As KB):"..tostring(collectgarbage("count")), 0, 10)
    end
end

function addbox(thisx, thisy)
    box = {}
    box.x = thisx
    box.y = thisy
    box.sprite = love.graphics.newImage("assets/box.png")
    love.graphics.draw(box.sprite, box.x, box.y, nil, 3, 3)
end