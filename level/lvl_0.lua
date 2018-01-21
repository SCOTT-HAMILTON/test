--SANDBOX
local lvl = {}

lvl.set = {
  {1, 3, 3, 1, 1, 2, 3, 4},
  {2, 3, 3, 1, 1, 2, 3, 4},
  {3, 3, 4, 1, 1, 2, 3, 4},
  {4, 2, 1, 1, 1, 2, 3, 4},
  {4, 2, 2, 1, 1, 2, 3, 4},
  {4, 2, 2, 1, 1, 2, 3, 4},
  {4, 2, 2, 1, 1, 2, 3, 4},
  {4, 2, 2, 1, 1, 2, 3, 4}
}

lvl.objects = {
  {0, 0, 0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0},
  {0, 0, 6, 11, 0, 0, 0, 0},
  {0, 0, 9, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0},
  {0, 0, 0, 7, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0}
}

lvl.pStart = {line = 5, column = 5}

lvl.move = {gold = 10, silver = 15, wood = 25 }

lvl.gate = {}
lvl.gate.line = 2
lvl.gate.column = 3

lvl.gate.pos = {x = 0, y = 0}

lvl.gate.images = {}
lvl.gate.images.open = love.graphics.newImage("images/gate_0.png")
lvl.gate.images.close = love.graphics.newImage("images/gate_1.png")
lvl.gate.image = lvl.gate.images.close

lvl.nb_buttons = 0

for n, o in pairs(lvl.objects) do
  for n2, o2 in pairs(o) do
    if (o2 >= 8 and o2 <= 11) then
      lvl.nb_buttons = lvl.nb_buttons+1
    end
  end
end

lvl.nb_buttons_succed = 0

return lvl