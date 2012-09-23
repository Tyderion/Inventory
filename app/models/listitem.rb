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

class Listitem < ActiveRecord::Base
  attr_accessible :amount, :list_id, :item_id

  belongs_to :list
  belongs_to :item

  validates :list_id, presence: true
  validates :item_id, presence: true
end
