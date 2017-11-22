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

require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = Post.create(category: 'decoration', description: 'lorem ipsum',
                        min_order_qty: 10, price: 30.45)
  end
  describe 'Creation' do
    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created with category and price' do
      @post.category = nil
      @post.description = nil
      @post.price = nil
      expect(@post).to_not be_valid
    end
  end
end
