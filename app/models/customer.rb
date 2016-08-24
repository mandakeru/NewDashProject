# == Schema Information
#
# Table name: customers
#
#  id            :integer          not null, primary key
#  customer_code :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  customer_type :integer
#  person_id     :integer
#
# Indexes
#
#  index_customers_on_customer_code  (customer_code) UNIQUE
#  index_customers_on_person_id      (person_id)
#
# Foreign Keys
#
#  fk_rails_0719641196  (person_id => people.id)
#

class Customer < ActiveRecord::Base
  has_one :person
  has_one :address, as: :addressable
  has_one :phone, as: :phoneable
  
  validates :person_id, presence: true
  
  accepts_nested_attributes_for :phone, allow_destroy: true, reject_if: :all_blank
  
  accepts_nested_attributes_for :address, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :person, allow_destroy: true, reject_if: :all_blank
  
  
  
    
end
