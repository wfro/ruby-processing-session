def setup
  size 480, 480
  background 0

  smooth

  ellipse_mode CENTER
  rect_mode CENTER

  @x = 0
  @y = 240
  @w = 100
  @h = 100
end

def draw
  background 0
  fill 255, 0, 0
  stroke 255
  stroke_width 5

  ellipse @x, @y, @w, @h
end

def key_pressed
  if key == CODED
    warn "A key was pressed coded with #{keyCode}."
  else
    warn "Key pressed: #{key.inspect}"
  end

  case keyCode
  when 38 then @y -= 10
  when 40 then @y += 10
  when 37 then @x -= 10
  when 39 then @x += 10
  end

  case key
  when 'r'
    @x = 240
    @y = 240
  when '='
    @w += 10
    @h += 10
  when '-'
    @h -= 10
    @w -= 10
  end
end
