require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(name: "Example")
  end

  test "should be valid" do
    assert @category.valid?
  end
  
  test "name should not be too long" do
    @category.name = "A" * 401
    assert_not @category.valid?
  end
  
  test "name should be unique" do
    duplicate_category = @category.dup
    @category.save
    assert_not duplicate_category.valid?
  end
  
  test "name should be present" do 
    @category.name = " " * 6
    assert_not @category.valid?
  end
end
