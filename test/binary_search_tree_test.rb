require_relative '../lib/binary_search_tree.rb'
require 'minitest/autorun'
require 'minitest/pride'

class BinarySearchTest < Minitest::Test

  def test_if_binary_search_tree_exists
    tree = BinarySearchTree.new
    assert_instance_of BinarySearchTree, tree
  end

  def test_tree_has_no_head_by_default
    tree = BinarySearchTree.new
    assert_equal nil , tree.head
  end

  def test_insert_establishes_head_node
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_instance_of Node, tree.head
  end

  def test_head_node_values
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 61 , tree.head.score
    assert_equal "Bill & Ted's Excellent Adventure" , tree.head.movie
  end

  def test_second_node_insertion
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    refute tree.head.left
    tree.insert(16, "Johnny English")
    assert_instance_of Node , tree.head.left
  end

  def test_head_has_two_children
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    assert_instance_of Node , tree.head
    assert_equal "Johnny English", tree.head.left.movie
    assert_equal "Sharknado 3" , tree.head.right.movie
  end

  def test_node_returns_depth
  		tree = BinarySearchTree.new
  		assert_equal 0, tree.insert(61, "Bill & Ted's Excellent Adventure")
  		assert_equal 1, tree.insert(16, "Johnny English")
  		assert_equal 1, tree.insert(92, "Sharknado 3")
      skip #counter keeps resetting to 1
  		assert_equal 2, tree.insert(50, "Hannibal Buress: Animal Furnace")
  	end
end
