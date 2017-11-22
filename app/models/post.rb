# == Schema Information
#
# Table name: posts
#
#  id            :integer          not null, primary key
#  category      :string
#  description   :text
#  min_order_qty :integer
#  price         :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Post < ApplicationRecord
  validates :category, :description, :price, presence: true
end
