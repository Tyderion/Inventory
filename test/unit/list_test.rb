# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ListTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert List.new.valid?
  end
end
