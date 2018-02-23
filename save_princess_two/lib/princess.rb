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

  def moves_to_save_princess
    rows = m_location[0] - p_location[0]
    columns = m_location[1] - p_location[1]
    [rows, columns]
  end

  def create_first_step_to_princess(steps=[])
    rows, columns = moves_to_save_princess
    rows < 0 ? steps += ["DOWN\n"] * rows.abs :  steps += ["UP\n"] * rows.abs
    columns < 0 ? steps += ["RIGHT\n"] * columns.abs : steps += ["LEFT\n"] * columns.abs
    steps[0]
  end
end
