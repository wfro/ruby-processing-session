def setup
  size 480, 480
  background 0

  smooth

  ellipse_mode CENTER
  rect_mode CENTER

  @r, @g, @b = 255, 0, 0
  @w, @h = 100, 100
  @x = 240
  @y = 240
end

def draw
  background 0
  fill @r, @g, @b
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
  when 38
    while @y < 400
      @y -= 10
    end
  when 40 then @y += 10
  when 37 then @x -= 10
  when 39 then @x += 10
  end

  case key
  when 'r'
    @x = 240; @y = 240
  when '='
      @w += 10; @h += 10
  when '-'
    @h -= 10; @w -= 10
  end
end

def mouse_pressed
  warn "The mouse was pressed at #{mouse_x}, #{mouse_y}."
  @x = mouse_x
  @y = mouse_y
end

def mouse_dragged
  warn "Dragging mouse. (#{mouse_x}, #{mouse_y})"
  @x = mouse_x
  @y = mouse_y
  @r = 0
  @b = 255
end

def mouse_released
  warn "The mouse was released at #{mouse_x}, #{mouse_y}."
  @r = 255
  @b = 0
end
