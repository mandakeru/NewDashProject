# == Schema Information
#
# Table name: payments
#
#  id          :integer          not null, primary key
#  title       :string
#  value       :decimal(, )
#  description :text
#  code        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_payments_on_code  (code) UNIQUE
#

class Payment < ActiveRecord::Base
end
