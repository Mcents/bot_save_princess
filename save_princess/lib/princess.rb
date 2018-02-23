class Princess

  attr_reader :grid, :p_location, :m_location

  def initialize(size, grid)
    @grid = grid
    @p_location = []
    @m_location = []
    princess_and_mario_location
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

  def moves_to_save_princess
    rows = m_location[0] - p_location[0]
    columns = m_location[1] - p_location[1]
    [rows, columns]
  end

  def create_steps_to_princess(steps=[])
    rows, columns = moves_to_save_princess
    rows < 0 ? steps += ["DOWN\n"] * rows.abs :  steps += ["UP\n"] * rows.abs
    columns < 0 ? steps += ["RIGHT\n"] * columns.abs : steps += ["LEFT\n"] * columns.abs
    steps
  end
end
