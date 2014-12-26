class Vendor < ActiveRecord::Base
	has_many :deals, dependent: :destroy
	has_many :items, :through => :deals
	validates :name, uniqueness: true
end