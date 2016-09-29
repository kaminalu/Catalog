require 'test_helper'

class ClassificationTest < ActiveSupport::TestCase
  test "Categories must have a category" do
    category = Category.new
    assert category.invalid?
  end
end
