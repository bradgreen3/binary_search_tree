require '../lib/node.rb'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  def test_node_responds_to_data_method
    node = Node.new(61, "Bill & Ted's Excellent Adventure")
    assert_equal Node , node.class
    assert_respond_to node , :data
  end

  def test_node_holds_data
    node = Node.new(61, "Bill & Ted's Excellent Adventure")
    assert_equal [61, "Bill & Ted's Excellent Adventure"] , node.data
  end

  def test_has_no_left_branch_by_default
    node = Node.new(61, "Bill & Ted's Excellent Adventure")
    assert_equal false , node.left
  end

  def test_has_no_right_branch_by_default
    node = Node.new(61, "Bill & Ted's Excellent Adventure")
    assert_equal false, node.right
  end

  def test_if_left_branch_takes_new_node
    node_1 = Node.new(61, "Bill & Ted's Excellent Adventure")
    node_2 = Node.new(45, "Hello")
    node_1.change_left(node_2)
    assert_equal node_2 , node_1.left
  end

  def test_if_right_branch_takes_new_node
    node = Node.new(61, "Bill & Ted's Excellent Adventure")
    node.change_right("Hello, World")
    assert_equal "Hello, World", node.right
  end

end
