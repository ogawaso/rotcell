class Rotcell
  def initialize(input_data)
    @input_data = input_data
  end

  def calc
    rot_cells = initialize_rotcells

    moved = []
    @input_data.chars.each do |char|
      rotate_position_info = calc_rotate_position(rot_cells, char)
      pos = [
        [0, 1],
        [1, 1],
        [1, 0],
        [1, -1],
        [0, -1],
        [-1, -1],
        [-1, 0],
        [-1, 1]
      ].map { |i,j| [i + rotate_position_info.i, j + rotate_position_info.j] }.
        select {|z| z.map{|x| x >= 0 && x < 5 }.reduce(true) { |sum, var| sum &=var } }
       #find_all { |x, y| x >=0 && x < 5 && y >=0 &&  y < 5}

      moved = pos.dup

      if rotate_position_info.upper?
        tmp = moved.pop
        moved.unshift(tmp)
      else
        tmp = moved.shift
        moved.push(tmp)
      end

      pos.map { |x,y| rot_cells[x][y] }
        .zip(moved)
        .map { |c, m| rot_cells[m[0]][m[1]] = c }

    end

    moved.map{|i,j| rot_cells[i][j] }.sort * ""
  end

  class RotatePositionInfo
    attr_accessor :i
    attr_accessor :j
    attr_accessor :upper

    def initialize
      @i = 0
      @j = 0
      @upper = false
    end

    def upper!
      @upper = true
    end

    def upper?
      @upper
    end
  end

  private

  def initialize_rotcells
    Array.new(5) do |i|
      Array.new(5) do |j|
        ("a".ord + i*5 + j).chr
      end
    end
  end

  def calc_rotate_position(rot_cells, char)
    rotate_position = RotatePositionInfo.new

    rot_cells.each_with_index do |r,i|
      r.each_with_index do |c, j|
        if c == char.downcase
          rotate_position.i = i
          rotate_position.j = j
          rotate_position.upper! unless c == char
        end
      end
    end

    rotate_position
  end
end
