class Deal < ActiveRecord::Base
	belongs_to :vendor
	belongs_to :item
end