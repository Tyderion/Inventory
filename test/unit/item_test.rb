# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Item.new.valid?
  end
end
