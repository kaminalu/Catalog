require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "items must have a name" do
    item = Item.new(description: "I have no name")
    assert item.invalid?, "item should not be valid without a name"
  end
end
