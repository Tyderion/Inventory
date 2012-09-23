# == Schema Information
#
# Table name: listitems
#
#  id         :integer          not null, primary key
#  amount     :integer
#  list_id    :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ListitemTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Listitem.new.valid?
  end
end
