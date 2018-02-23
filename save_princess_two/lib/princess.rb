class Princess

  attr_reader :grid, :m_location, :p_location

  def initialize(size, m_row, m_col, grid)
    @grid = grid
    @m_location = [m_row, m_col]
    @p_location = []
    princess_location
  end

  def princess_location
    grid.each_with_index do |row, index|
      if row.include?("p")
        p_location.push(index, row.chars.index("p"))
      end
    end
  end
end
