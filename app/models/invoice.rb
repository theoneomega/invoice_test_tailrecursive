class Invoice < ApplicationRecord
	has_many :items
	validates :uuid, uniqueness: true

	accepts_nested_attributes_for :items, :allow_destroy => true, :reject_if => :all_blank
end
