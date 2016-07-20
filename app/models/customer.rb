# == Schema Information
#
# Table name: customers
#
#  id            :integer          not null, primary key
#  customer_code :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_customers_on_customer_code  (customer_code) UNIQUE
#

class Customer < ActiveRecord::Base
end
