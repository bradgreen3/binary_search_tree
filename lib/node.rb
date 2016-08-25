class Node
  attr_reader :score, :movie, :left, :right

  def initialize(score, movie)
    @score = score
    @movie = movie
    @left = false
    @right = false
  end

  def push(new_node, counter = 1)
    change_left(new_node) if new_node.score < @score && @left == false
    change_right(new_node) if new_node.score > @score && @right == false
    pass_left(new_node, counter) if new_node.score < @score && @left
    pass_right(new_node, counter) if new_node.score > @score && @right
      counter
  end

  def change_left(node_to_insert)
    @left = node_to_insert
  end

  def change_right(node_to_insert)
    @right = node_to_insert
  end

  def pass_left(new_node, counter)
    @left.push(new_node, counter += 1)
  end

  def pass_right(new_node, counter)
    @right.push(new_node, counter += 1)
  end

end
