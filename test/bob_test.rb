require 'minitest/autorun'
require 'minitest/pride'
require './lib/bob'
require './lib/paint'

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
    bob = Bob.new
    paint_1 = Paint.new("Alizarin Crimson")
    paint_2 = Paint.new("Van Dyke Brown")

    bob.add_paint(paint_1)
    bob.add_paint(paint_2)

    assert_equal [paint_1, paint_2], bob.paints
  end

  def test_it_can_return_colors
    bob = Bob.new
    paint_1 = Paint.new("Alizarin Crimson")
    paint_2 = Paint.new("Van Dyke Brown")
    bob.add_paint(paint_1)
    bob.add_paint(paint_2)

    assert_equal ["Alizarin Crimson", "Van Dyke Brown"], bob.paint_colors
  end

  def test_it_can_total_paint_amount
    bob = Bob.new
    paint_1 = Paint.new("Alizarin Crimson", 42)
    paint_2 = Paint.new("Van Dyke Brown", 25)

    bob.add_paint(paint_1)
    bob.add_paint(paint_2)

    assert_equal 67, bob.total_paint_amount
  end

end
