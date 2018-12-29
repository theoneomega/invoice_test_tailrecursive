class Invoice < ApplicationRecord
	has_many :invoice_items
	has_many :items, through: :invoice_items
	validates :uuid, uniqueness: true

	accepts_nested_attributes_for :items
end
