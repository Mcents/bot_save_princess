class Princess

  attr_reader :grid, :m_location

  def initialize(size, m_row, m_col, grid)
    @grid = grid
    @m_location = [m_row, m_col]
  end

end
