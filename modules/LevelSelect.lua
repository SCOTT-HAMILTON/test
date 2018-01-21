_levelSelect = {}

local _bg = {
    width = 500,
    height = 350,
    x = 0,
    y = 0
}

local _level = {
    width       = 60,
    height      = 80,
    x           = 0,
    y           = 0,
    color       = {55,0,256,255},
    borderColor = {55,0,20,255} 
}


local levelNb = 10


local dir = "/level"
_levelSelect.lvlFiles = love.filesystem.getDirectoryItems(dir)

function  _levelSelect:load()
    _bg.x = love.graphics.getWidth()/2 - _bg.width/2
    _bg.y = love.graphics.getHeight()/2 - _bg.height/2
end

function _levelSelect:draw()
    -- creation du background color
    love.graphics.setColor(255,255,255,255)
    love.graphics.rectangle("fill", _bg.x , _bg.y , _bg.width , _bg.height ,0,0,0)
    
    -- level square
    j = 1
    for i = 1, 100 do
        --for j = 1, 3 do
         
            if i % 6  == 0  then
             j = j + 1
             i = - 10
            end

            love.graphics.setColor(_level.color)
            love.graphics.rectangle("fill", _bg.x + (100 * i) - 80, _bg.y + (100 * j) - 80 , _level.width,_level.height, 10,10,30) 
            love.graphics.setColor(0,0,0,0) -- reset bg color
        --end
    end

    --debug
    love.graphics.print("level number : "..#_levelSelect.lvlFiles,10,10)
end

return _levelSelect