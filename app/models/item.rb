# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ActiveRecord::Base
  attr_accessible :name

  has_many :Listitems
  has_many :lists, through: :Listitems
end
