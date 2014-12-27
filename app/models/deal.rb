class Deal < ActiveRecord::Base
	belongs_to :vendor
	belongs_to :item
	validates :price, presence: true
	validates :vendor_id, presence: true
	validates :item_id, presence: true
end