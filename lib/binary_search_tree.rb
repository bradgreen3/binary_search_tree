require_relative 'node.rb'
require 'pry'

class BinarySearchTree
  attr_reader :head

  def initialize
    @head
  end

  def insert(score, movie)

    if @head == nil
      @head = Node.new(score, movie)
      0
    else
      new_node = Node.new(score,movie)
      @head.push(new_node)
    end
  end
end

tree = BinarySearchTree.new
tree.insert(61, "Bill & Ted's Excellent Adventure")
tree.insert(16, "Johnny English")
tree.insert(92, "Sharknado 3")
tree.insert(50, "Hannibal Buress: Animal Furnace")
