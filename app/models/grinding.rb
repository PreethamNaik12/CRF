class Grinding < ApplicationRecord
  has_many_attached :references
  belongs_to :user
  serialize :grit
  serialize :diamond
  serialize :suspension
  has_one :equipment_table, :dependent => :destroy
  accepts_nested_attributes_for :equipment_table
end
