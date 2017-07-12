class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :delete_all
  validates :name, uniqueness: true, presence:true
  validates :address, uniqueness: true, presence:true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates_associated :reviews, :allow_destroy => true
end
