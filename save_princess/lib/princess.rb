class Princess

  attr_reader :grid, :p_location, :m_location

  def initialize(size, grid)
    @grid = grid
    @p_location = []
    @m_location = []
  end

  def princess_and_mario_location
    grid.each_with_index do |row, index|
      if row.include?("p")
        p_location.push(index, row.chars.index("p"))
      elsif row.include?("m")
        m_location.push(index, row.chars.index("m"))
      end
    end
  end
end
