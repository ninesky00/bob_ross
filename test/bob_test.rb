require 'minitest/autorun'
require 'minitest/pride'
require './lib/bob'
require './lib/paint'
require 'mocha/minitest'

class BobTest < Minitest::Test
  def test_it_exists
    bob = Bob.new
    assert_instance_of Bob, bob
  end

  def test_it_starts_with_no_paints
    bob = Bob.new
    assert_equal [], bob.paints
  end

  def test_it_can_have_paint
    #skip
    bob = Bob.new
    paint_1 = mock("paint")
    paint_2 = mock

    bob.add_paint(paint_1)
    bob.add_paint(paint_2)

    assert_equal [paint_1, paint_2], bob.paints
  end

  def test_it_can_return_colors
    #skip
    bob = Bob.new
    paint_1 = mock
    paint_1.stubs(:color).returns("Alizarin Crimson")
    paint_2 = mock
    paint_2.stubs(:color).returns("Van Dyke Brown")
    bob.add_paint(paint_1)
    bob.add_paint(paint_2)

    assert_equal ["Alizarin Crimson", "Van Dyke Brown"], bob.paint_colors
  end

  def test_it_can_total_paint_amount
    #skip
    bob = Bob.new
    paint_1 = mock("Paint")
    paint_2 = mock("Paint")

    bob.add_paint(paint_1)
    bob.add_paint(paint_2)
    paint_1.expects(:amount).returns(42)
    require 'pry';binding.pry
    paint_2.expects(:amount).returns(25)
    assert_equal 67, bob.total_paint_amount
  end

end
