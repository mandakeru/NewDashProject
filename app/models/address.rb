# == Schema Information
#
# Table name: addresses
#
#  id               :integer          not null, primary key
#  street           :string
#  number           :integer
#  neighborhood     :string
#  state            :integer
#  nation           :integer
#  addressable_id   :integer
#  addressable_type :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_addresses_on_addressable_type_and_addressable_id  (addressable_type,addressable_id)
#

class Address < ActiveRecord::Base
    belongs_to :addressable, polymorphic: true
end
