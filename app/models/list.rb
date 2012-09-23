# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class List < ActiveRecord::Base
  attr_accessible :name

  has_many :Listitems
  has_many :items, through: :Listitems

  has_and_belongs_to_many :users

  validates :name, presence: true
end
