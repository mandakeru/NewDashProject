# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  cpf        :string
#  rg         :string
#  birthdate  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_people_on_cpf  (cpf) UNIQUE
#  index_people_on_rg   (rg) UNIQUE
#

class Person < ActiveRecord::Base 
  has_one :customer
  has_one :address, as: :addressable
  has_one :phone, as: :phoneable

  
  accepts_nested_attributes_for :address, allow_destroy: true, reject_if: :all_blank
  
  accepts_nested_attributes_for :phone, allow_destroy: true, reject_if: :all_blank
  
  
end
