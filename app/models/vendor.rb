class Vendor < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many :deals, dependent: :destroy
	has_many :items, :through => :deals
	validates :name, uniqueness: true
end