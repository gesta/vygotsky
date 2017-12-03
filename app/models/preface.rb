class Preface < ApplicationRecord
  has_many :sections
  belongs_to :lesson

  accepts_nested_attributes_for :sections
end
