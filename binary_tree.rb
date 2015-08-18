class BinaryTree

  def self.on(grid)
    grid.each_cell do |cell|
      neighbours = []
      neighbours << cell.north if cell.north # need this if because a cell at the northeast corner of the map has no valid neighbours
      neighbours << cell.east  if cell.east

      neighbour = neighbours.sample # choose random neighbour from the neighbours array
      cell.link(neighbour) if neighbour
    end
  end

end