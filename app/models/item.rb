class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :genre

  with_options presence: true do
    validates :image
    validates :name
    validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :genre_id, numericality: { other_than: 1, message: "can't be blank" }
  end

  belongs_to :user
  has_one_attached :image
end
